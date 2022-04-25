
# return first four generations of specdata stored in
# specdata files retrieved from specdata.zip and
# extracting out into csv files


pollutantmean <- function(directory, pollutant, id = 1:332){
        the_Files <- list.files("./specdata", full.names=TRUE) #create a list of files
        
        pollutantmean_df <- data.frame() # create an empty data frame
        
        for (i in id) { #add files to main data
                pollutantmean_df <- rbind(pollutantmean_df, read.csv(the_Files[i]))
                
                #Calulating the mean
                
                mymean <- mean(pollutantmean_df[, pollutant], na.rm = TRUE)
        }
        return(mymean)      
}
