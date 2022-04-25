
complete <- function(directory, id = 1:332){
        my_files <- list.files("./specdata", full.names = TRUE) # create a list of files
        
        # create an empty data frame
        complete_df <- data.frame()
        
        for(i in id){ # add files to main data
                comp <- read.csv(my_files[i])
                
                nobs <- sum(complete.cases(comp)) # sum to return no missing values
                
                complete_df <- rbind(complete_df, data.frame(i, nobs))
                
                } 
        colnames(complete_df) <- c("id", "nobs")
        return(complete_df)
}

complete("specdata", c(2, 4, 8, 10, 12))
