# Airport metadata

Useful metadata about airports.

## Dataset

CSV file: [nyc_airports.csv](../data/nyc_airports.csv)

Table name: `nyc_airports`

## Format

<dl>
  <dt>faa</dt>
  <dd><p>FAA airport code.</p></dd>
  <dt>name</dt>
  <dd><p>Usual name of the aiport.</p></dd>
  <dt>lat, lon</dt>
  <dd><p>Location of airport.</p></dd>
  <dt>alt</dt>
  <dd><p>Altitude, in feet.</p></dd>
  <dt>tz</dt>
  <dd><p>Timezone offset from GMT.</p></dd>
  <dt>dst</dt>
  <dd><p>Daylight savings time zone. A = Standard US DST: starts on the second Sunday of March, ends on the first Sunday of November. U = unknown. N = no dst.</p></dd>
  <dt>tzone</dt>
  <dd><p>IANA time zone, as determined by GeoNames webservice.</p></dd>
</dl>

## Source

https://openflights.org/data.html, downloaded 2014-06-27
