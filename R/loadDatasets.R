loadDataset <- function(tissueType){
  methPara <- NULL
  if(tissueType == "Saliva"){
    methPara <- ExperimentHub::ExperimentHub()[["EH3068"]]
  } else 
    if(tissueType == "Lymphoma"){
      methPara <- ExperimentHub::ExperimentHub()[["EH3069"]]
    } else 
      if(tissueType == "Placenta"){
        methPara <- ExperimentHub::ExperimentHub()[["EH3070"]]
      } else 
        if(tissueType == "Liver"){
          methPara <- ExperimentHub::ExperimentHub()[["EH3071"]]
        } else 
          if(tissueType == "Colon"){
            methPara <- ExperimentHub::ExperimentHub()[["EH3072"]]
          } else 
            if(tissueType == "Blood adult"){
              methPara <- ExperimentHub::ExperimentHub()[["EH3073"]]
            } else
              if(tissueType == "Blood 5 year olds"){
                methPara <- ExperimentHub::ExperimentHub()[["EH3074"]]
              } else 
                if(tissueType == "Blood newborns"){
                  methPara <- ExperimentHub::ExperimentHub()[["EH3075"]]
                } else
                  if(tissueType == "Cord-blood (whole blood)"){
                    methPara <- ExperimentHub::ExperimentHub()[["EH3076"]]
                  } else
                    if(tissueType == "Cord-blood (PBMC)"){
                      methPara <- ExperimentHub::ExperimentHub()[["EH3077"]]
                    } else
                      if(tissueType == "Adult (PBMC)"){
                        methPara <- ExperimentHub::ExperimentHub()[["EH3078"]]
                      } else
                        if(tissueType == "Sperm"){
                          methPara <- ExperimentHub::ExperimentHub()[["EH3079"]]
                        } else
                          stop("Tissue type not found")
  return(methPara)
}
