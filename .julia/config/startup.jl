
#        /\
#       /  \     ___   ___   __  __ _   _
#      / /\ \   / _ \ / __) /  \/ /| | | |
#     / /__\ \ | |_) )> _) ( ()  < | |_| |
#    /________\|  __/ \___) \__/\_\| ._,_|
#  ______      | |                 | |
#  \  ___)     |_|                 |_|
#   \ \   __   __  __  __ ___  ___  ___   ___
#    > >  \ \ / / /  \/ /(   )(   )/ __) / _ \
#   / /__  \ v / ( ()  <  | |  | | > _) | |_) )
#  /_____)  > <   \__/\_\  \_)  \_)\___)|  __/
#          / ^ \                        | |
#         /_/ \_\                       |_|
#
#   https://crucialflow.com
#   https://github.com/chakravala
#       _           _                         _
#      | |         | |                       | |
#   ___| |__   __ _| | ___ __ __ ___   ____ _| | __ _
#  / __| '_ \ / _` | |/ / '__/ _` \ \ / / _` | |/ _` |
# | (__| | | | (_| |   <| | | (_| |\ V / (_| | | (_| |
#  \___|_| |_|\__,_|_|\_\_|  \__,_| \_/ \__,_|_|\__,_|

ENV["JULIA_PKG_SERVER"] = "pkg.julialang.org"
ENV["JULIA_NUM_THREADS"] = 8
ENV["SIMILITUDE"] = 1
ENV["AUTHOR"] = "Michael Reed"
ENV["EDITOR"] = "vim"
ENV["PYTHON"] = "python"
ENV["REDPRE"] = "0"
ENV["VIEWER"] = "zathura"
ENV["UNITDOCS"] = "1"
#using Pkg
#using OhMyREPL
#using UnicodePlots #, ImageInTerminal
using BenchmarkTools, SyntaxTree #, VerTeX
#using Reduce #; @force using Reduce.Algebra
import Base: @pure

cdpkg(pkg) = cd(dirname(Base.find_package(string(pkg))))

macro cdpkg(pkg)
    cdpkg(pkg)
    return nothing
end
