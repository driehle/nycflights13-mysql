# Flights data

On-time data for all flights that departed NYC (i.e. JFK, LGA or EWR) in 2013.

## Dataset

CSV file: [nyc_flights.csv](../data/nyc_flights.csv)

Table name: `nyc_flights`

## Format

<dl>
  <dt>year, month, day</dt>
  <dd><p>Date of departure.</p></dd>
  <dt>dep_time, arr_time</dt>
  <dd><p>Actual departure and arrival times (format HHMM or HMM), local tz.</p></dd>
  <dt>sched_dep_time, sched_arr_time</dt>
  <dd><p>Scheduled departure and arrival times (format HHMM or HMM), local tz.</p></dd>
  <dt>dep_delay, arr_delay</dt>
  <dd><p>Departure and arrival delays, in minutes. Negative times represent early departures/arrivals.</p></dd>
  <dt>carrier</dt>
  <dd><p>Two letter carrier abbreviation. See <code><a href="airlines.md">airlines</a></code> to get name.</p></dd>
  <dt>flight</dt>
  <dd><p>Flight number.</p></dd>
  <dt>tailnum</dt>
  <dd><p>Plane tail number. See <code><a href="planes.html">planes</a></code> for additional metadata.</p></dd>
  <dt>origin, dest</dt>
  <dd><p>Origin and destination. See <code><a href="airports.md">airports</a></code> for additional metadata.</p></dd>
  <dt>air_time</dt>
  <dd><p>Amount of time spent in the air, in minutes.</p></dd>
  <dt>distance</dt>
  <dd><p>Distance between airports, in miles.</p></dd>
  <dt>hour, minute</dt>
  <dd><p>Time of scheduled departure broken into hour and minutes.</p></dd>
  <dt>weather_key</dt>
  <dd><p>An artificial key containing origin and date for joining <code><a href="weather.md">weather</a></code> data.</p></dd>
</dl>

## Source

RITA, Bureau of transportation statistics, https://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236
