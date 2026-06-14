-- 1. CREATE USERS TABLE

CREATE TABLE Users(
  user_id INT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE NOT NULL,
  role VARCHAR(50) NOT NULL CHECK (role IN ('Ticket Manager','Football Fan')),
  phone_number VARCHAR(20)
);


-- 2. CREATE MATCHES TABLE
 
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    fixture VARCHAR(200) NOT NULL,
    tournament_category VARCHAR(100) NOT NULL,
    base_ticket_price DECIMAL(10,2) NOT NULL CHECK(base_ticket_price >= 0),
    match_status VARCHAR(50) NOT NULL CHECK(match_status IN('Available','Selling Fast','Sold Out','Postponed'))
);


-- 3. CREATE BOOKINGS TABLE
-- =========================================================================

CREATE TABLE Bookings(
  booking_id INT PRIMARY KEY,
  user_id INT REFERENCES Users(user_id),
  match_id INT REFERENCES Matches(match_id),
  seat_number VARCHAR(20),
  payment_status VARCHAR(20) CHECK (payment_status IN ('Pending','Confirmed','Cancelled','Refunded')),
  total_cost DECIMAL(10,2) NOT NULL CHECK (total_cost >= 0)
);

