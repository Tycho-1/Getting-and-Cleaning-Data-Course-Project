The following script aims at simplifying the data from the article "Human Activity Recognition Using Smartphones Data Set" by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto (2012). The end result is producing a tidy dataset extracting only the the means and the standard deviations, taking the average for each varible and summarizing it by subject and activity in a neat table.

The experiment was carried out with a group of 30 volunteers, each performing six different activities - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING wearing a smartphone. Using the embedded accelerometer and gyroscope of the phones, 3-axial linear acceleration and 3-axial angular velocty was captured. The obtained datasets has been randomly partitioned into two datasets - training data - 70% of the volunteers and test data - the rest 30%. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

#### The article provided the following data:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment

#### The original dataset includes the following files:

* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'train/Inertial Signals/total_acc_x_train.txt'
* 'train/Inertial Signals/body_acc_x_train.txt'
* 'train/Inertial Signals/body_gyro_x_train.txt'

###### Notes:

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

For the sake of this summarization the Inertial Signals data is ignored. In order to produce the tidy dataset this script combines the afore mentioned data files. The names of the variables are also transformed so that it is easier to read and understand the information.

## Here are the steps that the script performs:

* Removes the "_" symbol from the file activity_labels, and transforms all the letters into lowercase. 
* Converts the files y_train.txt and y_test.txt into files with descriptive fields, e.g. instead of labels 1,2... there now are walking, sitting... 
* Extracting from the files X_train.txt and X_test.txt only variables with the information that measure mean and standard deviation.
* Combining the information from the transformed file X_train with the files that indicates what activity has been performed - i.e. the already altered file y_train and with the file subject_train, i.e. the information about the participant that was involved.
* Similarly for the file X_test it is combined with y_test and with subject_test
* Finally, the data from the previous two steps is combined, so that now the 70% of the information in train set is added to the 30% of the test set to arrive at 100% of the data resulting from the experiment (for the mean and standard deviation in this case).
* Changing the variables names of the resulting reduced dataset. This is done as extracting in the same way the names of features.txt that contain mean and standard deviation.
* However that names do not conform to the principles of the tidy data, so a couple of transformations are applied.
* Converting all names into lowercase.
* Removing "()" and "-" from the names
* Moving prefixes "t" indicating time and "f" indicating frequency from the beginning to the end of the names of the variables. At least in my opinion that is easier to uderstand and read.
* Finally changing the abbreviations "Acc" and "Gyro" into a descriptive words as "accelerometer" and "gyroscope". Again, in my view that is easier to read.
* Changing the names of the first two columns of the resultind reduced data into "activity" and "subject"
* Performing the actual summarazition i.e. taking the average of each variable for each activity and subject and putting it into a tidy table
* Exporting that tidy dataset into a coma separated file so that it can be easily read with different software
* Exporting the names of the variables so that the making of the code book is easier.

For detail characteristics of all variables please see the file CodeBook.
