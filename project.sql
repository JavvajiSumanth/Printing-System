
/* DDL */

Create table department (
	department_id varchar(20),
	department_name varchar(100),
	dep_hod varchar(100),
	primary key(department_id)
);

create table phones (
	id varchar(30),
	user_id varchar(30) NULL,
	phone varchar(30),
	primary key(id)
);

Create table Staff (
	staff_id varchar(20),
	department_id varchar(20),
	email varchar(50),
	salary int,
	username varchar(80) unique,
	pincode varchar(20),
	house_no varchar(20),
	primary key(staff_id),
	foreign key(pincode) references pincodes(pincode)
);


Create table Clerk (
	clerk_id varchar(20),
	email varchar(50),
	salary int,
	username varchar(80) unique,
	pincode varchar(20),
	house_no varchar(20),
	printouts varchar(50),
	primary key(clerk_id),
	foreign key(pincode) references pincodes(pincode)
);


Create table Delivary_boy (
	db_id varchar(20),
	email varchar(50),
	salary int,
	username varchar(80) unique,
	pincode varchar(20),
	house_no varchar(20),
	deliveries varchar(50),
	primary key(db_id),
	foreign key(pincode) references pincodes(pincode)
);


create table user1(
	username varchar(80),
	firstname varchar(40),
	lastname varchar(40),
	primary key(username)
);

Create table Pincodes (
	pincode varchar(30),
	city varchar(30),
	state varchar(30),
	primary key(pincode)
);

Create table files(
	id int,
	file_id varchar(30),
	file1 varchar(50),
	number_of_files varchar(30),
	primary key(id)
);

Create table Print_req (
	print_id varchar(30),
	user_id varchar(30),
	file_id varchar(30),
	file_type varchar(20),
	color varchar(20),
	paper_used varchar(20),
	description varchar(20),
	date1 date,
	primary key(print_id),
	foreign key(user_id) references Staff(staff_id)
);


Create table Printout (
	print_id varchar(30),
	print_status varchar(30),
	files varchar(100),
	cost int default 0,
	primary key(print_id),
	foreign key(print_id) references Print_req(print_id)
);

create table Validates (
	print_id varchar(30),
	clerk_id varchar(30),
	db_id varchar(30),
	primary key(print_id),
	foreign key(print_id)  references Print_req(print_id),
	foreign key(clerk_id) references Clerk(clerk_id),
	foreign key(db_id) references Delivary_boy(db_id)
);

/* END of  DDL */

/* Inserting Data */

Insert into pincodes ('690546', 'Amritapuri', 'Kerala');
Insert into pincodes ("pincode", "city", "state") values ('500003', 'Hyderebad', 'Telengana');
Insert into pincodes ("pincode", "city", "state") values('502355', 'Vijayawada', 'Andhra Pradesh');
Insert into pincodes ("pincode", "city", "state") values('601021', 'Kollam', 'Kerala');
Insert into pincodes ("pincode", "city", "state") values('690586', 'vallikau', 'Kerala');
Insert into pincodes ("pincode", "city", "state") values('690518', 'karunapally', 'Kerala');
Insert into pincodes ("pincode", "city", "state") values('690526', 'ochira', 'Kerala');
Insert into pincodes ("pincode", "city", "state") values('691546', 'Kayankulam', 'Kerala');
Insert into pincodes ("pincode", "city", "state") values('690146', 'Cochin', 'Kerala');
Insert into pincodes ("pincode", "city", "state") values('590546', 'Thrivendrum', 'Kerala');

select * from pincodes;

insert into Department("department_id", "department_name", "dep_hod") values ('dept1', 'CSE', 'Jayraj');
insert into Department("department_id", "department_name", "dep_hod") values ('dept2', 'ECE', 'Sreeraj');
insert into Department("department_id", "department_name", "dep_hod") values ('dept3', 'EEE', 'Sriram');
insert into Department("department_id", "department_name", "dep_hod") values ('dept4', 'Mech', 'Hari');
insert into Department("department_id", "department_name", "dep_hod") values ('dep5', 'Civils', 'Sairam');

select * from department;

insert into staff("staff_id", "department_id", "email", "salary", "username", "pincode", "house_no") values ('st1', 'dep1', 'peter@gmail.com', 55000, 'Peter John', '690586', '2-2-2');
insert into staff("staff_id", "department_id", "email", "salary", "username", "pincode", "house_no") values ('st2', 'dep2', 'john@gmail.com', 50000, 'John ahmed', '502355', '21-2-2');
insert into staff("staff_id", "department_id", "email", "salary", "username", "pincode", "house_no") values ('st3', 'dep2', 'rama@gmail.com', 45000, 'Rama Krishna', '601021', '2-21-2');
insert into staff("staff_id", "department_id", "email", "salary", "username", "pincode", "house_no") values ('st4', 'dep3', 'tony@gmail.com', 50000, 'Tony Thomas', '690586', '2-2-21');
insert into staff("staff_id", "department_id", "email", "salary", "username", "pincode", "house_no") values ('st5', 'dep4', 'robert@gmail.com', 40000, 'Robert Gray', '690526', '2-12-2');

