# Hourly weather data

Hourly meterological data for LGA, JFK and EWR.

## Dataset

CSV file: [nyc_planes.csv](../data/nyc_planes.csv)

Table name: `nyc_planes`

## Format

<dl>
  <dt>origin</dt>
  <dd><p>Weather station. Named by airport code.</p></dd>
  <dt>year, month, day, hour</dt>
  <dd><p>Time of recording.</p></dd>
  <dt>temp, dewp</dt>
  <dd><p>Temperature and dewpoint in F.</p></dd>
  <dt>humid</dt>
  <dd><p>Relative humidity.</p></dd>
  <dt>wind_dir, wind_speed, wind_gust</dt>
  <dd><p>Wind direction (in degrees), speed
  and gust speed (in mph).</p></dd>
  <dt>precip</dt>
  <dd><p>Precipitation, in inches.</p></dd>
  <dt>pressure</dt>
  <dd><p>Sea level pressure in millibars.</p></dd>
  <dt>visib</dt>
  <dd><p>Visibility in miles.</p></dd>
  <dt>weather_key</dt>
  <dd><p>An artificial key consisting of origin and date for joining <code><a href="flights.md">flights</a></code> data.</p></dd>
</dl>

## Source

ASOS download from Iowa Environmental Mesonet, https://mesonet.agron.iastate.edu/request/download.phtml.
