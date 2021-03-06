INSERT INTO FLIGHT(FLIGHT_ID, TRANSPORTER_ID, DEPARTURETIME, ARRIVETIME, AIRPORTDEP, AIRPORTARR, INTERNATIONAL_CODE)
SELECT FLOOR(dbms_random.value(0,9999)), COM.TRANSPORTER_ID FID, 
TO_DATE(concat ('12.11.2017 ', concat(FLOOR(dep_time_min.nextval/60),
concat(':', concat(MOD(dep_time_min.currval, 60), ':00')))), 'DD.MM.YYYY HH24:MI:SS'),
TO_DATE(concat ('12.11.2017 ', concat(5 + FLOOR(dep_time_min.nextval/60),
concat(':', concat(MOD(dep_time_min.currval, 60), ':00')))), 'DD.MM.YYYY HH24:MI:SS'),
AIR_FROM.AIRPORT_ID AIRFID, AIR_TO.AIRPORT_ID AIRTO, concat(dep_time_min.currval, 'FL')
FROM TRANSPORTER COM, AIRPORT AIR_FROM, AIRPORT AIR_TO
WHERE AIR_FROM.CITY_ID <> AIR_TO.CITY_ID