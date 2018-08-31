create table Studenti(
Studenti_id uniqueidentifier primary key,
Emri varchar(255) not null,
Mbiemri varchar(255) not null,
CreatedBy int,
CreatedDate datetime, 
ModifiedBy int,
ModifiedDate datetime
)

create table KerkesaPerTemeTeDiplomes(
KTD_id int identity(1,1) primary key,
Studenti uniqueidentifier foreign key references Studenti(Studenti_id) not null,
ArsyejaPerMarrjenETemes varchar(max) not null,
BurimetEMaterialeve varchar(max) not null,
PershkrimShtese varchar(max) null,
PlanifikimiPerfundimit date not null,
AprovimiMentori bit not null,
AprovimiFakultetit bit not null,
AprovimiDekanit bit not null,
EshteGrup bit not null,
Data datetime not null,
CreatedBy uniqueidentifier foreign key references Studenti(Studenti_id) not null,
CreatedDate datetime,
)

create table KerkesaPerGrup(
KPG_id int identity(1,1) primary key,
Studenti uniqueidentifier foreign key references Studenti(Studenti_id) not null,
KerkesaPerTemeDiplome int foreign key references KerkesaPerTemeTeDiplomes(KTD_id) not null,
CreatedBy uniqueidentifier foreign key references Studenti(Studenti_id) not null,
CreatedDate datetime,
)

create table Mentori(
Mentori_id int identity(1,1) primary key,
emri varchar(255) not null,
CreatedBy int,
CreatedDate datetime, 
ModifiedBy int,
ModifiedDate datetime
)

create table MentorCoMentor(
MCM_id int identity(1,1) primary key,
Mentori int foreign key references Mentori(Mentori_id) not null,
CoMentor int foreign key references Mentori(Mentori_id) null,
KerkesaPerTemeDiplome int foreign key references KerkesaPerTemeTeDiplomes(KTD_id) not null,
CreatedBy int,
CreatedDate datetime, 
ModifiedBy int,
ModifiedDate datetime
)

create table ProcesVerbal(
ProcesVerbal_id int identity(1,1) primary key,
KerkesaPerTemeDiplome int foreign key references KerkesaPerTemeTeDiplomes(KTD_id) not null,
Data datetime not null,
CreatedBy int,
CreatedDate datetime, 
ModifiedBy int,
ModifiedDate datetime,
)

create table Detyra(
Detyra_ID int identity(1,1) primary key,
ProcesVerbali int foreign key references ProcesVerbal(ProcesVerbal_id) not null,
Detyra varchar(max) not null,
PershkrimiDetyres varchar(max) not null,
PershkrimShtese varchar(max) not null,
Perfunduar bit not null,
CreatedBy int foreign key references Mentori(Mentori_id) not null,
CreatedDate datetime, 
ModifiedBy int foreign key references Mentori(Mentori_id) not null,
ModifiedDate datetime
)

create table TemaDiplomes(
TemaDiplomes_ID int identity(1,1) primary key,
KTD int foreign key references KerkesaPerTemeTeDiplomes(KTD_ID) not null,

)
