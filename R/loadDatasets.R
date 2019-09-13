loadDataset <- function(tissueType){
  hub <- ExperimentHub::ExperimentHub()
  methPara <- switch(tissueType,
                     "Saliva" = hub[["EH3068"]],
                     "Lymphoma" = hub[["EH3069"]],
                     "Placenta" = hub[["EH3070"]],
                     "Liver" = hub[["EH3071"]],
                     "Colon" = hub[["EH3072"]],
                     "Blood adult" = hub[["EH3073"]],
                     "Blood 5 year olds" = hub[["EH3074"]],
                     "Blood newborns" = hub[["EH3075"]],
                     "Cord-blood (whole blood)" = hub[["EH3076"]],
                     "Cord-blood (PBMC)" = hub[["EH3077"]],
                     "Adult (PBMC)" = hub[["EH3078"]],
                     "Sperm" = hub[["EH3079"]],
                     stop("Tissue type not found")
  )
  return(methPara)
}
