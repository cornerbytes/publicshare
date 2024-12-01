    CREATE DATABASE itb;
    USE ITB;
    CREATE TABLE account (
        AccountID INT(11) NOT NULL AUTO_INCREMENT,
        Name VARCHAR(100) NOT NULL,
        DOB DATE,
        Email VARCHAR(100) NOT NULL,
        Phone VARCHAR(15) NOT NULL,
        Adhaar VARCHAR(20) NOT NULL,
        Address TEXT,
        AccountNumber VARCHAR(20) NOT NULL,
        IFSCCode VARCHAR(20) NOT NULL,
        HomeBranch VARCHAR(100),
        AccountType VARCHAR(50),
        CIBILScore INT(11),
        AccountStatus VARCHAR(20),
        NomineeName VARCHAR(100),
        NomineePhone VARCHAR(15),
        NomineeEmail VARCHAR(100),
        RelationshipManagerName VARCHAR(100),
        RelationshipManagerPhone VARCHAR(15),
        RelationshipManagerEmail VARCHAR(100),
        PRIMARY KEY (AccountID)
    );

    CREATE TABLE logininfo (
        Username VARCHAR(50) NOT NULL,
        Password VARCHAR(255) NOT NULL,
        Email VARCHAR(100) NOT NULL,
        Failed_Try INT(11) NOT NULL DEFAULT 0,
        PRIMARY KEY (Username)
    );

    CREATE TABLE support (
        full_name VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL,
        phone VARCHAR(15),
        category VARCHAR(50) NOT NULL,
        description TEXT,
        attachments VARCHAR(255),
        tkt_no VARCHAR(8),
        isActive TINYINT(1) DEFAULT 1,
        resolved_by VARCHAR(100),
        PRIMARY KEY (tkt_no)
    );

    CREATE TABLE ssidholder (
        ssid VARCHAR(225)
    );

    INSERT INTO account (
        Name, DOB, Email, Phone, Adhaar, Address, AccountNumber, IFSCCode, HomeBranch, AccountType, CIBILScore, AccountStatus, NomineeName, NomineePhone, NomineeEmail, RelationshipManagerName, RelationshipManagerPhone, RelationshipManagerEmail)
    VALUES(
        'Hritik', '2009-11-26', 'hritik@gmail.com', '+01 8220846751', '2222 3245 1493', 'Bhabua', '58294869992', 'ABCD1234567', 'Bhabua City', 'Savings', 750, 'Active', 'Jane Doe', '+11234567890', 'xyz@mail.com', 'John Doe', '+11234433247', 'RM@ITB.com'),('John Smith', '1985-03-15', 'john.smith@gmail.com', '+19876543210', '1234 5678 9012', 'New York', '1234567890', 'EFGH9876543', 'New York City', 'Checking', 800, 'Active', 'Alice Johnson', '+11234567890', 'alice@mail.com', 'David Wilson', '+11234433247', 'david@mail.com'), ('Sarah Davis', '1990-07-20', 'sarah.davis@gmail.com', '+18887776655', '5678 1234 9012', 'Los Angeles', '9876543210', 'IJKL5432109', 'Los Angeles City', 'Savings', 720, 'Active', 'Michael Brown', '+11234567890', 'michael@mail.com', 'Emily White', '+11234433247', 'emily@mail.com');
    

    INSERT INTO logininfo (Username, password, Email, failed_try)
    VALUES
    ('john_doe', 'hashed_password_johndoe', 'john.doe@example.com', 0),
    ('alice_smith', 'hashed_password_alicesmith', 'alice.smith@example.com', 0),
    ('bob_jones', 'hashed_password_bobjones', 'bob.jones@example.com', 0),
    ('emily_wilson', 'hashed_password_emilywilson', 'emily.wilson@example.com', 0),
    ('michael_brown', 'hashed_password_michaelbrown', 'michael.brown@example.com', 0),
    ('HRITIK', 'PASSWORD@HRITIK', 'hritik@mail.com', 0);

    INSERT INTO support (full_name, email, phone, category, description, tkt_no, isActive, resolved_by)
VALUES
    ('John Doe', 'johndoe@example.com', '1234567890', 'Technical Support', 'This is a technical issue.', 'ABCDE123', 1, NULL),
    ('Alice Smith', 'alicesmith@example.com', '9876543210', 'Account Issues', 'I have a problem with my account.', 'FGHIJ678', 1, NULL),
    ('Bob Jones', 'bobjones@example.com', '5555555555', 'Billing Inquiries', 'I need information about my bill.', 'KLMNO123', 1, NULL),
    ('Emily Wilson', 'emilywilson@example.com', '3333333333', 'Technical Support', 'I need technical assistance.', 'PQRSTU567', 1, NULL),
    ('Michael Brown', 'michaelbrown@example.com', '6666666666', 'Technical Support', 'I have a technical question.', 'VWXYZA789', 1, NULL),
    ('Hritik Patel', 'hritik@example.com', '1111111111', 'Account Issues', 'I am having problems with my account.', 'BCDEFG012', 1, NULL),
    ('John Smith', 'john@example.com', '2222222222', 'Technical Support', 'I need help with a technical issue.', 'HIJKLM345', 1, NULL);




