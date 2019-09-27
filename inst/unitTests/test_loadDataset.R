test_loadDataset <- function(){
    methPara <- pwrEWAS.data:::loadDataset("Saliva")
    checkEqualsNumeric(methPara$mu[1], 0.3058907, tolerance = 1.0e-6)
    checkEqualsNumeric(methPara$var[1], 0.002171172, tolerance = 1.0e-6)
    checkEqualsNumeric(methPara$mu[485575], 0.8330722, tolerance = 1.0e-6)
    checkEqualsNumeric(methPara$var[485575], 0.02350422, tolerance = 1.0e-6)
    
    methPara <- pwrEWAS.data:::loadDataset("Cord-blood (whole blood)")
    checkEqualsNumeric(methPara$mu[1], 0.5858956, tolerance = 1.0e-6)
    checkEqualsNumeric(methPara$var[1], 0.003759595, tolerance = 1.0e-6)
    checkEqualsNumeric(methPara$mu[473673], 0.1239056, tolerance = 1.0e-6)
    checkEqualsNumeric(methPara$var[473673], 0.002086465, tolerance = 1.0e-6)
}