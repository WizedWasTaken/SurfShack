------------------------------------------------------------
--                   Clear All Tables                     --
------------------------------------------------------------

DELETE FROM Staffs;
DELETE FROM Roles;
DELETE FROM Reviews;
DELETE FROM Payments;
DELETE FROM Reservations;
DELETE FROM Surfboards;
DELETE FROM Coupons;
DELETE FROM SurfboardTypes;
DELETE FROM Customers;
DELETE FROM Addresses;

DBCC CHECKIDENT ('Staffs', RESEED, 0);
DBCC CHECKIDENT ('Roles', RESEED, 0);
DBCC CHECKIDENT ('Reviews', RESEED, 0);
DBCC CHECKIDENT ('Payments', RESEED, 0);
DBCC CHECKIDENT ('Reservations', RESEED, 0);
DBCC CHECKIDENT ('Surfboards', RESEED, 0);
DBCC CHECKIDENT ('Coupons', RESEED, 0);
DBCC CHECKIDENT ('SurfboardTypes', RESEED, 0);
DBCC CHECKIDENT ('Customers', RESEED, 0);
DBCC CHECKIDENT ('Addresses', RESEED, 0);

------------------------------------------------------------
--            Test Data for the Address Table             --
------------------------------------------------------------

INSERT INTO Addresses(Street, City, State, Zip) VALUES 
('Birkevej 12', 'Aarhus', 'Midtjylland', '8200'),
('Fyrrevej 45', 'Odense', 'Syddanmark', '5000'),
('Egevej 30', 'København', 'Hovedstaden', '2100'),
('Bøgevej 18', 'Aalborg', 'Nordjylland', '9000'),
('Ahornvej 52', 'Esbjerg', 'Syddanmark', '6700'),
('Granvej 67', 'Randers', 'Midtjylland', '8900'),
('Kastanievej 8', 'Kolding', 'Syddanmark', '6000'),
('Lindevej 23', 'Horsens', 'Midtjylland', '8700'),
('Cedervej 91', 'Vejle', 'Syddanmark', '7100'),
('Poppelvej 74', 'Roskilde', 'Sjælland', '4000'),
('Elmevej 65', 'Herning', 'Midtjylland', '7400'),
('Solvej 12', 'Helsingør', 'Hovedstaden', '3000'),
('Platanvej 38', 'Næstved', 'Sjælland', '4700'),
('Ørnevej 29', 'Silkeborg', 'Midtjylland', '8600'),
('Havrevej 50', 'Fredericia', 'Syddanmark', '7000'),
('Birkevej 34', 'Viborg', 'Midtjylland', '8800'),
('Fyrrevej 76', 'Køge', 'Sjælland', '4600'),
('Egevej 89', 'Holstebro', 'Midtjylland', '7500'),
('Bøgevej 56', 'Slagelse', 'Sjælland', '4200'),
('Ahornvej 33', 'Taastrup', 'Hovedstaden', '2630'),
('Granvej 22', 'Hillerød', 'Hovedstaden', '3400'),
('Kastanievej 5', 'Sønderborg', 'Syddanmark', '6400'),
('Lindevej 77', 'Svendborg', 'Syddanmark', '5700'),
('Cedervej 80', 'Holbæk', 'Sjælland', '4300'),
('Poppelvej 59', 'Frederikshavn', 'Nordjylland', '9900'),
('Elmevej 42', 'Nykøbing F', 'Sjælland', '4800'),
('Solvej 88', 'Ringsted', 'Sjælland', '4100'),
('Platanvej 47', 'Haderslev', 'Syddanmark', '6100'),
('Ørnevej 64', 'Skive', 'Midtjylland', '7800'),
('Havrevej 28', 'Farum', 'Hovedstaden', '3520');

------------------------------------------------------------
--           Test Data for the Customer Table             --
------------------------------------------------------------

