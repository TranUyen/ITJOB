create database itjobs CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
use itjobs;
create table companies (
	id int auto_increment primary key,
    name nvarchar(100),
    address nvarchar(100),
    phone varchar(10),
    email varchar(100)
);
drop table posts;
create table posts (
	id int auto_increment primary key,
    time nvarchar(50),
    position nvarchar(100),
    no_member int(5),
    benefit text,
    JD text,
    id_contact int,
    id_companies int,
    id_requirement int,
    deadline nvarchar(10),
	province nvarchar(50),
    district nvarchar(50),
    FOREIGN KEY (id_companies) REFERENCES companies(id),
    foreign key (id_requirement) references requirement(id),
    foreign key (id_contact) references contact(id)
    
);
create table requirement (
	id int auto_increment primary key,
    technology_skill text,
    experience nvarchar(50),
    degree text
);

create table contact (
	id int auto_increment primary key,
    name nvarchar(100),
    phone varchar(10),
    email varchar(100)
);

create table candidates(
	id int auto_increment primary key,
    name nvarchar(100),
    phone varchar(10),
    email varchar(100),
    password varchar(50),
    sex int(1),
    id_profiles int unique,
    FOREIGN KEY (id_profiles) REFERENCES profiles(id)
);


create table profiles (
	id int auto_increment primary key,
    birthday nvarchar(10),
    degree text,
    experience_years nvarchar(50),
    salary varchar(20),
    technology_skill text,
    project text,
    type_work nvarchar(50)
);

drop table posts_profiles;
create table posts_profiles(
	id_post int,
    id_profile int,
    time nvarchar(50),
    primary key (id_post, id_profile),
    FOREIGN KEY (id_profile) REFERENCES profiles(id),
    FOREIGN KEY (id_post) REFERENCES posts(id)
    
);
alter table companies add column password varchar(50);



