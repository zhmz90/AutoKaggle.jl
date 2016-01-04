
function read_data(fl_path)
    data = Array{Array{ASCIIString,1},1}()
    open(fl_path) do file
        header = readline(file)
        lines  = readlines(file)
        data = pmap(line->split(line,"\t"), lines)
        #=
        while !eof(file)
            line = readline(file)
            row  = split(line,"\t")
        end
        =#
    end

    
    data
end
