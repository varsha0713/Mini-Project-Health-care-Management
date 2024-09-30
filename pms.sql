USE pms;
CREATE TABLE registered_patients (
    Patient_ID varchar(240), 
    Email varchar(240) primary key, 
    Name varchar(240), 
    Date_of_Birth varchar(40), 
    Blood_Group varchar(12), 
    Phone varchar(14), 
    Password varchar(40), 
    Profile_URL varchar(30), 
    Address varchar(240), 
    City varchar(240), 
    State varchar(240), 
    Pin_Code varchar(240), 
    Country varchar(240)
);

INSERT INTO registered_patients (Patient_ID, Email, Name, Date_of_Birth, Blood_Group, Password, Profile_URL, Address, City, State, Pin_Code, Country)
VALUES ("P100", "abc@gmail.com", "Shashank", "2023-11-19", "0+", "12345", NULL, NULL, "Mangalore", "Karnataka", NULL, "India");


CREATE TABLE registered_doctors(
Doctor_ID varchar(30),
 Email varchar(240) PRIMARY KEY,
  Name varchar(240),
   Phone varchar(12), 
   Gender varchar(7), 
   Password varchar(240), 
   Qualification varchar(240),
    Specialization varchar(240), 
    Profile_URL varchar(30), 
    Clinic_Name varchar(240), 
    Clinic_Address varchar(240), 
    About_Clinic text, 
    Address_Line1 text, 
    Address_Line2 text, 
    City varchar(240), 
    State varchar(240),
    Registration_Number varchar(240), 
    Year varchar(10), 
    Fee int 
);

INSERT INTO registered_doctors(Doctor_ID, Email,Name,Phone,Gender, Password,
Qualification,Specialization,Profile_URL,Clinic_Name,Clinic_Address,
About_Clinic,Address_Line1,Address_Line2,City,State,Registration_Number,Year,Fee)
VALUES("D100","nihar@gmail.com","nihar","123856497",NULL,"12345",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,"karnataka","a123b","2024","350"
      );


     CREATE TABLE registered_admins (
     Admin_ID VARCHAR(30), 
     Email VARCHAR(255) NOT NULL, 
     Name VARCHAR(255) NOT NULL, 
     Phone VARCHAR(20) NOT NULL, 
     Password VARCHAR(255) NOT NULL, 
     Profile_URL VARCHAR(255), 
     Qualification VARCHAR(255), 
     Job_Profile VARCHAR(255), 
     Address VARCHAR(255), 
     City VARCHAR(255), 
     State VARCHAR(255), 
     Pin_Code VARCHAR(10),
     Country VARCHAR(255)
     );



INSERT INTO registered_admins (Admin_ID, Email, Name, phone, Password, Profile_URL, Qualification, Job_Profile,Address,City,State,Pin_Code,Country) 
VALUES("manoj123", "manoj@gmail.com", 'manoj', "01234567890","12345", "CEONIKHIL04.png", "MCA", "Data Scientist","manglore","manglore","karnataka","574229","india");

CREATE TABLE  appointments (
     Patient_ID varchar(25), 
     Doctor_ID varchar(25), 
     Appointment_Date DATE, 
     Appointment_Time TIME, 
     Insurance VARCHAR(10), 
     Reason text, 
     Symptoms VARCHAR(255), 
     Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP );


CREATE TABLE patient_records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID varchar(240),
    bp VARCHAR(50),
    sugar VARCHAR(50),
    bmi VARCHAR(50),
    report_pdf BLOB
);

