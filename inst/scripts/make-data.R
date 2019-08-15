
# Saliva
gset <- GEOquery::getGEO("GSE92767", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Saliva = data.frame(mu, var)
dim(Saliva)
sum(is.na(Saliva))
Saliva = Saliva[rowSums(is.na(Saliva))==0,]
dim(Saliva)
save(Saliva, file = "Saliva.rdata")
rm(list=ls())



# Lymphoma
gset <- GEOquery::getGEO("GSE42372", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
data = data[ ,gset@phenoData@data$characteristics_ch1.2 == "disease state: non-HIV lymphoma"] 
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Lymphoma = data.frame(mu, var)
sum(is.na(Lymphoma))
dim(Lymphoma)
Lymphoma = Lymphoma[rowSums(is.na(Lymphoma))==0,]
dim(Lymphoma)
save(Lymphoma, file = "Lymphoma.rdata")
rm(list=ls())



# Placenta
gset <- GEOquery::getGEO("GSE62733", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
data = data[ ,gset@phenoData@data$characteristics_ch1.1 == "health state: Normal"] 
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Placenta = data.frame(mu, var)
sum(is.na(Placenta))
dim(Placenta)
Placenta = Placenta[rowSums(is.na(Placenta))==0,]
dim(Placenta)
save(Placenta, file = "Placenta.rdata")
rm(list=ls())



# Liver
gset <- GEOquery::getGEO("GSE61258", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
data = data[ ,gset@phenoData@data$characteristics_ch1.7 == "diseasestatus: Control"] 
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Liver = data.frame(mu, var)
sum(is.na(Liver))
dim(Liver)
Liver = Liver[rowSums(is.na(Liver))==0,]
dim(Liver)
save(Liver, file = "Liver.rdata")
rm(list=ls())



# Colon
gset <- GEOquery::getGEO("GSE77718", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
data = data[ ,gset@phenoData@data$characteristics_ch1.1 == "disease state: Normal"]  
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Colon = data.frame(mu, var)
sum(is.na(Colon))
dim(Colon)
Colon = Colon[rowSums(is.na(Colon))==0,]
dim(Colon)
save(Colon, file = "Colon.rdata")
rm(list=ls())



# Blood (Adults) - Peripheral Leukocytes
source("patch.R")
gset <- GEOquery::getGEO("GSE42861", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
data = data[,gset@phenoData@data$characteristics_ch1.2 == "subject: Normal"]
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Blood_adult = data.frame(mu, var)
sum(is.na(Blood_adult))
dim(Blood_adult)
Blood_adult = Blood_adult[rowSums(is.na(Blood_adult))==0,]
dim(Blood_adult)
save(Blood_adult, file = "Blood_adult.rdata")
rm(list=ls())



# Blood 5 year olds
gset <- GEOquery::getGEO("GSE83334", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
data = data[ ,gset@phenoData@data$characteristics_ch1.2 == "age: 5 years"]   
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Blood_5yrOlds = data.frame(mu, var)
sum(is.na(Blood_5yrOlds))
dim(Blood_5yrOlds)
Blood_5yrOlds = Blood_5yrOlds[rowSums(is.na(Blood_5yrOlds))==0,]
dim(Blood_5yrOlds)
save(Blood_5yrOlds, file = "Blood_5yrOlds.rdata")
rm(list=ls())



# Blood newborns
source("patch.R")
gset <- GEOquery::getGEO("GSE82273", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
BloodNewborns = data.frame(mu, var)
sum(is.na(BloodNewborns))
dim(BloodNewborns)
BloodNewborns = BloodNewborns[rowSums(is.na(BloodNewborns))==0,]
dim(BloodNewborns)
save(BloodNewborns, file = "BloodNewborns.rdata")
rm(list=ls())



# Cord-blood (whole blood)
gset <- GEOquery::getGEO("GSE69176", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
CordBlood_wholeBlood = data.frame(mu, var)
sum(is.na(CordBlood_wholeBlood))
dim(CordBlood_wholeBlood)
CordBlood_wholeBlood = CordBlood_wholeBlood[rowSums(is.na(CordBlood_wholeBlood))==0,]
dim(CordBlood_wholeBlood)
save(CordBlood_wholeBlood, file = "CordBlood_wholeBlood.rdata")
rm(list=ls())



# Cord-blood (PBMC)
gset <- GEOquery::getGEO("GSE110128", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
# data = Biobase::exprs(gset)
# dim(data)
data = read.table("GSE110128_matrix_processed.txt", header = T, row.names = 1)
data = data[,seq(1,dim(data)[2],2)]
dim(data)
# data = data[ ,gset@phenoData@data$`tissue:ch1` == "cord blood" & gset@phenoData@data$`allergy:ch1` == "Control"]
data = data[ ,gset@phenoData@data$`tissue:ch1` == "cord blood"]
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
CordBlood_PBMC = data.frame(mu, var)
sum(is.na(CordBlood_PBMC))
dim(CordBlood_PBMC)
CordBlood_PBMC = CordBlood_PBMC[rowSums(is.na(CordBlood_PBMC))==0,]
dim(CordBlood_PBMC)
save(CordBlood_PBMC, file = "CordBlood_PBMC.rdata")
rm(list=ls())



# Adult (PBMC)
gset <- GEOquery::getGEO("GSE67170", GSEMatrix =TRUE, getGPL=FALSE)
if (length(gset) > 1) idx <- grep("GPL13534", attr(gset, "names")) else idx <- 1
gset <- gset[[idx]]
data = Biobase::exprs(gset)
dim(data)
data = data[ ,gset@phenoData@data$characteristics_ch1.1 == "disease state: control"]
dim(data)
mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Adult_PBMC = data.frame(mu, var)
sum(is.na(Adult_PBMC))
dim(Adult_PBMC)
Adult_PBMC = Adult_PBMC[rowSums(is.na(Adult_PBMC))==0,]
dim(Adult_PBMC)
save(Adult_PBMC, file = "Adult_PBMC.rdata")
rm(list=ls())



# Sperm
gset <- GEOquery::getGEO("GSE114753")
data = read.table("GSE114753_matrix_processed.txt", header = T, row.names = 1)
data = data[,seq(1,dim(data)[2],2)]
dim(data)

gsetID = gset$GSE114753_series_matrix.txt.gz@phenoData@data$description.1
names = as.character(gset$GSE114753_series_matrix.txt.gz@phenoData@data$title)
names[105] = "AJ5T-022 control" # "AJ5T- 022 control"
treatment = unlist(lapply(strsplit(names," "), function(x) x[2]))
passed = treatment %in% "control" & gsetID %in% colnames(data)
passedControls = as.character(gsetID[passed])
data = data[passedControls]
dim(data)

mu = apply(data,MARGIN=1,mean,na.rm=TRUE)
var = apply(data,MARGIN=1,var, na.rm=TRUE)
Sperm = data.frame(mu, var)
sum(is.na(Sperm))
dim(Sperm)
Sperm = Sperm[rowSums(is.na(Sperm))==0,]
dim(Sperm)
save(Sperm, file = "Sperm.rdata")
rm(list=ls())

