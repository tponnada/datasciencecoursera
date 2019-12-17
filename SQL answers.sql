#The destination in the flights database that is the furthest distance away, based on information in the flights table
select distinct origin, dest, distance from flights where distance in (select max(distance) FROM flights);
#The different distinct number of engines in the planes table is given below in ascending order
select distinct engines from planes order by engines;
#For each engine group, the aircraft having the most seats as identified by manufacturer and model. Here I'm assuming that the aircraft is identified by manufacturer and model.
select distinct manufacturer, model, seats, engines from planes where seats in (select max(seats) from planes group by engines) order by engines;
#An alternate way to answer the aircraft with the most seats question is given below which simply gives the result of max seats within each engine category
select engines, max(seats) from planes group by engines;
#To see the total number of flights
SELECT count(*) FROM FLIGHTS;
#The total number of flights by carrier
select carrier, count(*) from flights group by carrier;
#Show all of the airlines, ordered by number of flights in descending order
select carrier, count(*) as tempvar from flights group by carrier order by tempvar desc;
#Show only the top 5 airlines from query above
select carrier, count(*) as tempvar from flights group by carrier order by tempvar desc limit 5;
#Another variation of query above where we are filtering on flights of distance 1,000 miles or greater using where clause
select carrier, count(*) as tempvar from flights where distance >=1000 group by carrier order by tempvar desc limit 5;
#Find all the flights grouped by carrier in the year 2013
select distinct carrier, count(*) from FLIGHTS where year = 2013 group by carrier;
