CREATE DATABASE if NOT EXISTS Insurance;

use Insurance;


create table if not exists Institution (
    InstitutionID char(16),
    InstitutionName varchar(255) not null,
    ContactNumber char(14) not null,
    ContactEmail varchar(100) NOT NULL,
    Location varchar(255) not null,
    PRIMARY KEY (InstitutionID)
);

create table if not exists Doctor (
    DoctorID char(16),
    FullName varchar(255) not null,
    PhoneNumber1 char(14) not null,
    PhoneNumber2 char(14) default null,
    Email varchar(100) not null,
    Profession varchar(255) not null,
    Experience VARCHAR(255) DEFAULT null,
    PRIMARY KEY (DoctorID)
);

create table if not exists Insurance (
    InsuranceID char(10),
    InsuranceName varchar(255) not null,
    InsurancePlansIDs varchar(4096),
    ContactNumber char(14) not null,
    ContactEmail varchar(100) not null,
    PRIMARY KEY (InsuranceID)
);

CREATE TABLE if NOT EXISTS Patient (
    AMKA char(11),
    IDNumber char(9) not null unique,
    FullName varchar(255) not null,
    BirthDay date not null,
    Address varchar(255) not null,
    PhoneNumber1 char(14) not null,
    PhoneNumber2 char(14) default null,
    Email varchar(100) not null,
    InsuranceID char(10) not null,
    InsurancePlanID char(21) default null,
    PersonalDoctorID char(16) not null,
    InsuredBy char(11) not null,
    PRIMARY KEY (AMKA),
    FOREIGN KEY (InsuranceID) REFERENCES Insurance(InsuranceID),
    FOREIGN KEY (PersonalDoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (InsuredBy) REFERENCES Patient(AMKA)
);

create table if not exists Medication (
    MedicationID char(16),
    MedicationName varchar(100) not null,
    Information VARCHAR(255) DEFAULT null,
    Covered bool default 1 not null,
    PRIMARY KEY (MedicationID)
);

create table if not exists Prescription (
    PrescriptionID char(255),
    Issued timestamp not null default NOW(),
    Until timestamp not null,
    PrescriptionInstitutionID char(16) not null,
    PrescriptionDoctorID char(16) not null,
    MedicineID char(16) not null,
    DoctorsNotes VARCHAR(255) default null,
    Renewable bool not null default 0,
    RenewableTimes tinyint unsigned default 0,
    PatientID char(11) not null,
    PRIMARY KEY (PrescriptionID),
    FOREIGN KEY (PrescriptionInstitutionID) REFERENCES Institution(InstitutionID),
    FOREIGN KEY (PrescriptionDoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (MedicineID) REFERENCES Medication(MedicationID),
    FOREIGN KEY (PatientID) REFERENCES Patient(AMKA)
);

create table if not exists Visit (
    VisitID char(32),
    PatientAMKA char(11) not null,
    DoctorID char(16) not null, 
    VisitType varchar(100) not null,
    Diagnosis VARCHAR(255) default null,
    FollowUp VARCHAR(255) default null,
    Vitals VARCHAR(255) DEFAULT null,
    Timestamp timestamp default NOW(),
    PRIMARY KEY (VisitID),
    FOREIGN KEY (PatientAMKA) REFERENCES Patient(AMKA),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

create table if not exists Record (
    RecordID char(32),
    PatientID char(11) not null,
    PreviousDoctor char(16) default null,
    CurrentDoctor char(16) not null,
    RecordTime timestamp not null default NOW(),
    PRIMARY KEY (RecordID),
    FOREIGN KEY (PatientID) REFERENCES Patient(AMKA),
    FOREIGN KEY (PreviousDoctor) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (CurrentDoctor) REFERENCES Doctor(DoctorID)
);