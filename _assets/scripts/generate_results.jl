using Base: basename

function genplain(s::String)
    open(joinpath("output", "$(splitext(basename(s))[1]).out"), "w") do outf
        redirect_stdout(outf) do
            include(joinpath(s))
        end
    end
end


