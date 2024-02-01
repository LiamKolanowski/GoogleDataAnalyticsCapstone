/*  Create a new table called "cyclistic_data 
    containing more readable field names 
    as well as new fields for future data,
    and populate this new table with data from the old table, "combined_table" */
CREATE TABLE IF NOT EXISTS cyclistic_data AS
SELECT
    ride_id AS Ride_ID,
   CASE
        WHEN rideable_type = 'electric_bike' THEN 'Electric'
        WHEN rideable_type = 'classic_bike' THEN 'Classic'
        WHEN rideable_type = 'docked_bike' THEN 'Docked'
    END AS Bike_Type,
    CASE
        WHEN member_casual = 'casual' THEN 'Casual'
        WHEN member_casual = 'member' THEN 'Annual'
    END AS Member_Type,
    start_station_name AS Start_Station_Name,
    end_station_name AS End_Station_Name,
    start_station_id AS Start_Station_ID,
    end_station_id AS End_Station_ID,
    start_lat AS Start_Latitude,
    start_lng AS Start_Longitude,
    end_lat AS End_Latitude,
    end_lng AS End_Longitude,
    'SeasonPlaceholder' AS Season,  /*  Replace later with logic  */
    'DayOfWeekPlaceholder' AS Day_Of_Week,  /*  Replace later with logic  */
    started_at AS Started_Datetime,
    ended_at AS Ended_Datetime,
    NULL AS Ride_Length,  /*  Replace later with logic  */
    NULL AS Ride_Length_In_Seconds   /*  Replace later with logic  */
FROM combined_table;