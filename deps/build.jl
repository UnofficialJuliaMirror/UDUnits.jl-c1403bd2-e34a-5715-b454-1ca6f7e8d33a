using BinDeps
using Conda


@BinDeps.setup
libudunits2 = library_dependency("libudunits2", aliases = ["udunits"])

#Conda.add_channel("conda-forge")
provides(Conda.Manager, "libudunits2", libudunits2)
provides(AptGet, "libudunits2-dev", libudunits2, os = :Linux)
provides(Yum, "udunits2-devel", libudunits2, os = :Linux)

@BinDeps.install Dict(:libudunits2 => :libudunits2)
