The variables in the resulting tidy dataset come from taking the mean of the accelerometer and gyroscope 3-axial raw signals, which in the original files are named tAcc-XYZ and tGyro-XYZ. These time domain signals are prefixed with "t" to denote time. However in the tidy dataset the time denotation is in the end, to make it easier to read. The accelertion signals were separated into "body" and "gravity" acceleration signals.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. In the original files "f" in the beginning of the variables denoted frequency domain signals. In the tidy dataset the "f" is at the end of the variables' names.

These signals were used to estimate variables of the original data for each pattern: 'xyz' is used to denote 3-axial signals in the x, y and z directions. 

The resulting tidy dataset includes only variables that take measurement on mean and standard deviation for each measurement. Those variables are then summarized by taking the mean of each of them by activity that is performed and by the participant that took part of it.

### List of variables

* activity - factor variable - contains information about the six different activity performed - laying, sitting, standing, walking, walkingupstairs, walkingdownstairs
* subject - numerical variable taking only integer values from 1 to 30 -each denoting the different participants in the experiment
* bodyaccelerometermeanxt - the mean of time body mean of signals from the accelerometer in the x direction, range [-1.1]
* bodyaccelerometermeanyt - same in the y direction
* bodyaccelerometermeanzt - same in the z direction
* bodyaccelerometerstdxt - the mean of time body standard deviation of signals from accelerometer in the x direction, range [-1,1]
* bodyaccelerometerstdyt - same in the y direction
* bodyaccelerometerstdzt - same in the z direction
* gravityaccelerometermeanxt - the mean of time mean of the gravity acceleartion signals in x direction range [-1,1]
* gravityaccelerometermeanyt - same in the y direction
* gravityaccelerometermeanzt - same in the z direction
* gravityaccelerometerstdxt - the mean of time standard deviation of the gravity acceleration signals in x direction, range [-1,1]
* gravityaccelerometerstdyt - same in the y direction
* gravityaccelerometerstdzt - same in the z direction
* bodyaccelerometerjerkmeanxt - the mean of time body mean of the jerk of the acceleration signals in the x axis, range [-1,1]
* bodyaccelerometerjerkmeanyt - same in the y direction
* bodyaccelerometerjerkmeanzt - same in the z direction
* bodyaccelerometerjerkstdxt - the mean of time body standard deviation of the jerk of the acceleration signals in the x axis, range [-1,1]
* bodyaccelerometerjerkstdyt - same in the y direction
* bodyaccelerometerjerkstdzt - same in the z direction
* bodygyroscopemeanxt - the mean of time body mean of the signals from gyroscope, in the x direction, range [-1,1]
* bodygyroscopemeanyt - same in the y direction
* bodygyroscopemeanzt - same in the z direction
* bodygyroscopestdxt - the mean of time body standard deviation of the signals from gyroscope in x direction, range [-1,1]
* bodygyroscopestdyt - same in the y direction
* bodygyroscopestdzt - same in the z direction
* bodygyroscopejerkmeanxt - the mean of time body mean of jerk of the signals from gyroscope in the x direction, range [-1,1]
* bodygyroscopejerkmeanyt - same in the y direction
* bodygyroscopejerkmeanzt - same in the z direction
* bodygyroscopejerkstdxt - the mean of time body standard deviation of jerk of signals from gyroscope in the x direction, range [-1,1]
* bodygyroscopejerkstdyt - same in the y direction
* bodygyroscopejerkstdzt - same in the z direction
* bodyaccelerometermagmeant - the mean of time body mean of the magnitude of the acceleration signals, range[-1,1]  
* bodyaccelerometermagstdt - the mean of time body standard deviation of the magnitude of the acceleration signals, range[-1,1] 
* gravityaccelerometermagmeant - the mean of time gravity mean of the magnitude of the acceleration signals, range[-1,1] 
* gravityaccelerometermagstdt - the mean of time gravity standard deviation of the magnitude of the acceleration signals, range[-1,1] 
* bodyaccelerometerjerkmagmeant - the mean of time body mean of the magnitude of the jerk from acceleration signals, range[-1,1] 
* bodyaccelerometerjerkmagstdt - the mean of time body standard deviation of the magnitude of the jerk from acceleration signals, range[-1,1] 
* bodygyroscopemagmeant - the mean of time body mean of the magnitude of the gyroscope signals, range[-1,1] 
* bodygyroscopemagstdt - the mean of time body standard deviation of the magnitude of the gyroscope signals, range[-1,1] 
* bodygyroscopejerkmagmeant - the mean of time body mean of the magnitude of the jerk from gyroscope signals, range[-1,1] 
* bodygyroscopejerkmagstdt - the mean of time body standard deviation of the magnitude of the jerk from gyroscope signals, range[-1,1] 
* bodyaccelerometermeanxf - the mean of the frequency of the mean body acceleration signals in the x direction, range [-1,1]
* bodyaccelerometermeanyf - same in the y direction
* bodyaccelerometermeanzf - same in the z direction
* bodyaccelerometerstdxf - the mean of the frequency of the standard deviation of body acceleration signals in the x direction, range [-1,1]
* bodyaccelerometerstdyf - same in the y direction
* bodyaccelerometerstdzf - same in the z direction
* bodyaccelerometermeanfreqxf - the mean of the frequency of the weighted average of the ferquency component of acceleration signals, range [-1,1]
* bodyaccelerometermeanfreqyf - same in the y direction
* bodyaccelerometermeanfreqzf - same in the z direction
* bodyaccelerometerjerkmeanxf - the mean of the frequency of the body mean of the jerk of the acceleration signals in the x direction, range [-1,1]
* bodyaccelerometerjerkmeanyf - same in the y direction
* bodyaccelerometerjerkmeanzf - same in the z direction
* bodyaccelerometerjerkstdxf - the mean of the frequency of the body standard deviation of the jerk of the acceleration signals in the x direction, range [-1,1]
* bodyaccelerometerjerkstdyf - same in the y direction
* bodyaccelerometerjerkstdzf - same in the z direction
* bodyaccelerometerjerkmeanfreqxf - the mean of the frequency of the weighted average of the frequency component of the jerk of acceleration signals, range [-1,1]
* bodyaccelerometerjerkmeanfreqyf - same in the y direction
* bodyaccelerometerjerkmeanfreqzf - same in the z direction
* bodygyroscopemeanxf - the mean of the frequency of the mean body  signals from gyroscope in the x direction, range [-1,1]
* bodygyroscopemeanyf - same in the y direction
* bodygyroscopemeanzf - same in the z direction
* bodygyroscopestdxf - the mean of the frequency of the standard deviation of  body  signals from gyroscope in the x direction, range [-1,1]
* bodygyroscopestdyf - same in the y direction
* bodygyroscopestdzf - same in the z direction
* bodygyroscopemeanfreqxf - the mean of the frequency of the mean body weighted average of the frequency components from signals from gyroscope in the x direction, range [-1,1]
* bodygyroscopemeanfreqyf - same in the y direction
* bodygyroscopemeanfreqzf - same in the z direction
* bodyaccelerometermagmeanf - the mean of the frequency of the magnitude of mean body  signals from accelerometer, range [-1,1]
* bodyaccelerometermagstdf - the mean of the frequency of the body magnitude of standard deviation of signals from accelerometer, range [-1,1]
* bodyaccelerometermagmeanfreqf - the mean of the frequency of the body magnitude of weighted average of frequency components of signals from accelerometer, range [-1,1]
* bodyaccelerometerjerkmagmeanf - the mean of the frequency of the body magnitude of mean of jerk of the signals from accelerometer, range [-1,1]
* bodyaccelerometerjerkmagstdf - the mean of the frequency of the body magnitude of the standard deviation of jerk of the signals from accelerometer, range [-1,1]
* bodyaccelerometerjerkmagmeanfreqf - the mean of the frequency of the body magnitude of the jerk of weighted average of frequency components of the signals from accelerometer, range [-1,1]
* bodygyroscopemagmeanf - the mean of the frequency of the magnitude of mean body signals from gyroscope, range [-1,1]
* bodygyroscopemagstdf - the mean of the frequency of the magnitude of the standard deviation of body signals from gyroscope, range [-1,1]
* bodygyroscopemagmeanfreqf -the mean of the frequency of the body magnitude of weighted average of frequency components of signals from gyroscope, range [-1,1]
* bodygyroscopejerkmagmeanf - the mean of the frequency of the body magnitude of mean of jerk of the signals from gyroscope, range [-1,1]
* bodygyroscopejerkmagstdf - the mean of the frequency of the body magnitude of standard deviation of jerk of the signals from gyroscope, range [-1,1]
* bodygyroscopejerkmagmeanfreqf - the mean of the frequency of the body magnitude of the jerk of weighted average of frequency components of the signals from gyroscope, range [-1,1]
