# nycflights13 for MySQL/MariaDB

## Overview

The `nycflights13` dataset is a well-known dataset for beginners tutorials in data analysis. It is, for example, available on [Kaggle](https://www.kaggle.com/datasets/aephidayatuloh/nyc-flights-2013), as a [R package](https://github.com/tidyverse/nycflights13) and as a [Python package](https://pypi.org/project/nycflights13/).

This repository provides the data ready to be imported in a MySQL or MariaDB database.

## Usage

First, you will need a database and the credentials required to access it. Edit `my.cnf` to your needs by entering all required information. Hint: You can first copy `my.cnf` to `.my.cnf`, if you want to prevent Git from tracking the file.

Next, ensure you have the package `mysql-client` installed on your Linux machine. The tools `mysql` and `mysqlimport` will be used.

Finally, run `./run.sh` to import the dataset into the desired database. Take note that existing tables of the same name will be deleted without further confirmation.

## Documentation

The following data is this dataset:

- [Airline names](docs/airlines.md)
- [Airport metadata](docs/airports.md)
- [Flights data](docs/flights.md)
- [Plane metadata](docs/planes.md)
- [Hourly weather data](docs/weather.md)
