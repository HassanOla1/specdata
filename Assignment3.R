
corr <- function(directory, threshold = 0){
        h_files <- list.files("./specdata", full.names = TRUE)
        
        v_data <- vector(mode = "numeric", length = 0)
        
        for(i in 1:length(h_files)){
                
                monit <- read.csv(h_files[i])
                
                calsum <- sum((!is.na(monit$sulfate)) & (!is.na(monit$nitrate)))
                
                if(calsum > threshold){
                        
                        sul <- monit[which(!is.na(monit$sulfate)), ]
                        nit <- sul[which(!is.na(sul$nitrate)), ]
                        v_data <- c(v_data, cor(nit$sulfate, nit$nitrate))
                }
        }
        v_data
}

cr <- corr("specdata", 150)

