create table Home(
	cust_id		integer not null,
	policy_id 	integer not null,
	street 		varchar(64) not null,
	zip 		integer not null,
	city		varchar(65) not null,
	state		varchar(65) not null,
	primary key (street, zip, city, state),
	foreign key (cust_id) references customer,
	foreign key (policy_id) references policy
	);

create table Customer(
	cust_id		integer not null primary key,
	first_name	varchar(64) not null,
        last_name	varchar(64) not null,
        credit_score	integer not null
	);

create table Incident(
	report_ID	integer not null primary key,
	street		varchar(64) not null,
	zip		integer not null,
	city		varchar(65) not null,
	state		varchar(65) not null,
	date		varchar(65) not null,
	foreign key (street, zip, city, state) references home
	);

create table Policy(
	policy_ID	integer not null primary key
	);

create table Payment(
	payment_no		integer not null,
	policy_ID		integer not null,
	due_date		varchar(10) not null,
	time_of_coverage	integer not null,
	date_of_payment		varchar(10) not null,
	amount			integer not null,
	primary key (payment_no, policy_ID),
	foreign key (policy_ID) references policy
	);