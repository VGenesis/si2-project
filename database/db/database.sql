CREATE TABLE IF NOT EXISTS Users(
    id INT PRIMARY KEY,
    fullname VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Projects(
    id INT PRIMARY KEY,
    manager_id INT,
    name VARCHAR(100),
    description TEXT,

    FOREIGN KEY(manager_id) REFERENCES Users(id)
);

CREATE TABLE IF NOT EXISTS WorkPackets(
    id INT PRIMARY KEY,
    project_id INT,
    name VARCHAR(80),
    description VARCHAR(300),

    FOREIGN KEY(project_id) REFERENCES Projects(id)
);

CREATE TABLE IF NOT EXISTS Tasks(
    id INT PRIMARY KEY,
    packet_id INT,
    name VARCHAR(80),
    description VARCHAR(300),
     
    FOREIGN KEY(packet_id) REFERENCES WorkPackets(id)
);

CREATE TABLE IF NOT EXISTS Activities(
    id INT PRIMARY KEY,
    task_id INT,
    description VARCHAR(100),
     
    FOREIGN KEY(task_id) REFERENCES Tasks(id)
);

CREATE TABLE IF NOT EXISTS UserCredentials(
    id INT PRIMARY KEY,
    user_id INT,
    email VARCHAR(80),
    password VARCHAR(256),

    FOREIGN KEY(user_id) REFERENCES Users(id)
);

CREATE TABLE IF NOT EXISTS Assignments(
    id INT PRIMARY KEY,
    task_id INT,
    employee_id INT,

    FOREIGN KEY(task_id) REFERENCES Tasks(id),
    FOREIGN KEY(employee_id) REFERENCES Employees(id)
);

CREATE TABLE IF NOT EXISTS Employees(
    id INT PRIMARY KEY,
    fullname VARCHAR(50)
);

