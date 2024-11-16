-- Inserting data into the 'airline' table
INSERT INTO airline (air_name) VALUES
('Delta Airlines'),
('United Airlines'),
('American Airlines'),
('Lufthansa'),
('Emirates');

-- Inserting data into the 'plane' table
INSERT INTO plane (plane_number_id, capacity, model) VALUES
(1, 150, 'Boeing 737'),
(2, 200, 'Airbus A320'),
(3, 300, 'Boeing 777'),
(4, 250, 'Airbus A350'),
(5, 180, 'Embraer E190');

-- Inserting data into the 'trip' table
INSERT INTO trip (t_flight_number, departure_hour, arrival_hour, departure_airport, arrival_airport, trip_date, aname, pnumber_id) VALUES
(101, '2023-12-24 08:00:00', '2023-12-24 12:00:00', 'JFK', 'LHR', '2023-12-24', 'Delta Airlines', 1),
(102, '2023-12-25 10:30:00', '2023-12-25 15:30:00', 'ORD', 'CDG', '2023-12-25', 'United Airlines', 2),
(103, '2023-12-26 12:45:00', '2023-12-26 18:00:00', 'DFW', 'FRA', '2023-12-26', 'American Airlines', 3),
(104, '2023-12-27 14:15:00', '2023-12-27 18:45:00', 'DXB', 'JFK', '2023-12-27', 'Emirates', 5),
(105, '2023-12-28 09:30:00', '2023-12-28 14:00:00', 'MUC', 'ATL', '2023-12-28', 'Lufthansa', 4);

-- Inserting data into the 'passenger' table
INSERT INTO passenger (pfname, plname, pssn, p_pass_id, phone, address, nationality, flight_number) VALUES
('John', 'Doe', 123456789, 1, '123-456-7890', '123 Main St, City', 'US', 101),
('Jane', 'Smith', 987654321, 2, '987-654-3210', '456 Oak St, Town', 'UK', 102),
('Robert', 'Johnson', 456789012, 3, '555-123-4567', '789 Pine St, Village', 'US', 103),
('Aisha', 'Ahmed', 789012345, 4, '333-777-9999', '321 Elm St, Town', 'UAE', 104),
('Maria', 'Garcia', 234567890, 5, '777-888-5555', '654 Cedar St, City', 'Germany', 105);

-- Inserting data into the 'ticket' table
INSERT INTO ticket (seat_no, cost, ticket_id, pag_pass_id) VALUES
(101, 500, 1, 1),
(102, 600, 2, 2),
(103, 700, 3, 3),
(104, 800, 4, 4),
(105, 900, 5, 5);

-- Inserting data into the 'employee' table
INSERT INTO employee (essn, fname, lname, phone, address, salary, position) VALUES
(1001, 'Michael', 'Smith', '111-222-3333', '789 Oak St, City', 60000, 'Pilot'),
(1002, 'Emily', 'Jones', '444-555-6666', '456 Pine St, Town', 50000, 'Flight Attendant'),
(1003, 'David', 'Wilson', '777-888-9999', '123 Cedar St, Village', 70000, 'Ground Crew'),
(1004, 'Sarah', 'Clark', '333-999-7777', '321 Elm St, Town', 55000, 'Security'),
(1005, 'James', 'Miller', '222-777-8888', '654 Maple St, City', 65000, 'Engineer');

-- Inserting data into the 'assistance' table
INSERT INTO assistance (ass_pass_id, emssn) VALUES
(1, 1003),
(2, 1004),
(3, 1005),
(4, 1002),
(5, 1001);

-- Inserting data into the 'control' table
INSERT INTO control (fnumber_id, cssn) VALUES
(1, 1003),
(2, 1004),
(3, 1005),
(4, 1002),
(5, 1001);
