/*  Create new table with more readable field names, and new fields for future data  */
CREATE TABLE IF NOT EXISTS Cyclistic_Data (
    Ride_ID INTEGER PRIMARY KEY,
    Bike_Type TEXT,
    Member_Type TEXT,
    Start_Station_Name TEXT,
    End_Station_Name TEXT,
    Start_Station_ID INTEGER,
    End_Station_ID INTEGER,
    Start_Latitude REAL,
    Start_Longitude REAL,
    End_Latitude REAL,
    End_Longitude REAL,
    Season TEXT,   /* New field  */
    Day_Of_Week TEXT,   /* New field  */
    Started_Datetime TEXT,
    Ended_Datetime TEXT,
    Ride_Length INTEGER,   /* New field  */
    Ride_Length_In_Seconds INTEGER   /* New field  */
);