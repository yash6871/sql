create database bms_db1;
use bms_db1;
create table customer_personal_info(
customer_id varchar(5),
customer_name varchar(30),
date_of_birth date,
guardian_name varchar(50),
address varchar(50),
contact_no bigint(10),
mail_id varchar(30),
gender char(1),
marital_status varchar(10),
identification_doc_type varchar(20),
id_doc_no varchar(10),
citizenship varchar(10),
constraint cust_pers_info_pk primary key(customer_id)
);


  -- customer_refrence_info
  create table customer_refrence_info(
  customer_id varchar(5),
  refrence_acc_name varchar(20),
  refrence_acc_no bigint(16),
  refrence_acc_address varchar(50),
  relation varchar(25),
  constraint cust_ref_info_pk primary key(customer_id),
  constraint cust_ref_info_pk foreign key(customer_id) references customer_personal_info(customer_id)
  );
  
  -- bank info
  
  create table bank_info(
  ifsc_code varchar(15),
  bank_name varchar(25),
  branch_name varchar(25),
  constraint bank_info_pk primary key(ifsc_code)
  );
  show tables;
  
  -- account info
  
  create table account_info(
  account_no bigint(16),
  customer_id varchar(5),
  account_type varchar(10),
  registration_date date,
  activation_date date,
  ifsc_code varchar(15),
  interest decimal(7,2),
  initial_deposite bigint(10),
  constraint acc_info_pk primary key(account_no),
  constraint acc_info_pers_fk foreign key(customer_id) references customer_personal_info (customer_id),
  constraint acc_info_bank_fk foreign key(ifsc_code) references bank_info (ifsc_code)
  );
  
  insert into bank_info (ifsc_code,bank_name,branch_name) values
  ('HDVL0012','HDFC','VALASARAVAKKAM'),
  ('SBITN0123','SBI','TNAGAR'),
  ('ICITN0232','ICICI','TNAGAR'),
  ('ICIPG0242','ICICI','PERUNGUDI'),
  ('SBISD0113','SBI','SAIDAPET');
  

  insert into customer_personal_info (
  customer_id, customer_name, date_of_birth, guardian_name, address,
  contact_no, mail_id, gender, marital_status, identification_doc_type,
  id_doc_no, citizenship
) values
('C001', 'Arun Kumar', '1990-05-20', 'Ravi Kumar', '12 Gandhi St, Chennai', 9876543210, 'arun.kumar@example.com', 'M', 'Single', 'Aadhar', 'AD12345678', 'Indian'),
('C002', 'Meera Sharma', '1985-08-15', 'Suresh Sharma', '45 MG Road, Mumbai', 9876501234, 'meera.sharma@example.com', 'F', 'Married', 'PAN', 'PN87654321', 'Indian'),
('C003', 'John Dsouza', '1992-03-10', 'Paul Dsouza', '78 Church St, Goa', 9988776655, 'john.dsouza@example.com', 'M', 'Single', 'Passport', 'PA12398765', 'Indian'),
('C004', 'Sneha Iyer', '1995-12-01', 'Lakshmi Iyer', '102 Lake View, Bangalore', 9123456780, 'sneha.iyer@example.com', 'F', 'Single', 'Aadhar', 'AD98765432', 'Indian'),
('C005', 'Rahul Verma', '1988-07-07', 'Anil Verma', '55 Park Lane, Delhi', 9090909090, 'rahul.verma@example.com', 'M', 'Married', 'VoterID', 'VT65432109', 'Indian');
select*from customer_personal_info;