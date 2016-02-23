###
###

.pkgname <- "BSgenome.Bdistachyon.JGI.Bd3.1"

.seqnames <- c(paste0("Bd", c(1:5)), paste0("scaffold_",c(12,14,135,180)), "Bd1_centromere_containing_Bradi1g41430", "EU325680.1")

.circ_seqs <- NULL

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Brachypodium distachyon Bd21",
        common_name="Purple false brome",
        provider="DOE-JGI Phytozome v11",
        provider_version="3.1",
        release_date="2016-01-12",
        release_name="Phytozome v11",
        source_url="https://phytozome.jgi.doe.gov/pz/portal.html#!info?alias=Org_Bdistachyon",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Bdistachyon"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

