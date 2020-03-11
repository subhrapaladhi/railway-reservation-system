create table train
 (
 train_number number(5) primary key,
 name varchar(25),
 source varchar(20),
 destination varchar(20),
 start_time timestamp(0),
 reach_time timestamp(0),
 traveltime interval day to second(0),
 distance number(5),
 class classes,
 days_of_run dayslist,
 type varchar(10)
 );
desc train


create table ticket(
pnr_no number(10) primary key,
transaction_id number(15),
from_station varchar(18),
to_station varchar(19),
date_of_journey date,
date_of_booking date,
class varchar2(10),
total_ticket_fare number(6,2),
train_number number(5),
foreign key(train_number) references train(train_number)
);
desc ticket;


create table passenger(
pnr_no number(10) not null,
serial_no number(10) not null,
p_name varchar2(20),
age number(3),
reservation_status varchar2(10),
primary key(pnr_no,serial_no),
foreign key(pnr_no) references ticket(pnr_no)
);
desc passenger


create table train_route
 (
 train_no number(5) not null,
 route_no number(5) not null,
 station_code varchar2(4),
 route_name varchar2(20),
 arrival_time timestamp(0),
 depart_time timestamp(0),
 distance number(5),
 day varchar2(10),
 primary key(train_no, route_no),
 foreign key(train_no) references train(train_number)
 );
desc train_route;


create table train_ticket_fare
(
 train_number number(5) not null,
 class varchar(6) not null,
 base_fare number(6,2),
 reservation_charge number(6,2),
 superfast_charge number(6,2),
 other_charge number(6,2),
 tatkal_charge number(6,2),
 service_tax number(6,2),
 primary key(train_number, class),
 foreign key(train_number) references train(train_number)
);
desc train_ticket_fare;
