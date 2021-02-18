-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/aXfzt9
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employee" (
    "Employee_No" Int   NOT NULL,
    "Title_ID" Int   NOT NULL,
    "Dept_No" varchar   NOT NULL,
    "Birthdate" varchar   NOT NULL,
    "First_name" varchar   NOT NULL,
    "Last_name" varchar   NOT NULL,
    "Gender" Int   NOT NULL,
    "Hire_Date" varchar   NOT NULL,
    "Salary" Int   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "Employee_No"
     )
);

CREATE TABLE "Positions" (
    "Title_ID" varchar   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Positions" PRIMARY KEY (
        "Title_ID"
     )
);

CREATE TABLE "Departments" (
    "Dept_No" varchar   NOT NULL,
    "Dept_Name" varchar   NOT NULL,
    "Manager" Int   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Gender" (
    "Gender_ID" Int   NOT NULL,
    "Gender" varchar   NOT NULL,
    CONSTRAINT "pk_Gender" PRIMARY KEY (
        "Gender_ID"
     )
);

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_Employee_No" FOREIGN KEY("Employee_No")
REFERENCES "Departments" ("Manager");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_Title_ID" FOREIGN KEY("Title_ID")
REFERENCES "Positions" ("Title_ID");

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Employee" ("Dept_No");

ALTER TABLE "Gender" ADD CONSTRAINT "fk_Gender_Gender_ID" FOREIGN KEY("Gender_ID")
REFERENCES "Employee" ("Gender");

