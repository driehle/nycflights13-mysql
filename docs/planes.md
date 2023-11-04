# Plane metadata

Plane metadata for all plane tailnumbers found in the FAA aircraft registry. American Airways (AA) and Envoy Air (MQ) report fleet numbers rather than tail numbers so can't be matched.

## Dataset

CSV file: [nyc_planes.csv](../data/nyc_planes.csv)

Table name: `nyc_planes`

## Format

<dl>
  <dt>tailnum</dt>
  <dd><p>Tail number.</p></dd>
  <dt>year</dt>
  <dd><p>Year manufactured.</p></dd>
  <dt>type</dt>
  <dd><p>Type of plane.</p></dd>
  <dt>manufacturer, model</dt>
  <dd><p>Manufacturer and model.</p></dd>
  <dt>engines, seats</dt>
  <dd><p>Number of engines and seats.</p></dd>
  <dt>speed</dt>
  <dd><p>Average cruising speed in mph.</p></dd>
  <dt>engine</dt>
  <dd><p>Type of engine.</p></dd>
</dl>

## Source

FAA Aircraft registry, https://www.faa.gov/licenses_certificates/aircraft_certification/aircraft_registry/releasable_aircraft_download/
