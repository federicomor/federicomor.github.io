# ### Esplorazione del problema
# Come sempre, per approcciare un problema complicato, possiamo partire scalando il problema in piccolo e osservare cosa accade, per esempio, nei casi di $m=2$ e $m=3$.
# Giusto perché è carino, possiamo anche raccontare graficamente questa prima esplorazione.
using Plots 
using JSON
plotlyjs()
xs(m) = [(2i/(m+1)) for i in 1:m]; #hide
#-
# Nel caso di $m=2$ questo è quello che otterremo:
nout = 100
x1s = range(0,2,length=nout)
vals = zeros(nout)
for i in 1:nout
	x1 = x1s[i]
	x2 = 2-x1
	vals[i] = x1 * x2^2
end
plot(x1s,vals,label="")
max_idx = argmax(vals)
x1_max = x1s[max_idx]
vline!([x1_max],label="")
savefig(joinpath(@OUTPUT, "m2_plot.json")); # hide

#- 
# \fig{m2_plot.json}

println("Max value ($(maximum(vals))) reached at index $max_idx, ie for")
println("x1 = ", x1_max)
println("x2 = ", 2-x1_max)
#- 
# Vera soluzione:
xs(2) # hide
#-
# mentre questo per $m=3$:
nout = 200
x1s = range(0,3,length=nout)
x2s = range(0,3,length=nout)
vals = zeros(nout,nout)
for i in 1:nout
	x1 = x1s[i]
	for j in 1:nout
		x2 = x2s[j]
		if x1+x2 <= 3
			x3 = 3-x1-x2
			vals[i,j] = x1 * x2^2 * x3^3
		end
	end
end
max_idx = argmax(vals)
x1_max = x1s[max_idx[1]]
x2_max = x1s[max_idx[2]]
plot3d(x1s,x2s,vals',st=:surface, label="")
plot3d!(repeat([x1_max],2),repeat([x2_max],2),[0,maximum(vals)+0.5],label="")
savefig(joinpath(@OUTPUT, "m3_plot.json")); # hide
#- 
# \fig{m3_plot.json}

println("Max value ($(maximum(vals))) reached at $max_idx, ie for")
println("x1 = ", x1_max)
println("x2 = ", x2_max)
println("x3 = ", 3-x1_max-x2_max)
#- 
# Vera soluzione:
xs(3) # hide
#-

# Questo approccio, come detto, può servire per ambientarci nel problema, e sarebbe ad esempio utile se potessimo già da qui derivare o intuire un qualche pattern rilevante. Tuttavia non sembra molto il caso, dai numeri derivati qui sopra, quindi possiamo passare direttamente alla trattazione matematica e rigorosa del problema.

# ### Soluzione effettiva
# L'idea è che stiamo affrontando un problema di ottimizzazione per una funzione multivariata $f({\bf x}) : \R^n\to \R$, soggetta al vincolo $g({\bf x})=0$, dove anche $g({\bf x}): \R^n\to \R$: un contesto che sembra proprio chiamare in causa i moltiplicatori di Lagrange! Quando ci ho pensato non volevo crederci, e soprattutto non volevo rimestare nel torbido per recuperare i miei appunti di Analisi 2. Tuttavia, a malincuore, ho dovuto farlo, e in effetti con quelli si arriva tranquillamente (e anche molto velocemente) alla soluzione.

# I moltiplicatori di Lagrange permettono infatti di convertire un problema di ottimizzazione (inteso come ricerca di punti di massimo/minimo) di una funzione soggetta a un vincolo[^1] in un altro problema di ottimizzazione, stavolta _libero_, quindi non soggetto a vincoli, al costo però di aggiungere una variabile $\lambda$. Questa funzione sarebbe $$\mathcal{L}({\bf x},\lambda) = f({\bf x}) + \lambda g({\bf x})$$ 
# i cui punti di massimo/minimo sono molto facili da individuare: basta infatti porre la "derivata uguale a zero", che in questo contesto multivariato si traduce nel chiedere che il gradiente della funzione sia uguale a zero, ovvero $\nabla \mathcal{L}({\bf x},\lambda) = {\bf 0}$. Questa richiesta, vista la definizione di $\mathcal{L}$, equivale in realtà a $$\label{system}\begin{cases}\nabla f({\bf x}) = -\lambda g({\bf x}) \\ g({\bf x}) = 0\end{cases}$$

# [^1]: Questo metodo permette anche di gestire più vincoli ovviamente, e in tal caso si introdurrebbe una nuova variabile per vincolo, ma per non appesantire la spiegazione mi sono concentrato sul caso del problema dove c'è un vincolo solo.

# Nel nostro caso, il problema è ($\text{s.t.}$ sta per "subject to", cioè "soggetto al vincolo")$$ \max \, f({\bf x}) = \prod_{i=1}^m {x_i}^i \quad \text{s.t.}\quad g({\bf x}) = \sum_{i=1}^m x_i -m = 0$$
# Tuttavia, pensando di dover derivare $f$ per calcolare $\nabla f({\bf x})$, questa formulazione non sembra molto comoda, dato che derivando rispetto ad $x_i$ rimarrebbe comunque un termine che comprende tutte le altre variabili $x_j$. Un'idea è quindi di riformularlo applicando il logaritmo a $f$: dopotutto, massimizzare $f({\bf x})$ è equivalente a massimizzare $\ln f({\bf x})$, dato che il logaritmo è una funzione crescente. Riformulando quindi il problema come
# $$ \max \, h({\bf x}):= \ln f({\bf x}) = \sum_{i=1}^m i\cdot{x_i} \quad \text{s.t.}\quad g({\bf x}) = \sum_{i=1}^m x_i -m = 0$$
# e impostando il sistema \eqref{system} si ricava
# $$\begin{cases}x_i = -\frac{i}{\lambda} \\ \sum x_i = m \end{cases} \implies \lambda = -\frac{m+1}{2} \implies \boxed{x_i = \frac{2i}{m+1}} $$
# da cui segue in poche righe, o con un minimo di impegno anche una sola, la soluzione del problema:
Pm(m) = prod([(2i/(m+1))^i for i in 1:m]) # hide
Int(sum(floor(Pm(i)) for i in 2:15)) # hide
Int.(sum([floor(prod([(2i/(m+1))^i for i in 1:m])) for m in 2:15]))

# Questi sarebbero i valori di $x_i$ generati per ogni caso:
for i in 2:15
	println("$i => ", round.(xs(i),digits=2))
end