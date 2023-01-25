-- 3
select count(*) from green_taxi_trips_2019_01 where cast(lpep_pickup_datetime as date) = '2019-01-15' and cast(lpep_dropoff_datetime as date) = '2019-01-15';

-- 4
select cast(lpep_pickup_datetime as date) as "day", max(trip_distance) from green_taxi_trips_2019_01 where (cast(lpep_pickup_datetime as date) in ('2019-01-18', '2019-01-28', '2019-01-15', '2019-01-10')) group by "day";

-- 5
select count(*) from green_taxi_trips_2019_01 where cast(lpep_pickup_datetime as date) = '2019-01-01' and passenger_count = 2;
select count(*) from green_taxi_trips_2019_01 where cast(lpep_pickup_datetime as date) = '2019-01-01' and passenger_count = 3;

-- 6
select tzl.zone, max(tip_amount) from green_taxi_trips_2019_01 gt left join taxi_plus_zone_lookup tzl on gt."DOLocationID" = tzl.locationid where "PULocationID" = 7 group by tzl.zone order by max(tip_amount) desc;