UPDATE `nyc_flights` SET `dep_time` = NULL WHERE `dep_time` = "NA";

UPDATE `nyc_flights` SET `arr_time` = NULL WHERE `arr_time` = "NA";

UPDATE `nyc_flights` SET `arr_delay` = NULL WHERE `arr_delay` = "NA";

UPDATE `nyc_flights` SET `air_time` = NULL WHERE `air_time` = "NA";

UPDATE `nyc_flights` SET `weather_key` = CONCAT(`origin`, "_", `time_hour`);

ALTER TABLE `nyc_flights` 
  MODIFY `dep_time` INT NULL,
  MODIFY `arr_time` INT NULL,
  MODIFY `arr_delay` INT NULL,
  MODIFY `air_time` INT NULL,
  DROP `time_hour`;

UPDATE `nyc_planes`
  SET `year` = NULL
  WHERE `year` = "NA";

UPDATE `nyc_planes`
  SET `speed` = NULL
  WHERE `speed` = "NA";


ALTER TABLE `nyc_planes` 
  MODIFY `year` INT NULL,
  MODIFY `speed` INT NULL;

UPDATE `nyc_weather` SET `wind_gust` = NULL WHERE `wind_gust` = "NA";

UPDATE `nyc_weather` SET `pressure` = NULL WHERE `pressure` = "NA";

UPDATE `nyc_weather` SET `weather_key` = CONCAT(`origin`, "_", `time_hour`);

ALTER TABLE `nyc_weather` 
  MODIFY `wind_gust` DOUBLE NULL,
  MODIFY `pressure` FLOAT NULL,
  DROP `time_hour`;

ALTER TABLE `nyc_airlines` ADD PRIMARY KEY (`carrier`);

ALTER TABLE `nyc_airports` ADD PRIMARY KEY (`faa`);

ALTER TABLE `nyc_planes` ADD PRIMARY KEY (`tailnum`);

ALTER TABLE `nyc_weather` ADD PRIMARY KEY (`weather_key`);