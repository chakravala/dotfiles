ENV["JULIA_NUM_THREADS"] = 8
ENV["AUTHOR"] = "Michael Reed"
ENV["EDITOR"] = "vim"
ENV["PYTHON"] = "python"
ENV["REDPRE"] = "0"
#using Pkg
#using OhMyREPL
#using UnicodePlots #, ImageInTerminal
using BenchmarkTools, SyntaxTree, VerTeX
#using Reduce
#@force using Reduce.Algebra
#using Grassmann

#=cdpkg(pkg) = cd(dirname(Base.find_package(string(pkg))))

macro cdpkg(pkg)
    cdpkg(pkg)
    return nothing
end=#
