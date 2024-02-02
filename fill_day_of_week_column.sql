/*  Fill Day_Of_Week column with an identifying string  */
UPDATE cyclistic_dat
SET Day_Of_Week = 
    CASE 
        WHEN strftime('%w', Started_Datetime) = '0' THEN 'Sunday'
        WHEN strftime('%w', Started_Datetime) = '1' THEN 'Monday'
        WHEN strftime('%w', Started_Datetime) = '2' THEN 'Tuesday'
        WHEN strftime('%w', Started_Datetime) = '3' THEN 'Wednesday'
        WHEN strftime('%w', Started_Datetime) = '4' THEN 'Thursday'
        WHEN strftime('%w', Started_Datetime) = '5' THEN 'Friday'
        WHEN strftime('%w', Started_Datetime) = '6' THEN 'Saturday'
    END;