select * from Staff;

insert into clerk("clerk_id", "email", "salary", "username", "pincode", "house_no", "printouts") values ('cl1', 'steve@gmail.com', 10000, 'steve clinton', '590546', '2-12-12', '2');
insert into clerk("clerk_id", "email", "salary", "username", "pincode", "house_no", "printouts") values ('cl2', 'krishnan@gmail.com', 10000, 'krishnan p', '690146', '12-12-12', '3');
insert into clerk("clerk_id", "email", "salary", "username", "pincode", "house_no", "printouts") values ('cl3', 'krishnan1@gmail.com', 10000, 'vishnu', '601021', '121-12-12', '0');

select * from clerk;

insert into delivary_boy("db_id", "email", "salary", "username", "pincode", "house_no", "deliveries") values ('del1', 'rahul@gmail.com', 5000, 'rahul k', '691546', '21-12-12', '2');
insert into delivary_boy("db_id", "email", "salary", "username", "pincode", "house_no", "deliveries") values ('del2', 'shahil@gmail.com', 5000, 'shahil s', '690146', '12-21-12', '1');
insert into delivary_boy("db_id", "email", "salary", "username", "pincode", "house_no", "deliveries") values ('del3', 'shiva@gmail.com', 5000, 'shiva t', '690526', '12-121-12', '3');
insert into delivary_boy("db_id", "email", "salary", "username", "pincode", "house_no", "deliveries") values ('del4', 'shivakrishna@gmail.com', 5000, 'shiva krishna', '601021', '112-121-12', '0');


select * from delivary_boy;

insert into user1 ("username", "firstname", "lastname") values ('Peter John', 'Peter', 'John');
insert into user1 ("username", "firstname", "lastname") values ('John ahmed', 'John', 'ahmed');
insert into user1 ("username", "firstname", "lastname") values ('Rama Krishna', 'Rama', 'Krishna');
insert into user1 ("username", "firstname", "lastname") values ('Tony Thomas', 'Tony', 'Thomas');
insert into user1 ("username", "firstname", "lastname") values ('Robert Gray', 'Robert', 'Gray');
insert into user1 ("username", "firstname", "lastname") values ('steve clinton', 'steve', 'clinton');
insert into user1 ("username", "firstname", "lastname") values ('krishnan p', 'krishnan', 'p');
insert into user1 ("username", "firstname", "lastname") values ('rahul k', 'rahul', 'k');
insert into user1 ("username", "firstname", "lastname") values ('shahil s', 'shahil', 's');
insert into user1 ("username", "firstname", "lastname") values ('shiva t', 'shiva', 't');
insert into user1("username", "firstname", "lastname") values ('shiva krishna', 'shiva', 'krishna');

select * from user1;

insert into phones("id", "user_id", "phone") values ('1', 'st1', '1234567890');
insert into phones("id", "user_id", "phone") values ('2', 'st1', '9874563210');
insert into phones("id", "user_id", "phone") values ('3', 'st2', '9632587410');
insert into phones("id", "user_id", "phone") values ('4', 'st3', '1023456789');
insert into phones("id", "user_id", "phone") values ('5', 'st3', '7563214890');
insert into phones("id", "user_id", "phone") values ('6', 'st4', '1597648305');
insert into phones("id", "user_id", "phone") values ('7', 'st5', '7755663322');
insert into phones("id", "user_id", "phone") values ('8', 'cl1', '1332200556');
insert into phones("id", "user_id", "phone") values ('9', 'cl2', '4234567890');
insert into phones("id", "user_id", "phone") values ('10', 'cl2', '1234567890');
insert into phones("id", "user_id", "phone") values ('11', 'db1', '7234567890');
insert into phones("id", "user_id", "phone") values ('12', 'db1', '9234567890');
insert into phones("id", "user_id", "phone") values ('13', 'db2', '9834567890');
insert into phones("id", "user_id", "phone") values ('14', 'db3', '1234567891');

select * from phones;

insert into files("id", "file_id", "file1", "number_of_files") values (1, 'f1', 'file 1', '5');
insert into files("id","file_id", "file1", "number_of_files") values (2, 'f1', 'file 2', '10');
insert into files("id","file_id", "file1", "number_of_files") values (3, 'f2', 'file 3', '1');
insert into files("id","file_id", "file1", "number_of_files") values (4, 'f3', 'file 4', '8');
insert into files("id","file_id", "file1", "number_of_files") values (5, 'f4', 'file 5', '4');
insert into files("id","file_id", "file1", "number_of_files") values (6, 'f5', 'file 6', '2');
insert into files("id","file_id", "file1", "number_of_files") values (7, 'f6', 'file 7', '3');


select * from files;

