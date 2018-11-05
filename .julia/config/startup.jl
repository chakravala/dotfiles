ENV["JULIA_NUM_THREADS"] = 8
ENV["AUTHOR"] = "Michael Reed"
ENV["EDITOR"] = "vim"
ENV["PYTHON"] = "python"
#ENV["REDPRE"] = "0"
#using Reduce
#@force using Reduce.Algebra
#using OhMyREPL
#using Pkg
#using Revise
using BenchmarkTools

cdpkg(pkg) = cd(dirname(Base.find_package(string(pkg))))

macro cdpkg(pkg)
    cdpkg(pkg)
    return nothing
end
