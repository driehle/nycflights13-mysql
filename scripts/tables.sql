DROP TABLE `nyc_airlines`;

DROP TABLE `nyc_airports`;

DROP TABLE `nyc_flights`;

DROP TABLE `nyc_planes`;

DROP TABLE `nyc_weather`;

CREATE TABLE `nyc_airlines` (
   `carrier` VARCHAR(2) NOT NULL,
   `name`    VARCHAR(255) NOT NULL
) engine = innodb;

CREATE TABLE `nyc_airports` (
   `faa`   VARCHAR(3) NOT NULL,
   `name`  VARCHAR(255) NOT NULL,
   `lat`   DOUBLE NOT NULL,
   `lon`   DOUBLE NOT NULL,
   `alt`   INT NOT NULL,
   `tz`    INT NOT NULL,
   `dst`   VARCHAR(1) NOT NULL,
   `tzone` VARCHAR(255) NOT NULL
) engine = innodb;

CREATE TABLE `nyc_flights` (
   `year`           INT NOT NULL,
   `month`          INT NOT NULL,
   `day`            INT NOT NULL,
   `dep_time`       VARCHAR(255) NULL,
   `sched_dep_time` INT NOT NULL,
   `dep_delay`      INT NOT NULL,
   `arr_time`       VARCHAR(255) NULL,
   `sched_arr_time` INT NOT NULL,
   `arr_delay`      VARCHAR(255) NULL,
   `carrier`        VARCHAR(2) NOT NULL,
   `flight`         INT NOT NULL,
   `tailnum`        VARCHAR(6) NOT NULL,
   `origin`         VARCHAR(3) NOT NULL,
   `dest`           VARCHAR(3) NOT NULL,
   `air_time`       INT NOT NULL,
   `distance`       INT NOT NULL,
   `hour`           INT NOT NULL,
   `minute`         INT NOT NULL,
   `time_hour`      VARCHAR(20) NOT NULL,
   `weather_key`    VARCHAR(255) NULL
) engine = innodb;

CREATE TABLE `nyc_planes` (
   `tailnum`      VARCHAR(6) NOT NULL,
   `year`         VARCHAR(255) NULL,
   `type`         VARCHAR(255) NOT NULL,
   `manufacturer` VARCHAR(255) NOT NULL,
   `model`        VARCHAR(255) NOT NULL,
   `engines`      INT NOT NULL,
   `seats`        INT NOT NULL,
   `speed`        VARCHAR(255) NULL,
   `engine`       VARCHAR(255) NOT NULL
) engine = innodb;

CREATE TABLE `nyc_weather` (
   `weather_key` VARCHAR(255) NULL,
   `origin`      VARCHAR(3) NOT NULL,
   `year`        INT NOT NULL,
   `month`       INT NOT NULL,
   `day`         INT NOT NULL,
   `hour`        INT NOT NULL,
   `temp`        FLOAT NOT NULL,
   `dewp`        FLOAT NOT NULL,
   `humid`       FLOAT NOT NULL,
   `wind_dir`    INT NOT NULL,
   `wind_speed`  FLOAT NOT NULL,
   `wind_gust`   VARCHAR(255) NULL,
   `precip`      FLOAT NULL,
   `pressure`    VARCHAR(255) NULL,
   `visib`       INT NOT NULL,
   `time_hour`   VARCHAR(20) NOT NULL
) engine = innodb;  