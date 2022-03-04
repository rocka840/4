CREATE TABLE Users(
   UserNo INT unique not null AUTO_INCREMENT,
   Name VARCHAR(50) NOT NULL,
   FirstName VARCHAR(50) NOT NULL,
   Technician VARCHAR(1) NOT NULL,
   Email VARCHAR(50) NOT NULL ,
   Passwd VARCHAR(50) NOT NULL,
   HostName VARCHAR(16) NOT NULL,
   PRIMARY KEY(UserNo),
)

insert into users(Name, FirstName, Technician, Email, Passwd, HostName)
values ('Rochefort', 'Katherine', 'O', 'rocka840@school.lu', '123', 'hostname');