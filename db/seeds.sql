USE employeelist_db;
-- ACCOUNTING --
 -- Account Manager --
-- Rachelle Burrow --
 -- Bookkeeper --
 -- Serenity Akins--
 -- Controller --
 -- Derrion Walker --

-- HUMAN RESOURCES --
-- Director --
-- Lisa Bell --
-- Specialist --
-- Catherine Ross --
-- CUSTOMER SERVICE --
-- Customer Service Manager --
-- Amy Russell --
-- Customer Service Rep --
-- Kelly Smith --


-- FINANCE--
-- Finance Manager --
-- Jim Bean --
-- Accounts Payable Clerk --
-- Missy Sexton -- 
-- Credit/collections Clerk --
-- John Weatherington --


INSERT INTO department (name) 
  VALUES
  ('Accounting'),-- 1 --
  ('Human Resources'),-- 2 --
  ('Customer Service'),-- 3 --
  ('Finance');-- 4 --

INSERT INTO role (title, salary, department_id) 
  VALUES
  ('Account Manager',65000,1), 
  ('Bookkeeper',55000,1), 
  ('Controller',60000,1),
  ('Director',62000,2), 
  ('Specialist',50000,2), 
  ('Customer Service Manager',60000,3), 
  ('Customer Service Rep',45000,3), 
  ('Finance Manager',70000,4), 
  ('Accounts Payable Clerk',63000,4), 
  ('Credit/collections Clerk',68000,4);

  INSERT INTO department (name) 
  VALUES
  ('Accounting'),
  ('Human Resources'),
  ('Customer Service'),
  ('Finance');

  INSERT INTO employee (first_name, last_name, role_id, Manager_id)
  VALUES 
  ('Rachelle', 'Burrow',1, NULL),
  ('Serenity', 'Akins', 2, 1),
  ('Derrion', 'Walker', 3, 1),
  ('Lisa', 'Bell', 4, 1),
  ('Catherine', 'Ross', 5, 1),
  ('Amy', 'Russell', 6, NULL),
  ('Kelly', 'Smith',7, 6),
  ('Jim', 'Bean', 8, NULL),
  ('Missy', 'Sexton', 9, 8),
  ('John', 'Weatherington', 10, 8);