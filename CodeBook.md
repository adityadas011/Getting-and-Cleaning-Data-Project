# Code Book
This code book describes the variables, the data, and any transformations and work that was performed to clean up the data.

## Variables
The variables in the tidydata.txt file are:

- "Subject"                                                   
- "Activity"                                                  
- "TimeBodyAccelerometer-Mean-X"                              
- "TimeBodyAccelerometer-Mean-Y"                              
- "TimeBodyAccelerometer-Mean-Z"                           
- "TimeBodyAccelerometer-Standard-Deviation-X"                
- "TimeBodyAccelerometer-Standard-Deviation-Y"                
- "TimeBodyAccelerometer-Standard-Deviation-Z"                
- "TimeGravityAccelerometer-Mean-X"                           
- "TimeGravityAccelerometer-Mean-Y"                           
- "TimeGravityAccelerometer-Mean-Z"                           
- "TimeGravityAccelerometer-Standard-Deviation-X"             
- "TimeGravityAccelerometer-Standard-Deviation-Y"             
- "TimeGravityAccelerometer-Standard-Deviation-Z"             
- "TimeBodyAccelerometerJerk-Mean-X"                          
- "TimeBodyAccelerometerJerk-Mean-Y"                          
- "TimeBodyAccelerometerJerk-Mean-Z"                          
- "TimeBodyAccelerometerJerk-Standard-Deviation-X"            
- "TimeBodyAccelerometerJerk-Standard-Deviation-Y"            
- "TimeBodyAccelerometerJerk-Standard-Deviation-Z"            
- "TimeBodyGyroscope-Mean-X"                                  
- "TimeBodyGyroscope-Mean-Y"                                  
- "TimeBodyGyroscope-Mean-Z"                                  
- "TimeBodyGyroscope-Standard-Deviation-X"                    
- "TimeBodyGyroscope-Standard-Deviation-Y"                    
- "TimeBodyGyroscope-Standard-Deviation-Z"                    
- "TimeBodyGyroscopeJerk-Mean-X"                              
- "TimeBodyGyroscopeJerk-Mean-Y"                              
- "TimeBodyGyroscopeJerk-Mean-Z"                              
- "TimeBodyGyroscopeJerk-Standard-Deviation-X"                
- "TimeBodyGyroscopeJerk-Standard-Deviation-Y"                
- "TimeBodyGyroscopeJerk-Standard-Deviation-Z"                
- "TimeBodyAccelerometerMagnitude-Mean"                       
- "TimeBodyAccelerometerMagnitude-Standard-Deviation"         
- "TimeGravityAccelerometerMagnitude-Mean"                    
- "TimeGravityAccelerometerMagnitude-Standard-Deviation"      
- "TimeBodyAccelerometerJerkMagnitude-Mean"                   
- "TimeBodyAccelerometerJerkMagnitude-Standard-Deviation"     
- "TimeBodyGyroscopeMagnitude-Mean"                           
- "TimeBodyGyroscopeMagnitude-Standard-Deviation"             
- "TimeBodyGyroscopeJerkMagnitude-Mean"                       
- "TimeBodyGyroscopeJerkMagnitude-Standard-Deviation"         
- "FrequencyBodyAccelerometer-Mean-X"                         
- "FrequencyBodyAccelerometer-Mean-Y"                         
- "FrequencyBodyAccelerometer-Mean-Z"                         
- "FrequencyBodyAccelerometer-Standard-Deviation-X"           
- "FrequencyBodyAccelerometer-Standard-Deviation-Y"           
- "FrequencyBodyAccelerometer-Standard-Deviation-Z"           
- "FrequencyBodyAccelerometerJerk-Mean-X"                     
- "FrequencyBodyAccelerometerJerk-Mean-Y"                     
- "FrequencyBodyAccelerometerJerk-Mean-Z"                     
- "FrequencyBodyAccelerometerJerk-Standard-Deviation-X"       
- "FrequencyBodyAccelerometerJerk-Standard-Deviation-Y"       
- "FrequencyBodyAccelerometerJerk-Standard-Deviation-Z"       
- "FrequencyBodyGyroscope-Mean-X"                             
- "FrequencyBodyGyroscope-Mean-Y"                             
- "FrequencyBodyGyroscope-Mean-Z"                              
- "FrequencyBodyGyroscope-Standard-Deviation-X"               
- "FrequencyBodyGyroscope-Standard-Deviation-Y"               
- "FrequencyBodyGyroscope-Standard-Deviation-Z"               
- "FrequencyBodyAccelerometerMagnitude-Mean"                  
- "FrequencyBodyAccelerometerMagnitude-Standard-Deviation"    
- "FrequencyBodyAccelerometerJerkMagnitude-Mean"              
- "FrequencyBodyAccelerometerJerkMagnitude-Standard-Deviation"
- "FrequencyBodyGyroscopeMagnitude-Mean"                      
- "FrequencyBodyGyroscopeMagnitude-Standard-Deviation"        
- "FrequencyBodyGyroscopeJerkMagnitude-Mean"                  
- "FrequencyBodyGyroscopeJerkMagnitude-Standard-Deviation"

## Subjects
- There are 30 subjects and are represented as subject IDs.

## Activity Labels

- WALKING:             walking during the test
- WALKING_UPSTAIRS:    walking up a staircase during the test
- WALKING_DOWNSTAIRS:  walking down a staircase during the test
- SITTING:             sitting during the test
- STANDING:            standing during the test
- LAYING:              laying down during the test
