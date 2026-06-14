-- 1. CREATE USERS TABLE

CREATE TABLE Users(
  user_id INT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE NOT NULL,
  role VARCHAR(50) NOT NULL CHECK (role IN ('Ticket Manager','Football Fan')),
  phone_number VARCHAR(20)
);


