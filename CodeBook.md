The variables in the resulting tidy dataset come from taking the mean of the accelerometer and gyroscope 3-axial raw signals, which in the original files are named tAcc-XYZ and tGyro-XYZ. These time domain signals are prefixed with "t" to denote time. However in the tidy dataset the time denotation is in the end, to make it easier to read. The acceleartion signals were separated into "body" and "gravity" acceleration signals.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. In the original files "f" in the beginning of the variables denoted frequency domain signals. In the tidy dataset the "f" is at the end of the variables' names.

These signals were used to estimate variables of the original data for each pattern: 'xyz' is used to denote 3-axial signals in the x, y and z directions. 

The resuling tidy dataset includes only variables that take measurement on mean and standard deviation for each measurement. Those variables are then summarized by taking the mean of each of them by activity that is performed and by the participant that took part of it.

### List of variables

* activity - factor variable - contains information about the six different activity performed - laying, sitting, standing, walking, walkingupstairs, walkingdownstairs
* subject - numecical variable taking only integer values from 1 to 30 -each denoting the different participants in the experiment
* bodyaccelerometermeanxt - time body mean of signals from the accelerometer in the x direction, range [-1.1]
* bodyaccelerometermeanyt - same in the y direction
* bodyaccelerometermeanzt - same in the z direction
* bodyaccelerometerstdxt - time body standard deviation of signals from accelerometer in the x direction range [-1,1]
* bodyaccelerometerstdyt - same in the y direction
* bodyaccelerometerstdzt - same in the z direction
* gravityaccelerometermeanxt - time mean of the gravity acceleartion signals in x direction range [-1,1]
* gravityaccelerometermeanyt - same in the y direction
* gravityaccelerometermeanzt - same in the z direction
* gravityaccelerometerstdxt - time standard deviation of the gravity acceleration signalsi x direction range [-1,1]
* gravityaccelerometerstdyt - same in the y direction
* gravityaccelerometerstdzt - same in the z direction
* bodyaccelerometerjerkmeanxt - time body mean of the jerk of the acceleration signals in the x axis, range [-1,1]
* bodyaccelerometerjerkmeanyt - same in the y direction
* bodyaccelerometerjerkmeanzt - same in the z direction
* bodyaccelerometerjerkstdxt - time body standard deviation of the jerk of the acceleration signals in the x axis, range [-1,1]
* bodyaccelerometerjerkstdyt - same in the y direction
* bodyaccelerometerjerkstdzt - same in the z direction
* bodygyroscopemeanxt - time body mean of the signals from gyroscope, in the x direction, range [-1,1]
* bodygyroscopemeanyt - same in the y direction
* bodygyroscopemeanzt - same in the z direction
* bodygyroscopestdxt - time body standard deviation of the signals from gyroscope in x direction, range [-1,1]
* bodygyroscopestdyt - same in the y direction
* bodygyroscopestdzt - same in the z direction
* bodygyroscopejerkmeanxt - 
* bodygyroscopejerkmeanyt
* bodygyroscopejerkmeanzt
* bodygyroscopejerkstdxt
* bodygyroscopejerkstdyt
* bodygyroscopejerkstdzt
* bodyaccelerometermagmeant
* bodyaccelerometermagstdt
* gravityaccelerometermagmeant
* gravityaccelerometermagstdt
* bodyaccelerometerjerkmagmeant
* bodyaccelerometerjerkmagstdt
* bodygyroscopemagmeant
* bodygyroscopemagstdt
* bodygyroscopejerkmagmeant
* bodygyroscopejerkmagstdt
* bodyaccelerometermeanxf
* bodyaccelerometermeanyf
* bodyaccelerometermeanzf
* bodyaccelerometerstdxf
* bodyaccelerometerstdyf
* bodyaccelerometerstdzf
* bodyaccelerometermeanfreqxf
* bodyaccelerometermeanfreqyf
* bodyaccelerometermeanfreqzf
* bodyaccelerometerjerkmeanxf
* bodyaccelerometerjerkmeanyf
* bodyaccelerometerjerkmeanzf
* bodyaccelerometerjerkstdxf
* bodyaccelerometerjerkstdyf
* bodyaccelerometerjerkstdzf
* bodyaccelerometerjerkmeanfreqxf
* bodyaccelerometerjerkmeanfreqyf
* bodyaccelerometerjerkmeanfreqzf
* bodygyroscopemeanxf
* bodygyroscopemeanyf
* bodygyroscopemeanzf
* bodygyroscopestdxf
* bodygyroscopestdyf
* bodygyroscopestdzf
* bodygyroscopemeanfreqxf
* bodygyroscopemeanfreqyf
* bodygyroscopemeanfreqzf
* bodyaccelerometermagmeanf
* bodyaccelerometermagstdf
* bodyaccelerometermagmeanfreqf
* bodyaccelerometerjerkmagmeanf
* bodyaccelerometerjerkmagstdf
* bodyaccelerometerjerkmagmeanfreqf
* bodygyroscopemagmeanf
* bodygyroscopemagstdf
* bodygyroscopemagmeanfreqf
* bodygyroscopejerkmagmeanf
* bodygyroscopejerkmagstdf
* bodygyroscopejerkmagmeanfreqf
