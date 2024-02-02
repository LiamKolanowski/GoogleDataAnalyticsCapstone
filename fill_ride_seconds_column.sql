/*. Update ride duration in seconds based on Julian day difference (86,400 seconds per day)  */
UPDATE cyclistic_data
SET Ride_Length_In_Seconds = 
    CAST((julianday(Ended_Datetime) - julianday(Started_Datetime)) * 86400 AS INTEGER);