INSERT INTO Customers(Name, Email, Password, PhoneNumber, Address) VALUES 
('Jens Madsen', '', '$2b$12$someEncryptedKeyHere01', '20456789', 1),
('Mette Nielsen', 'mette.nielsen@example.com', '$2b$12$someEncryptedKeyHere02', '', 2),
('Lars Knudsen', '', '$2b$12$someEncryptedKeyHere03', '23456789', 3),
('Sofie Jensen', 'sofie.jensen@example.com', '$2b$12$someEncryptedKeyHere04', '', 4),
('Peter Hansen', '', '$2b$12$someEncryptedKeyHere05', '25456789', 5),
('Anne Larsen', 'anne.larsen@example.com', '$2b$12$someEncryptedKeyHere06', '', 6),
('Christian Christensen', '', '$2b$12$someEncryptedKeyHere07', '27456789', 7),
('Katrine Møller', 'katrine.moller@example.com', '$2b$12$someEncryptedKeyHere08', '', 8),
('Nikolaj Berg', '', '$2b$12$someEncryptedKeyHere09', '29456789', 9),
('Louise Thomsen', 'louise.thomsen@example.com', '$2b$12$someEncryptedKeyHere10', '', 10),
('Michael Sørensen', '', '$2b$12$someEncryptedKeyHere11', '31456789', 11),
('Emma Kjær', 'emma.kjaer@example.com', '$2b$12$someEncryptedKeyHere12', '', 12),
('Daniel Rasmussen', '', '$2b$12$someEncryptedKeyHere13', '33456789', 13),
('Ida Pedersen', 'ida.pedersen@example.com', '$2b$12$someEncryptedKeyHere14', '', 14),
('Magnus Simonsen', '', '$2b$12$someEncryptedKeyHere15', '35456789', 15),
('Freja Mortensen', 'freja.mortensen@example.com', '$2b$12$someEncryptedKeyHere16', '', 16),
('Oscar Nørgaard', '', '$2b$12$someEncryptedKeyHere17', '37456789', 17),
('Clara Svendsen', 'clara.svendsen@example.com', '$2b$12$someEncryptedKeyHere18', '', 18),
('Victor Carlsen', '', '$2b$12$someEncryptedKeyHere19', '39456789', 19),
('Emilie Olsen', 'emilie.olsen@example.com', '$2b$12$someEncryptedKeyHere20', '', 20),
('Lukas Jensen', '', '$2b$12$someEncryptedKeyHere21', '41456789', 21),
('Sara Larsen', 'sara.larsen@example.com', '$2b$12$someEncryptedKeyHere22', '', 22),
('Noah Nielsen', '', '$2b$12$someEncryptedKeyHere23', '43456789', 23),
('Alma Petersen', 'alma.petersen@example.com', '$2b$12$someEncryptedKeyHere24', '', 24),
('Elias Andersen', '', '$2b$12$someEncryptedKeyHere25', '45456789', 25),
('Agnes Mikkelsen', 'agnes.mikkelsen@example.com', '$2b$12$someEncryptedKeyHere26', '', 26),
('Theo Jørgensen', '', '$2b$12$someEncryptedKeyHere27', '47456789', 27),
('Lilly Kristensen', 'lilly.kristensen@example.com', '$2b$12$someEncryptedKeyHere28', '', 28),
('Alberte Dam', '', '$2b$12$someEncryptedKeyHere29', '49456789', 29),
('Felix Schmidt', 'felix.schmidt@example.com', '$2b$12$someEncryptedKeyHere30', '', 30);

------------------------------------------------------------
--           Test Data for the SurfboardType Table        --
------------------------------------------------------------

INSERT INTO SurfboardTypes(Type, Description) VALUES
('Shortboard', 'A high-performance surfboard that is designed to be ridden in good to excellent conditions.'),
('Hybrid', 'A versatile surfboard that is designed to be ridden in average to good conditions.'),
('Small Wave', 'A small wave board that generates speed and flow in average conditions.');

------------------------------------------------------------
--           Test Data for the Coupon Table               --
------------------------------------------------------------
INSERT INTO Coupons(CouponCode, Discount, SurfboardType, ExpiryDate) VALUES
('SUMMER10', 10, 1, '2021-08-31'),
('SUMMER15', 15, 2, '2021-08-31'),
('SUMMER20', 20, 3, '2021-08-31');

