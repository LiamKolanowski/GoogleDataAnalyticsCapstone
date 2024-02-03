/*  Improve readability by replacing nulls with 'Unknown' in various columns.  */
UPDATE cyclistic_data
SET
    Bike_Type = COALESCE(Bike_Type, 'Unknown'),
    Member_Type = COALESCE(Member_Type, 'Unknown'),
    Start_Station_Name = COALESCE(Start_Station_Name, 'Unknown'),
    End_Station_Name = COALESCE(End_Station_Name, 'Unknown'),
    Start_Station_ID = COALESCE(Start_Station_ID, 'Unknown'),
    End_Station_ID = COALESCE(End_Station_ID, 'Unknown'),
    Start_Latitude = COALESCE(Start_Latitude, 'Unknown'),
    Start_Longitude = COALESCE(Start_Longitude, 'Unknown'),
    End_Latitude = COALESCE(End_Latitude, 'Unknown'),
    End_Longitude = COALESCE(End_Longitude, 'Unknown'),
    Season = COALESCE(Season, 'Unknown'),
    Day_Of_Week = COALESCE(Day_Of_Week, 'Unknown'),
    Started_Datetime = COALESCE(Started_Datetime, 'Unknown'),
    Ended_Datetime = COALESCE(Ended_Datetime, 'Unknown'),
    Ride_Length = COALESCE(Ride_Length, 'Unknown'),
    Ride_Length_In_Seconds = COALESCE(Ride_Length_In_Seconds, 'Unknown');