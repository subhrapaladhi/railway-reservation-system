 ---------------------------------- train table ---------------------------------
Insert into train values
 (
 20127, 'Ahmedabad Express', 'Delhi', 'Ahmedabad',
 to_timestamp('03:40', 'hh24:mi'),to_timestamp('4:45', 'hh24:mi'),
 to_dsinterval('001 01:05:00'), 950,
 classes('1A','2A','3A','Sl',null,null),
 dayslist('Mon','Wed','Thu','Fri','Sat',null,null),'FAST'
 );

Insert into train values
 (
 20456, 'Howrah Exp', 'Chennai', 'Howrah',
 to_timestamp('12:30', 'hh24:mi'),to_timestamp('10:00', 'hh24:mi'),
 to_dsinterval('000 21:30:00'), 1656,
 classes('2A','3A','Sl',NULL,null,null),
 dayslist('Mon','Tue','Wed','Sun',null,null,null),'Superfast'
 );
Insert into train values
 (
 20789, 'Kollam Express', 'Vellore', 'Kollam',
 to_timestamp('12:35', 'hh24:mi'),to_timestamp('01:45', 'hh24:mi'),
 to_dsinterval('000 13:10:00'), 676,
 classes('3A','Sl','Gen',null,null,NULL),
 dayslist('Mon','Tue','Fri','Sat','Sun',null,null),'Express'
 );
Insert into train values
 (
 21479, 'Mumbai Express', 'Delhi', 'Mumbai Central',
 to_timestamp('12:24', 'hh24:mi'),to_timestamp('04:56', 'hh24:mi'),
 to_dsinterval('000 16:32:00'), 1480,
 classes('1A','2A','3A','Sl','gen',NULL),
 dayslist('Mon','Tue','Wed','Thu','Fri','Sat','Sun'),'Fast'
 );
 Insert into train values
(
 22554, 'Pune Express', 'Delhi', 'Pune',
 to_timestamp('01:45', 'hh24:mi'),to_timestamp('18:00', 'hh24:mi'),
 to_dsinterval('000 15:15:00'), 1480,
 classes('1A','2A','3A','Sl','gen',NULL),
 dayslist('Mon','Tue','Wed','Thu','Fri',null,null),'SuperFast'
 );

 ------------------------------------ ticket table ---------------------------------

Insert into Ticket values
(
 3201478454, 9652012365, 'Delhi', 'Pune central', to_date('20-08-19', 'dd-mm-yy'), to_date('21-05-19', 'dd-mm-yy'),'2A', 1600, 22554
);

Insert into Ticket values
(
 4520227895, 7845632159, 'Chennai Egmore', 'Howrah', to_date('03-09-19', 'dd-mm-yy'), to_date('04-05-19', 'dd-mm-yy'), '3A', 1920, 20456
);
Insert into Ticket values
(
 7410203256, 452147896, 'Katpadi', 'Kollam', to_date('14-10-19', 'dd-mm-yy'), to_date('15-06-19', 'dd-mm-yy'),'2A', 650, 20789
);

Insert into Ticket values
(
 6547895230, 7741010236, 'Hazrat Nizamuddin', 'Mumbai Cantt', to_date('29-10-19', 'dd-mm-yy'), to_date('30-07-19', 'dd-mm-yy'), 'SL', 1740, 21479
);


 ------------------------------------ passenger table ---------------------------------

insert into Passenger values
( 3201478454, 05, 'Manit', 20, 'CNF');
insert into Passenger values
( 4520227895, 01, 'Malab', 23, 'CNF');
insert into Passenger values
( 7410203256, 02, 'Tarry', 41, 'Wait');
insert into Passenger values
( 6547895230, 04, 'Pirath', 14, 'Wait');

------------------------------------ train_route table ---------------------------------

insert into Train_Route values
(
 20127, 04123, 'EM', 'Hazrat Nizamuddin', to_timestamp('10:00', 'hh24:mi'),
to_timestamp('15:35', 'hh24:mi'),
 850, 'Wed'
);
insert into Train_Route values
(
 20456, 04562, 'BNC', 'Chennai Egmore', to_timestamp('12:45', 'hh24:mi'),
to_timestamp('09:45', 'hh24:mi'),
 1590, 'Tue'
);
insert into Train_Route values
(
 20789, 04756, 'KPD', 'Katpadi', to_timestamp('12:35', 'hh24:mi'), to_timestamp('01:40',
'hh24:mi'),
 650, 'Mon'
);
insert into Train_Route values
( 21479, 04985, 'BBC', 'Hazrat Nizamuddin', to_timestamp('12:40', 'hh24:mi'),
to_timestamp('14:30', 'hh24:mi'),
 1400, 'Tue'
);

------------------------------------ Train_Ticket_fare table ---------------------------------

insert into Train_Ticket_fare values
( 20127, '1A', 2500, 30, 100, 50, 20, 120);
insert into Train_Ticket_fare values
( 20456, '3A', 1800, 30, 10, 30, 00, 50);
insert into Train_Ticket_fare values
( 20789, '2A', 420, 30, null, 20, 20, 10);
insert into Train_Ticket_fare values
( 21479, 'Sl', 1520, 30, null, 30, 20, 110);