------------------------------------------------------------
--           Test Data for the Surfboard Table            --
------------------------------------------------------------

INSERT INTO Surfboards(Type, Length, Width, Thickness, Volume, Weight, Price, Description) VALUES
(2, 28.5, 10.5, 5, 100.13, 10, 5000, 'Dette surfboard er bare godt ude på bølgerne.'),
(1, 29.5, 11.5, 5.5, 110.13, 11, 5500, 'This surfboard is just great out on the waves.'),
(3, 30.5, 12.5, 6, 120.13, 12, 6000, 'Denne surfboard er bare fantastisk ude på bølgerne.'),
(2, 31.5, 13.5, 6.5, 130.13, 13, 6500, 'This surfboard is just amazing out on the waves.'),
(1, 32.5, 14.5, 7, 140.13, 14, 7000, 'Dette surfboard er bare fantastisk ude på bølgerne.'),
(3, 33.5, 15.5, 7.5, 150.13, 15, 7500, 'This surfboard is just amazing out on the waves.'),
(2, 34.5, 16.5, 8, 160.13, 16, 8000, 'Dette surfboard er bare godt ude på bølgerne.'),
(1, 35.5, 17.5, 8.5, 170.13, 17, 8500, 'This surfboard is just great out on the waves.'),
(3, 36.5, 18.5, 9, 180.13, 18, 9000, 'Denne surfboard er bare fantastisk ude på bølgerne.'),
(2, 37.5, 19.5, 9.5, 190.13, 19, 9500, 'This surfboard is just amazing out on the waves.'),
(1, 38.5, 20.5, 10, 200.13, 20, 10000, 'Dette surfboard er bare fantastisk ude på bølgerne.'),
(3, 39.5, 21.5, 10.5, 210.13, 21, 10500, 'This surfboard is just amazing out on the waves.'),
(2, 40.5, 22.5, 11, 220.13, 22, 11000, 'Dette surfboard er bare godt ude på bølgerne.'),
(1, 41.5, 23.5, 11.5, 230.13, 23, 11500, 'This surfboard is just great out on the waves.'),
(3, 42.5, 24.5, 12, 240.13, 24, 12000, 'Denne surfboard er bare fantastisk ude på bølgerne.'),
(2, 43.5, 25.5, 12.5, 250.13, 25, 12500, 'This surfboard is just amazing out on the waves.'),
(1, 44.5, 26.5, 13, 260.13, 26, 13000, 'Dette surfboard er bare fantastisk ude på bølgerne.'),
(3, 45.5, 27.5, 13.5, 270.13, 27, 13500, 'This surfboard is just amazing out on the waves.'),
(2, 46.5, 28.5, 14, 280.13, 28, 14000, 'Dette surfboard er bare godt ude på bølgerne.'),
(1, 47.5, 29.5, 14.5, 290.13, 29, 14500, 'This surfboard is just great out on the waves.'),
(3, 48.5, 30.5, 15, 300.13, 30, 15000, 'Denne surfboard er bare fantastisk ude på bølgerne.');

------------------------------------------------------------
--         Test Data for the Reservation Table            --
------------------------------------------------------------

