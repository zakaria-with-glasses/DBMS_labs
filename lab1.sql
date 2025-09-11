-- We first need to create the demanded databases:
CREATE TABLE IF NOT EXISTS Students ( 
  student_id INT auto_increment primary key, 
  first_name VARCHAR(50) NOT NULL, 
  last_name VARCHAR(50) NOT NULL, 
  age int NOT NULL,
  city VARCHAR(50) NOT NULL
  ); 

CREATE TABLE IF NOT EXISTS Courses( 
  course_id INT auto_increment primary key ,
  course_name varchar(50) NOT NULL, 
  credits INT -- not sure if this is for the course description or whatever ;)
  ); 

CREATE TABLE IF NOT EXISTS Instructors( 
  instructor_id int primary key auto_increment,
  first_name varchar(50) not null, 
  last_name varchar(50) not null, 
  departement varchar(50) not null 
  );

-- for the enrollement table i will add the foreign keys

CREATE TABLE IF NOT EXISTS enrollments(
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  -- this is the syntax for a foreign key initialization:
  -- foreign key current_column references table(reference_column);
  FOREIGN KEY student_id REFERENCES Students(student_id);
  FOREIGN KEY course_id REFERENCES Courses(course_id);
);

-- now we are finished with the creation the queries will be put in detail in the lab1.md 
