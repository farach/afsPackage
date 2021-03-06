% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_project_files.R
\name{create_project_files}
\alias{create_project_files}
\title{Create project files}
\usage{
create_project_files(
  PROJECT_PATH = rstudioapi::getActiveProject(),
  FOLDERS_TO_CREATE = c("data", "docs", "figs", "logs", "output", "queries", "R",
    "tests"),
  OPEN_NEW_SESSION = TRUE,
  DEBUG = TRUE
)
}
\arguments{
\item{PROJECT_PATH}{location of project}

\item{FOLDERS_TO_CREATE}{defaults to: "data", "docs", "figs", "logs", "output", "queries", "R", "tests"}

\item{OPEN_NEW_SESSION}{defaults to TRUE}

\item{DEBUG}{defaults to TRUE}
}
\value{
folder structure within PROJECT_PATH
}
\description{
Create project files
}
\examples{


}
