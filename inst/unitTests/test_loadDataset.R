test_loadDataset <- function(){
    checkEqualsNumeric(pwrEWAS.data:::loadDataset("Saliva")$mu[1], 0.3058907, tolerance = 1.0e-6)
    checkEqualsNumeric(pwrEWAS.data:::loadDataset("Saliva")$var[1], 0.002171172, tolerance = 1.0e-6)
    checkEqualsNumeric(pwrEWAS.data:::loadDataset("Saliva")$mu[485575], 0.8330722, tolerance = 1.0e-6)
    checkEqualsNumeric(pwrEWAS.data:::loadDataset("Saliva")$var[485575], 0.02350422, tolerance = 1.0e-6)
    
    
    checkEqualsNumeric(pwrEWAS.data:::loadDataset("Cord-blood (whole blood)")$mu[1], 0.5858956, tolerance = 1.0e-6)
    checkEqualsNumeric(pwrEWAS.data:::loadDataset("Cord-blood (whole blood)")$var[1], 0.003759595, tolerance = 1.0e-6)
    checkEqualsNumeric(pwrEWAS.data:::loadDataset("Cord-blood (whole blood)")$mu[473673], 0.1239056, tolerance = 1.0e-6)
    checkEqualsNumeric(pwrEWAS.data:::loadDataset("Cord-blood (whole blood)")$var[473673], 0.002086465, tolerance = 1.0e-6)
}