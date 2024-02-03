/*  Remove the 195 rows where the duration of bike rides
  is recorded as negative seconds, which is not possible   */
DELETE FROM cyclistic_data
WHERE Ride_Length_In_Seconds < 0;