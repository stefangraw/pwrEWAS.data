# setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
df = data.frame("Title" = NA, 
                "Description" = NA, 
                "BiocVersion" = NA, 
                "Genome" = NA, 
                "SourceType" = NA, 
                "SourceUrl" = NA, 
                "SourceVersion" = NA, 
                "Species" = NA, 
                "TaxonomyId" = NA, 
                "Coordinate_1_based" = NA, 
                "DataProvider" = NA, 
                "Maintainer" = NA, 
                "RDataClass" = NA, 
                "DispatchClass" = NA, 
                "RDataPath" = NA, 
                "Notes" = NA)


df[1:12,] = matrix(c("Saliva", "Lymphoma", "Placenta", "Liver", "Colon", "Blood (Adults) - Peripheral Leukocytes", "Blood 5 year olds", "Blood newborns", "Cord-blood (whole blood)", "Cord-blood (PBMC)", "Adult (PBMC)", "Sperm",
                     paste("Genome-wide CpG-specific means and variance for ", c("Saliva", "Lymphoma", "Placenta", "Liver", "Colon", "Blood (Adults) - Peripheral Leukocytes", "Blood 5 year olds", "Blood newborns", "Cord-blood (whole blood)", "Cord-blood (PBMC)", "Adult (PBMC)", "Sperm"), sep = ""),
                     rep("3.10", 12),
                     rep(NA,12), # rep("HM450k", 12),
                     rep("TXT",12),
                     paste("https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=", c("GSE92767", "GSE42372", "GSE62733", "GSE61258", "GSE77718", "GSE42861", "GSE83334", "GSE82273", "GSE69176", "GSE110128", "GSE67170", "GSE114753"), sep = ""),
                     rep(NA,12), # rep(format(Sys.time(), "%b %d %Y"),12),
                     rep("Homo sapiens",12),
                     rep(9606,12),
                     rep(NA,12),
                     rep("GEO",12),
                     rep("shgraw@uams.edu",12),
                     rep("data.frame",12),
                     rep("Rda",12),
                     paste("pwrEWAS_data/", c("Saliva.rdata", "Lymphoma.rdata", "Placenta.rdata", "Liver.rdata", "Colon.rdata", "Blood_adult.rdata", "Blood_5yrOlds.rdata", "BloodNewborns.rdata", "CordBlood_wholeBlood.rdata", "CordBlood_PBMC.rdata", "Adult_PBMC.rdata", "Sperm.rdata"), sep = ""),
                     rep("HM450k",12)),
                   nrow = 12, ncol = 16, byrow = F
)

write.csv(df, file = "../extdata/metadata.csv", row.names=FALSE)
