/*  Fill Season column with an identifying string  */
UPDATE cyclistic_dat
SET Season = 
    CASE 
        WHEN strftime('%m', Started_Datetime) IN ('12', '01', '02') THEN 'Winter'
        WHEN strftime('%m', Started_Datetime) IN ('03', '04', '05') THEN 'Spring'
        WHEN strftime('%m', Started_Datetime) IN ('06', '07', '08') THEN 'Summer'
        WHEN strftime('%m', Started_Datetime) IN ('09', '10', '11') THEN 'Fall'
    END;