#### shamelessly ripped from hrbrthemes

.onAttach <- function(libname, pkgname) {
  pdfFonts <- grDevices::pdfFonts

  if (.Platform$OS.type == "windows")  {
    if (interactive()) packageStartupMessage("Registering Windows fonts with R")
    windowsFonts <- grDevices::windowsFonts

    extrafont::loadfonts("win", quiet = TRUE)
  }

  if (getOption("hrbrthemes.loadfonts", default = FALSE)) {
    if (interactive()) packageStartupMessage("Registering PDF & PostScript fonts with R")
    extrafont::loadfonts("pdf", quiet = TRUE)
    extrafont::loadfonts("postscript", quiet = TRUE)
  }

  fnt <- extrafont::fonttable()
  if (!any(grepl("Graphik|GT", fnt$FamilyName))) {
    packageStartupMessage("NOTE: Graphik and GT are required fonts for the AFS theme to work by default")
    packageStartupMessage("      Please use afsPackage::import_fonts() to install fonts")
  }

}
