/*  Create a new table with the same structure as table "202212-divvy-tripdata"  */
CREATE TABLE IF NOT EXISTS combined_table AS SELECT * FROM "202212-divvy-tripdata" WHERE 0;

/*  Insert data into the new table  */
INSERT INTO combined_table SELECT * FROM "202212-divvy-tripdata"; /*  One month of bike trip data  */
INSERT INTO combined_table SELECT * FROM "202301-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202302-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202303-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202304-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202305-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202306-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202307-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202308-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202309-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202310-divvy-tripdata";
INSERT INTO combined_table SELECT * FROM "202311-divvy-tripdata";

/*  Delete individual tables from local database  */
DROP TABLE "202212-divvy-tripdata";
DROP TABLE "202301-divvy-tripdata";
DROP TABLE "202302-divvy-tripdata";
DROP TABLE "202303-divvy-tripdata";
DROP TABLE "202304-divvy-tripdata";
DROP TABLE "202305-divvy-tripdata";
DROP TABLE "202306-divvy-tripdata";
DROP TABLE "202307-divvy-tripdata";
DROP TABLE "202308-divvy-tripdata";
DROP TABLE "202309-divvy-tripdata";
DROP TABLE "202310-divvy-tripdata";
DROP TABLE "202311-divvy-tripdata";