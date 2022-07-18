drop database banking;
create database banking;
use banking;
create table Branch(branchname varchar(30), branchcity varchar(30),assets real, primary key(branchname));
create table Bankaccount(accno integer, branchname varchar(30),balance real, primary key(accno), foreign key(branchname) references Branch(branchname));
create table BankCustomer(Customername varchar(30), CustomerStreet varchar(30),CustomerCity varchar(30), primary key(Customername));
create table Depositer(Customername varchar(30),accno integer, primary key(Customername,accno),foreign key(Customername) references BankCustomer(Customername), foreign key(accno) references BankAccount(accno));
create table Loan(loannumber integer, branchname varchar(30),amount real, primary key(loannumber), foreign key(branchname) references Branch(branchname));
desc Branch;
desc Bankaccount;
desc BankCustomer;
desc Depositer;
desc Loan;
insert into Branch values ('SBI_Chamrajpet', 'Bangalore', 50000);
insert into Branch values ('SBI_ResidencyRoad', 'Bangalore', 10000);
insert into Branch values ('SBI_Shivagiroad', 'Bangalore', 20000);
insert into Branch values ('SBI_ParliamentRoad', 'Delhi', 10000);
insert into Branch values ('SBI_JantarMantar', 'Delhi', 20000);
select * from Branch;
commit;

insert into Bankacccount values (0001, 'SBI_Chamrajpet', 10000);
insert into Bankacccount values (0002, 'SBI_ResidencyRoad', 10000);
insert into Bankacccoun
t values (0003, 'SBI_Shivagiroad', 10000);

insert into Bankacccount values (0004, 'SBI_ParliamentRoad', 10000);
insert into Bankacccount values (0005, 'SBI_JantarMantar', 10000);
select * from Bankaccount;
commit;

insert into BankCustomer values ('Richard', 'Chamrajpet', 'Bangalore');
insert into BankCustomer values ('Pradeep', 'ResidencyRoad', 'Bangalore');
insert into BankCustomer values ('Smith', 'Shivagiroad', 'Bangalore');
insert into BankCustomer values ('Venu', 'ParliamentRoad', 'Delhi');
insert into BankCustomer values ('John', 'JantarMantar', 'Delhi');
select * from BankCustomer;
commit;

insert into Depositer values ('Richard', 0001);
insert into Depositer values ('Pradeep', 0002);
insert into Depositer values ('Smith', 0003);
insert into Depositer values ('Venu', 0004);
insert into Depositer values ('John', 0005);
select * from Depositer;
commit;

insert into Loan values(1,'SBI_Chamrajpet',1000);
insert into Loan values(2,'SBI_ResidencyRoad',2000);
insert into Loan values(3,'SBI_Shivagiroad',3000);
insert into Loan values(4,'SBI_ParliamentRoad',4000);
insert into Loan values(5,'SBI_JantarMantar',5000);
select * from Loan;
commit;