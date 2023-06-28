create database if not exists TakeCare;
Use TakeCare;
Create table if not exists Contact_Type (
	Id_Contact_Type int not null auto_increment,
	Name_Contact varchar(100) not null unique,
    primary key (Id_Contact_Type)
    );
create table if not exists Contact (
	Id_Contact int not null auto_increment,
    Contact varchar(100) not null,
    Fk_Contact_Type int not null,
    primary key (Id_Contact),
    foreign key (FK_Contact_Type) references Contact_Type (Id_Contact_Type)
    );
    
create table if not exists Country (
	Id_Country int not null auto_increment,
    Country_Name varchar(50) not null unique,
    primary key (Id_Country)
);

create table if not exists State (
	Id_State int not null auto_increment,
    State_Name varchar(50) not null unique,
    primary key (Id_State),
    Fk_Country int not null,
	foreign key (FK_Country) references Country (Id_Country)
);
create table if not exists City (
	Id_City int not null auto_increment,
    City_Name varchar(100) not null,
    primary key (Id_City),
    Fk_State int not null,
	foreign key (FK_State) references State (Id_State)
);
create table if not exists Address (
	Id_Address int not null auto_increment,
    Zipcode varchar(10),
    Street_name varchar(300),
    neighborhood varchar (100),
    House_Number int,
    Complement varchar (100),
	primary key (Id_Address),
    Fk_City int not null,
	foreign key (FK_City) references City (Id_City)
);
create table if not exists Costumer (
	Id_Costumer int not null auto_increment,
    Costumer_name varchar(300) not null,
    Document_Number varchar (30) not null unique,
    Date_Birth date not null,
    primary key (Id_Costumer),
    Fk_Address int not null,
    FK_Contact int not null,
	foreign key (FK_Address) references Address (Id_Address),
    foreign key (FK_Contact) references Contact (Id_Contact)
);