CREATE TABLE `person` (
	`PersonID` INT(11) NOT NULL,
	`FirstName` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`LastName` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`PhoneNumber` INT(10) NULL DEFAULT NULL,
	`DOB` DATE NULL DEFAULT NULL,
	`Salary` DECIMAL(10,2) NULL DEFAULT NULL,
	`DepartmentID` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`PersonID`) USING BTREE,
	UNIQUE INDEX `PhoneNumber` (`PhoneNumber`) USING BTREE,
	INDEX `FK1 DepartmentID_Employees` (`DepartmentID`) USING BTREE,
	CONSTRAINT `FK1 DepartmentID_Employees` FOREIGN KEY (`DepartmentID`) REFERENCES `employees`.`departments` (`DepartmentID`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (1, 'John', 'Doe', 1234567890, '1990-01-01', 50000.00, 1);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (2, 'Jane', 'Doe', 1234567891, '1992-05-10', 55000.00, 2);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (3, 'Mike', 'Smith', 1234567892, '1985-11-15', 60000.00, 3);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (4, 'Mary', 'Johnson', 1234567893, '1988-03-20', 65000.00, 1);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (5, 'David', 'Jones', 1234567894, '1995-07-25', 70000.00, 2);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (6, 'Sarah', 'Davis', 1234567895, '1983-09-30', 75000.00, 3);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (7, 'Robert', 'Brown', 1234567896, '1979-02-05', 80000.00, 1);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (8, 'Lisa', 'Wilson', 1234567897, '1991-06-15', 85000.00, 2);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (9, 'Chris', 'Anderson', 1234567898, '1980-12-20', 90000.00, 3);

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (10, 'Emily', 'Taylor', 1234567899, '1994-04-25', 95000.00, 1);

SELECT *
FROM person;

UPDATE person
SET Salary = 60000.00
WHERE PersonID = 1;

INSERT INTO person (PersonID, FirstName, LastName, PhoneNumber, DOB, Salary, DepartmentID)
VALUES (11, 'Mark', 'Johnson', 1234567890, '1987-05-15', 55000.00, 2);

DELETE FROM person
WHERE PersonID = 2;

SELECT p.FirstName, p.LastName, d.DepartmentName
FROM person p
JOIN departments d ON p.DepartmentID = d.DepartmentID;

