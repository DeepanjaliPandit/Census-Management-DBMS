create table citizen (

    aadhar_no varchar(12),
    name varchar(50) NOT NULL,
    date_of_birth date NOT NULL,
    age integer NOT NULL,
    gender varchar(15) NOT NULL,
    phone_no varchar(15),
    disability varchar(30),
    family_id varchar(20),
    dependent_on varchar(12), 

    PRIMARY KEY (aadhar_no),
    FOREIGN KEY (dependent_on) REFERENCES citizen(aadhar_no) on delete SET NULL
);

create table family ( 

    family_id varchar(20),
    head_of_family varchar(12),
    language varchar(30),
    building_no varchar(70) NOT NULL,
    city varchar(25) NOT NULL,
    state varchar(25) NOT NULL,
    pincode varchar(6) NOT NULL,

    PRIMARY KEY (family_id),
    FOREIGN KEY (head_of_family) REFERENCES citizen(aadhar_no)
);

ALTER TABLE citizen ADD CONSTRAINT FOREIGN KEY (family_id) REFERENCES family (family_id);

create table amenities (

    name varchar(50) NOT NULL,
    type varchar(50) NOT NULL,
    open_time time default NULL,
    close_time time default NULL,

    building_no varchar(50) NOT NULL,
    city varchar(25) NOT NULL,
    state varchar(25) NOT NULL,
    pincode varchar(6) NOT NULL,

    PRIMARY KEY (building_no, city, state, pincode)
);

create table can_access(

    family_id varchar(10),
    building_no varchar(50) NOT NULL,
    city varchar(25) NOT NULL,
    state varchar(25) NOT NULL,
    pincode varchar(6) NOT NULL,

    PRIMARY KEY (family_id, building_no, pincode, city, state),
    FOREIGN KEY (family_id) REFERENCES family(family_id) ON DELETE CASCADE,
    FOREIGN KEY (building_no, pincode, city, state) REFERENCES amenities(building_no, pincode, city, state)  ON DELETE CASCADE
);

create table employer(
    name varchar(30),
    address varchar(100),
    jobs_offered varchar(30)[] NOT NULL,
    contacts varchar(15)[],
    industry varchar(30)[],
    
    PRIMARY KEY (name)
);

create table employee(

    email_id varchar(50),
    username varchar(50),
    sector varchar(20),
    salary int CHECK (salary > 0),
    role varchar(20),
    aadhar_no varchar(12),
    company_name varchar(30),
    join_date date DEFAULT CURRENT_DATE,
    
    PRIMARY KEY (email_id, username),
    FOREIGN KEY (aadhar_no) references citizen (aadhar_no) ON DELETE CASCADE,
    FOREIGN KEY (company_name) references employer (name) ON DELETE CASCADE
);

create table education(

    aadhar_no varchar(12),
    qualification varchar(50) NOT NULL,
    enrolled boolean default 'f',
    year_of_completion int,
    state varchar(25),
    name_of_institute varchar(50),

    PRIMARY KEY (aadhar_no, qualification),
    FOREIGN KEY (aadhar_no) references citizen(aadhar_no) ON DELETE CASCADE
);


create table assets(

    reg_no varchar(10),
    asset_holder varchar(12),
    year_of_purchase int,
    value decimal(12,2) check (value > 0.00),
    type varchar(30),
    description varchar(100),

    PRIMARY KEY (reg_no, asset_holder),
    FOREIGN KEY (asset_holder) REFERENCES citizen (aadhar_no) ON DELETE CASCADE
);

create table death(
    Certificate_no varchar(8) NOT NULL , 
    aadhar_no varchar(12), 
    cause varchar(20), 
    date date, 
    time time, 
    PRIMARY KEY(certificate_no),
    FOREIGN KEY( aadhar_no) references citizen(aadhar_no)
);

