
CREATE TABLE Teacher (
    T_id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Salary DECIMAL(10, 2),
    Address VARCHAR(255)
);

CREATE TABLE Student (
    Roll INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255),
    Gender CHAR(1)
);


CREATE TABLE Admin (
    A_id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

CREATE TABLE Result (
    Result_id INT PRIMARY KEY,
    Result VARCHAR(50),
    Position INT,
    TotalMark INT
);

CREATE TABLE Show (
    Roll INT,
    Result_id INT,
    FOREIGN KEY (Roll) REFERENCES Student(Roll),
    FOREIGN KEY (Result_id) REFERENCES Result(Result_id),
    PRIMARY KEY (Roll, Result_id)
);

CREATE TABLE Make (
    T_id INT,
    Result_id INT,
    Made_date DATE,
    FOREIGN KEY (T_id) REFERENCES Teacher(T_id),
    FOREIGN KEY (Result_id) REFERENCES Result(Result_id),
    PRIMARY KEY (T_id, Result_id)
);

CREATE TABLE Message (
    M_id INT PRIMARY KEY,
    A_id INT,
    T_id INT,
    Roll INT,
    Content TEXT,
    Date DATE,
    FOREIGN KEY (A_id) REFERENCES Admin(A_id),
    FOREIGN KEY (T_id) REFERENCES Teacher(T_id),
    FOREIGN KEY (Roll) REFERENCES Student(Roll)
);


CREATE TABLE Library (
    L_id INT PRIMARY KEY,
    A_id INT,
    RoomNumber INT,
    Librarian VARCHAR(100),
    FOREIGN KEY (A_id) REFERENCES Admin(A_id)
);

CREATE TABLE Book (
    Book_id INT PRIMARY KEY,
    BookName VARCHAR(255)
);

CREATE TABLE Borrow (
    Roll INT,
    Book_id INT,
    B_date DATE,
    FOREIGN KEY (Roll) REFERENCES Student(Roll),
    FOREIGN KEY (Book_id) REFERENCES Book(Book_id),
    PRIMARY KEY (Roll, Book_id)
);

CREATE TABLE Exam (
    E_id INT PRIMARY KEY,
    Course_id INT,
    E_name VARCHAR(100),
    E_mark INT,
    E_time TIME,
    FOREIGN KEY (Course_id) REFERENCES Course(Course_id)
);

-- Creating table for Participate (linking Students with Exams)
CREATE TABLE Participate (
    Roll INT,
    E_id INT,
    P_date DATE,
    FOREIGN KEY (Roll) REFERENCES Student(Roll),
    FOREIGN KEY (E_id) REFERENCES Exam(E_id),
    PRIMARY KEY (Roll, E_id)
);


CREATE TABLE Course (
    Course_id INT PRIMARY KEY,
    C_Name VARCHAR(100)
);


CREATE TABLE Register (
    R_id INT PRIMARY KEY,
    R_date DATE,
    Roll INT,
    Course_id INT,
    FOREIGN KEY (Roll) REFERENCES Student(Roll),
    FOREIGN KEY (Course_id) REFERENCES Course(Course_id)
);

CREATE TABLE Subject (
    S_id INT PRIMARY KEY,
    Course_id INT,
    S_name VARCHAR(100),
    FOREIGN KEY (Course_id) REFERENCES Course(Course_id)
);

CREATE TABLE Attendance (
    Att_id INT PRIMARY KEY,
    T_id INT,
    Roll INT,
    Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (T_id) REFERENCES Teacher(T_id),
    FOREIGN KEY (Roll) REFERENCES Student(Roll)
);