INSERT INTO Reservations(CustomerID, SurfboardID, StartDate, EndDate, Status) VALUES
(1, 1, '2021-06-01', '2021-06-07', 'Pending'),
(2, 2, '2021-06-02', '2021-06-08', 'Pending'),
(3, 3, '2021-06-03', '2021-06-09', 'Pending'),
(4, 4, '2021-06-04', '2021-06-10', 'Pending'),
(5, 5, '2021-06-05', '2021-06-11', 'Pending'),
(6, 6, '2021-06-06', '2021-06-12', 'Pending'),
(7, 7, '2021-06-07', '2021-06-13', 'Pending'),
(8, 8, '2021-06-08', '2021-06-14', 'Pending'),
(9, 9, '2021-06-09', '2021-06-15', 'Pending'),
(10, 10, '2021-06-10', '2021-06-16', 'Pending'),
(11, 11, '2021-06-11', '2021-06-17', 'Pending'),
(12, 12, '2021-06-12', '2021-06-18', 'Pending'),
(13, 13, '2021-06-13', '2021-06-19', 'Pending'),
(14, 14, '2021-06-14', '2021-06-20', 'Pending'),
(15, 15, '2021-06-15', '2021-06-21', 'Pending'),
(16, 16, '2021-06-16', '2021-06-22', 'Pending'),
(17, 17, '2021-06-17', '2021-06-23', 'Pending'),
(18, 18, '2021-06-18', '2021-06-24', 'Pending'),
(19, 19, '2021-06-19', '2021-06-25', 'Pending'),
(20, 20, '2021-06-20', '2021-06-26', 'Pending'),
(21, 1, '2021-06-21', '2021-06-27', 'Pending'),
(22, 2, '2021-06-22', '2021-06-28', 'Pending'),
(23, 3, '2021-06-23', '2021-06-29', 'Pending'),
(24, 4, '2021-06-24', '2021-06-30', 'Pending'),
(25, 5, '2021-06-25', '2021-07-01', 'Pending'),
(26, 6, '2021-06-26', '2021-07-02', 'Pending'),
(27, 7, '2021-06-27', '2021-07-03', 'Pending'),
(28, 8, '2021-06-28', '2021-07-04', 'Pending'),
(29, 9, '2021-06-29', '2021-07-05', 'Pending'),
(30, 10, '2021-06-30', '2021-07-06', 'Pending');

------------------------------------------------------------
--         Test Data for the Payment Table                --
------------------------------------------------------------

INSERT INTO Payments(ReservationID, Amount, PaymentMethod, PaymentDate, PaymentStatus) VALUES
(1, 5000, 'Credit Card', '2021-06-01', 'Paid'),
(2, 5500, 'Credit Card', '2021-06-02', 'Paid'),
(3, 6000, 'Credit Card', '2021-06-03', 'Paid'),
(4, 6500, 'Credit Card', '2021-06-04', 'Paid'),
(5, 7000, 'Credit Card', '2021-06-05', 'Paid'),
(6, 7500, 'Credit Card', '2021-06-06', 'Paid'),
(7, 8000, 'Credit Card', '2021-06-07', 'Paid'),
(8, 8500, 'Credit Card', '2021-06-08', 'Paid'),
(9, 9000, 'Credit Card', '2021-06-09', 'Paid'),
(10, 9500, 'Credit Card', '2021-06-10', 'Paid'),
(11, 10000, 'Credit Card', '2021-06-11', 'Paid'),
(12, 10500, 'Credit Card', '2021-06-12', 'Paid'),
(13, 11000, 'Credit Card', '2021-06-13', 'Paid'),
(14, 11500, 'Credit Card', '2021-06-14', 'Paid'),
(15, 12000, 'Credit Card', '2021-06-15', 'Paid'),
(16, 12500, 'Credit Card', '2021-06-16', 'Paid'),
(17, 13000, 'Credit Card', '2021-06-17', 'Paid'),
(18, 13500, 'Credit Card', '2021-06-18', 'Paid'),
(19, 14000, 'Credit Card', '2021-06-19', 'Paid'),
(20, 14500, 'Credit Card', '2021-06-20', 'Paid'),
(21, 5000, 'Credit Card', '2021-06-21', 'Paid'),
(22, 5500, 'Credit Card', '2021-06-22', 'Paid'),
(23, 6000, 'Credit Card', '2021-06-23', 'Paid'),
(24, 6500, 'Credit Card', '2021-06-24', 'Paid'),
(25, 7000, 'Credit Card', '2021-06-25', 'Paid'),
(26, 7500, 'Credit Card', '2021-06-26', 'Paid'),
(27, 8000, 'Credit Card', '2021-06-27', 'Paid'),
(28, 8500, 'Credit Card', '2021-06-28', 'Paid'),
(29, 9000, 'Credit Card', '2021-06-29', 'Paid'),
(30, 9500, 'Credit Card', '2021-06-30', 'Paid');

