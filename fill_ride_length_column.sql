/* Update the Ride_Length column with formatted ride durations:
   - For durations less than 24 hours, display in "hh:mm:ss" format
   - For durations of 24 hours or more, display in "d days, hh:mm:ss" format */
UPDATE cyclistic_data
SET Ride_Length = 
    CASE
        WHEN Ride_Length_In_Seconds < 86400 THEN
            strftime('%H:%M:%S', Ride_Length_In_Seconds, 'unixepoch')
        ELSE
            ltrim(strftime('%j days, %H:%M:%S', Ride_Length_In_Seconds, 'unixepoch'), '0') 
    END;