insert into print_req("print_id", "user_id", "file_id", "file_type", "color", "paper_used", "description") values ('p1', 'st1', 'f1', 'Single side', 'pink', 'A4', 'question papers');
insert into print_req("print_id", "user_id", "file_id", "file_type", "color", "paper_used", "description") values ('p2', 'st2', 'f2', 'Double side', 'Blue', 'A3', 'personel printout');
insert into print_req("print_id", "user_id", "file_id", "file_type", "color", "paper_used", "description") values ('p3', 'st3', 'f3', 'Single side', 'pink', 'A3', 'question paper');
insert into print_req("print_id", "user_id", "file_id", "file_type", "color", "paper_used", "description") values ('p4', 'st4', 'f4', 'Double side', 'Black', 'A4', 'question paper');
insert into print_req("print_id", "user_id", "file_id", "file_type", "color", "paper_used", "description") values ('p5', 'st4', 'f5', 'Single side', 'pink', 'A3', 'answer paper');
insert into print_req("print_id", "user_id", "file_id", "file_type", "color", "paper_used", "description") values ('p6', 'st5', 'f6', 'Single side', 'Black', 'A3', 'question papers');

select * from Print_req;

insert into validates("print_id", "clerk_id", "db_id") values ('p1', 'cl1', 'del1');
insert into validates("print_id", "clerk_id", "db_id") values ('p2', 'cl2', 'del1');
insert into validates("print_id", "clerk_id", "db_id") values ('p3', 'cl2', 'del2');
insert into validates("print_id", "clerk_id", "db_id") values ('p4', 'cl1', 'del3');
insert into validates("print_id", "clerk_id", "db_id") values ('p5', 'cl2', 'del3');

select * from validates;

insert into printout("print_id", "print_status", "files", "cost") values ('p1', 'yes', 'files1', 200);
insert into printout("print_id", "print_status", "files", "cost") values ('p2', 'yes', 'files2', 100);
insert into printout("print_id", "print_status", "files", "cost") values ('p3', 'no', '', 0);
insert into printout("print_id", "print_status", "files", "cost") values ('p4', 'yes', 'files3', 50);
insert into printout("print_id", "print_status", "files", "cost") values ('p5', 'yes', 'files4', 80);
insert into printout("print_id", "print_status", "files", "cost") values ('p6', 'yes', 'files5', 120);

select * from printout;

/* End of inserting data */

/* begin of example queries */

/* group by and having */
select department_id, count(staff_id) as dep_staff from staff group by department_id having count(staff_id) > 0;
select print_req.user_id, sum(cost) from printout inner join print_req on printout.print_id = print_req.print_id group by user_id;
/*end */

/* using order by */
select * from staff order by salary desc; 
select * from print_req order by date1;
/* end of using order by */

/* using joins */
select staff.staff_id, staff.username, print_req.print_id from staff inner join print_req on staff.staff_id = print_req.user_id;
select clerk.username, validates.print_id from Clerk full outer join validates on clerk.clerk_id = validates.clerk_id;
select clerk.username, validates.print_id from Clerk left outer join validates on clerk.clerk_id = validates.clerk_id;
/* end of joins */

/* using boolean */
select * from staff where salary > 45000 and pincode = '502355';
select * from staff where salary > 45000 or pincode = '690526';
/* end of using boolen */

/* using arthimatic operations */
select username, (salary + salary/100) from staff;
/* end of arthematic oeprators */

/* search query */
select * from user1 where firstname like '%a%';
select * from delivary_boy where username like 'sh%';
select * from delivary_boy where username like '%sh';
/* end of search query */

/* use of sub query */
select firstname, lastname from user1 where username = (select username from staff where salary=55000);
select firstname, lastname from user1 where username in (select username from clerk);
/* end of  subquery */

/* subquery with exists */
select * from clerk where exists ( select * from validates where clerk.clerk_id = validates.clerk_id);
select * from clerk where not exists ( select * from validates where clerk.clerk_id = validates.clerk_id);

select * from delivary_boy where db_id = any (select db_id from validates);
select * from delivary_boy where db_id = all (select db_id from validates);
/* end of subquery with exists */

/* set operations */
select username from staff union select username from clerk union select username from delivary_boy;
select db_id from delivary_boy INTERSECT select db_id from validates;
/* end of st operations*/

/* between IN, Not between Not in */
select * from staff where salary between 40000 and 50000;
select * from delivary_boy where db_id in ('del1', 'del3');

select * from staff where salary not between 40000 and 50000;
select * from delivary_boy where db_id not in ('del1', 'del3');

/* end of such oeprators */

/* to_char and extract */
select username, to_char(salary, 'FM9999999999') as salary from staff;
select print_id, extract(month from date1) as date_of_request from print_req;
select print_id, extract(year from date1) as date_of_request from print_req;
select print_id, extract(day from date1) as date_of_request from print_req;
/* end */

/* end of sql queries */