------------------------------------------------------------
--         Test Data for the Review Table                 --
------------------------------------------------------------

INSERT INTO Reviews(CustomerID, SurfboardID, Rating, Comment, Date) VALUES
(1, 1, 5, 'Great board! I had a lot of fun riding it.', '2021-06-07'),
(2, 2, 4, 'Good board! It performed well in the water.', '2021-06-08'),
(3, 3, 3, 'Average board! It was okay for the price.', '2021-06-09'),
(4, 4, 2, 'Poor board! It didn''t meet my expectations.', '2021-06-10'),
(5, 5, 1, 'Terrible board! It was a waste of money.', '2021-06-11'),
(6, 6, 5, 'Great board! I had a lot of fun riding it.', '2021-06-12'),
(7, 7, 4, 'Good board! It performed well in the water.', '2021-06-13'),
(8, 8, 3, 'Average board! It was okay for the price.', '2021-06-14'),
(9, 9, 2, 'Poor board! It didn''t meet my expectations.', '2021-06-15'),
(10, 10, 1, 'Terrible board! It was a waste of money.', '2021-06-16'),
(11, 11, 5, 'Great board! I had a lot of fun riding it.', '2021-06-17'),
(12, 12, 4, 'Good board! It performed well in the water.', '2021-06-18'),
(13, 13, 3, 'Average board! It was okay for the price.', '2021-06-19'),
(14, 14, 2, 'Poor board! It didn''t meet my expectations.', '2021-06-20'),
(15, 15, 1, 'Terrible board! It was a waste of money.', '2021-06-21'),
(16, 16, 5, 'Great board! I had a lot of fun riding it.', '2021-06-22'),
(17, 17, 4, 'Good board! It performed well in the water.', '2021-06-23'),
(18, 18, 3, 'Average board! It was okay for the price.', '2021-06-24'),
(19, 19, 2, 'Poor board! It didn''t meet my expectations.', '2021-06-25'),
(20, 20, 1, 'Terrible board! It was a waste of money.', '2021-06-26'),
(21, 1, 5, 'Great board! I had a lot of fun riding it.', '2021-06-27'),
(22, 2, 4, 'Good board! It performed well in the water.', '2021-06-28'),
(23, 3, 3, 'Average board! It was okay for the price.', '2021-06-29'),
(24, 4, 2, 'Poor board! It didn''t meet my expectations.', '2021-06-30'),
(25, 5, 1, 'Terrible board! It was a waste of money.', '2021-07-01'),
(26, 6, 5, 'Great board! I had a lot of fun riding it.', '2021-07-02'),
(27, 7, 4, 'Good board! It performed well in the water.', '2021-07-03'),
(28, 8, 3, 'Average board! It was okay for the price.', '2021-07-04'),
(29, 9, 2, 'Poor board! It didn''t meet my expectations.', '2021-07-05'),
(30, 10, 1, 'Terrible board! It was a waste of money.', '2021-07-06');

------------------------------------------------------------
--            Test Data for the Staffs Table              --
------------------------------------------------------------

INSERT INTO Staffs(Role, CustomerID) VALUES
('Admin', 1),
('Admin', 2),
('Admin', 3),
('Admin', 4),
('Admin', 5),
('Admin', 6),
('Admin', 7),
('Admin', 8),
('Admin', 9),
('Admin', 10),
('Admin', 11),
('Admin', 12),
('Admin', 13),
('Admin', 14),
('Admin', 15),
('Admin', 16),
('Admin', 17),
('Admin', 18),
('Admin', 19),
('Admin', 20),
('Admin', 21),
('Admin', 22),
('Admin', 23),
('Admin', 24),
('Admin', 25),
('Admin', 26),
('Admin', 27),
('Admin', 28),
('Admin', 29),
('Admin', 30);