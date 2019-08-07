CREATE TABLE orders_status (
  id tinyint(4) NOT NULL,
  status_name varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE orders (
  id int(11) NOT NULL AUTO_INCREMENT,
  employee_id int(11) DEFAULT NULL,
  customer_id int(11) DEFAULT NULL,
  order_date datetime DEFAULT NULL,
  ship_city varchar(50) DEFAULT NULL,
  shipping_fee decimal(19, 4) DEFAULT 0.0000,
  payment_type varchar(50) DEFAULT NULL,
  notes longtext DEFAULT NULL,
  status_id tinyint(4) DEFAULT 0,
  PRIMARY KEY (id)
);

CREATE TABLE employees (
  id int(11) NOT NULL AUTO_INCREMENT,
  last_name varchar(50) DEFAULT NULL,
  first_name varchar(50) DEFAULT NULL,
  email_address varchar(50) DEFAULT NULL,
  job_title varchar(50) DEFAULT NULL,
  business_phone varchar(25) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE customers (
  id int(11) NOT NULL AUTO_INCREMENT,
  company varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  first_name varchar(50) DEFAULT NULL,
  business_phone varchar(25) DEFAULT NULL,
  address longtext DEFAULT NULL,
  city varchar(50) DEFAULT NULL,
  state_province varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO orders_status VALUES
(0, 'New'),
(1, 'Invoiced'),
(2, 'Shipped'),
(3, 'Closed');

INSERT INTO orders VALUES
(30, 9, 27, '2006-01-15 00:00:00', 'Las Vegas', 200.0000, 'Check', NULL, 3),
(31, 3, 4, '2006-01-20 00:00:00', 'New York', 5.0000, 'Credit Card', NULL, 3),
(32, 4, 12, '2006-01-22 00:00:00', 'Las Vegas', 5.0000, 'Credit Card', NULL, 3),
(33, 6, 8, '2006-01-30 00:00:00', 'Portland', 50.0000, 'Credit Card', NULL, 3),
(34, 9, 4, '2006-02-06 00:00:00', 'New York', 4.0000, 'Check', NULL, 3),
(35, 3, 29, '2006-02-10 00:00:00', 'Denver', 7.0000, 'Check', NULL, 3),
(36, 4, 3, '2006-02-23 00:00:00', 'Los Angelas', 7.0000, 'Cash', 'ASAP!', 3),
(37, 8, 6, '2006-03-06 00:00:00', 'Milwaukee', 12.0000, 'Credit Card', NULL, 3),
(38, 9, 28, '2006-03-10 00:00:00', 'Memphis', 10.0000, 'Check', NULL, 3),
(39, 3, 8, '2006-03-22 00:00:00', 'Portland', 5.0000, 'Check', NULL, 3),
(40, 4, 10, '2006-03-24 00:00:00', 'Chicago', 9.0000, 'Credit Card', NULL, 3),
(41, 1, 7, '2006-03-24 00:00:00', 'Boise', 0.0000, NULL, NULL, 0),
(42, 1, 10, '2006-03-24 00:00:00', 'Chicago', 0.0000, NULL, NULL, 2),
(43, 1, 11, '2006-03-24 00:00:00', 'Miami', 0.0000, NULL, NULL, 0),
(44, 1, 1, '2006-03-24 00:00:00', 'Seattle', 0.0000, NULL, NULL, 0),
(45, 1, 28, '2006-04-07 00:00:00', 'Memphis', 40.0000, 'Credit Card', NULL, 3),
(46, 7, 9, '2006-04-05 00:00:00', 'Salt Lake City', 100.0000, 'Check', NULL, 3),
(47, 6, 6, '2006-04-08 00:00:00', 'Milwaukee', 300.0000, 'Credit Card', NULL, 3),
(48, 4, 8, '2006-04-05 00:00:00', 'Portland', 50.0000, 'Check', NULL, 3),
(50, 9, 25, '2006-04-05 00:00:00', 'Chicago', 5.0000, 'Cash', 'ASAP!', 3),
(51, 9, 26, '2006-04-05 00:00:00', 'Miami', 60.0000, 'Credit Card', NULL, 3),
(55, 1, 29, '2006-04-05 00:00:00', 'Denver', 200.0000, 'Check', NULL, 3),
(56, 2, 6, '2006-04-03 00:00:00', 'Milwaukee', 0.0000, 'Check', NULL, 3),
(57, 9, 27, '2006-04-22 00:00:00', 'Las Vegas', 200.0000, 'Check', NULL, 0),
(58, 3, 4, '2006-04-22 00:00:00', 'New York', 5.0000, 'Credit Card', NULL, 3),
(59, 4, 12, '2006-04-22 00:00:00', 'Las Vegas', 5.0000, 'Credit Card', NULL, 0),
(60, 6, 8, '2006-04-30 00:00:00', 'Portland', 50.0000, 'Credit Card', NULL, 3),
(61, 9, 4, '2006-04-07 00:00:00', 'New York', 4.0000, 'Check', NULL, 0),
(62, 3, 29, '2006-04-12 00:00:00', 'Denver', 7.0000, 'Check', NULL, 0),
(63, 4, 3, '2006-04-25 00:00:00', 'Los Angelas', 7.0000, 'Cash', NULL, 3),
(64, 8, 6, '2006-05-09 00:00:00', 'Milwaukee', 12.0000, 'Credit Card', NULL, 0),
(65, 9, 28, '2006-05-11 00:00:00', 'Memphis', 10.0000, 'Check', NULL, 0),
(66, 3, 8, '2006-05-24 00:00:00', 'Portland', 5.0000, 'Check', NULL, 0),
(67, 4, 10, '2006-05-24 00:00:00', 'Chicago', 9.0000, 'Credit Card', NULL, 3),
(68, 1, 7, '2006-05-24 00:00:00', 'Boise', 0.0000, NULL, NULL, 0),
(69, 1, 10, '2006-05-24 00:00:00', 'Chicago', 0.0000, NULL, NULL, 0),
(70, 1, 11, '2006-05-24 00:00:00', 'Miami', 0.0000, NULL, NULL, 0),
(71, 1, 1, '2006-05-24 00:00:00', 'Seattle', 0.0000, NULL, NULL, 0),
(72, 1, 28, '2006-06-07 00:00:00', 'Memphis', 40.0000, 'Credit Card', NULL, 3),
(73, 7, 9, '2006-06-05 00:00:00', 'Salt Lake City', 100.0000, 'Check', NULL, 3),
(74, 6, 6, '2006-06-08 00:00:00', 'Milwaukee', 300.0000, 'Credit Card', NULL, 3),
(75, 4, 8, '2006-06-05 00:00:00', 'Portland', 50.0000, 'Check', NULL, 3),
(76, 9, 25, '2006-06-05 00:00:00', 'Chicago', 5.0000, 'Cash', NULL, 3),
(77, 9, 26, '2006-06-05 00:00:00', 'Miami', 60.0000, 'Credit Card', NULL, 3),
(78, 1, 29, '2006-06-05 00:00:00', 'Denver', 200.0000, 'Check', NULL, 3),
(79, 2, 6, '2006-06-23 00:00:00', 'Milwaukee', 0.0000, 'Check', NULL, 3),
(80, 2, 4, '2006-04-25 17:03:55', 'New York', 0.0000, NULL, NULL, 0),
(81, 2, 3, '2006-04-25 17:26:53', 'Los Angelas', 0.0000, NULL, NULL, 0);

INSERT INTO employees VALUES
(1, 'Freehafer', 'Nancy', 'nancy@northwindtraders.com', 'Sales Representative', '(123)555-0100'),
(2, 'Cencini', 'Andrew', 'andrew@northwindtraders.com', 'Vice President, Sales', '(123)555-0100'),
(3, 'Kotas', 'Jan', 'jan@northwindtraders.com', 'Sales Representative', '(123)555-0100'),
(4, 'Sergienko', 'Mariya', 'mariya@northwindtraders.com', 'Sales Representative', '(123)555-0100'),
(5, 'Thorpe', 'Steven', 'steven@northwindtraders.com', 'Sales Manager', '(123)555-0100'),
(6, 'Neipper', 'Michael', 'michael@northwindtraders.com', 'Sales Representative', '(123)555-0100'),
(7, 'Zare', 'Robert', 'robert@northwindtraders.com', 'Sales Representative', '(123)555-0100'),
(8, 'Giussani', 'Laura', 'laura@northwindtraders.com', 'Sales Coordinator', '(123)555-0100'),
(9, 'Hellung-Larsen', 'Anne', 'anne@northwindtraders.com', 'Sales Representative', '(123)555-0100');

INSERT INTO customers VALUES
(1, 'Company A', 'Bedecs', 'Anna', '(123)555-0100', '123 1st Street', 'Seattle', 'WA'),
(3, 'Company C', 'Axen', 'Thomas', '(123)555-0100', '123 3rd Street', 'Los Angelas', 'CA'),
(4, 'Company D', 'Lee', 'Christina', '(123)555-0100', '123 4th Street', 'New York', 'NY'),
(5, 'Company E', 'O’Donnell', 'Martin', '(123)555-0100', '123 5th Street', 'Minneapolis', 'MN'),
(6, 'Company F', 'Pérez-Olaeta', 'Francisco', '(123)555-0100', '123 6th Street', 'Milwaukee', 'WI'),
(7, 'Company G', 'Xie', 'Ming-Yang', '(123)555-0100', '123 7th Street', 'Boise', 'ID'),
(8, 'Company H', 'Andersen', 'Elizabeth', '(123)555-0100', '123 8th Street', 'Portland', 'OR'),
(9, 'Company I', 'Mortensen', 'Sven', '(123)555-0100', '123 9th Street', 'Salt Lake City', 'UT'),
(10, 'Company J', 'Wacker', 'Roland', '(123)555-0100', '123 10th Street', 'Chicago', 'IL'),
(11, 'Company K', 'Krschne', 'Peter', '(123)555-0100', '123 11th Street', 'Miami', 'FL'),
(12, 'Company L', 'Edwards', 'John', '(123)555-0100', '123 12th Street', 'Las Vegas', 'NV'),
(18, 'Company R', 'Autier Miconi', 'Catherine', '(123)555-0100', '456 18th Street', 'Boston', 'MA'),
(19, 'Company S', 'Eggerer', 'Alexander', '(123)555-0100', '789 19th Street', 'Los Angelas', 'CA'),
(23, 'Company W', 'Entin', 'Michael', '(123)555-0100', '789 23th Street', 'Portland', 'OR'),
(25, 'Company Y', 'Rodman', 'John', '(123)555-0100', '789 25th Street', 'Chicago', 'IL'),
(26, 'Company Z', 'Liu', 'Run', '(123)555-0100', '789 26th Street', 'Miami', 'FL'),
(27, 'Company AA', 'Toh', 'Karen', '(123)555-0100', '789 27th Street', 'Las Vegas', 'NV'),
(28, 'Company BB', 'Raghav', 'Amritansh', '(123)555-0100', '789 28th Street', 'Memphis', 'TN'),
(29, 'Company CC', 'Lee', 'Soo Jung', '(123)555-0100', '789 29th Street', 'Denver', 'CO');