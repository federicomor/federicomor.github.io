# Semplicemente apriamo il file e anziché calcolare espressamente le potenze $a^b$ calcoliamo $b\cdot \log(a)$ in modo da agevolare il confronto lavorando con numeri più piccoli.
file = download("https://projecteuler.net/resources/documents/0099_base_exp.txt")
max_line = 1
max_val = 1
curr_line = 0
for line in eachline(file)
    global curr_line += 1
    numbers = split(line, ",")
    a = parse(Int, numbers[1])
    b = parse(Int, numbers[2])  
    val = b*log(a)
    if val>max_val
        global max_val = val
        global max_line = curr_line
    end    
end
print("max line = $max_line with value $max_val")
