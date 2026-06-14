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

