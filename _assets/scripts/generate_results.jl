using Base: basename

function genplain(s::String, more_title::String="")
    open(joinpath("output", "$(splitext(basename(s))[1])$more_title.out"), "w") do outf
        redirect_stdout(outf) do
            include(joinpath(s))
        end
    end
end
