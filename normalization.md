# Third Normal Form (3NF) Explanation

## User Table

- **Primary Key**: `user_id` (UUID, Indexed)
- **Attributes**:
  - `first_name` (VARCHAR, NOT NULL)
  - `last_name` (VARCHAR, NOT NULL)
  - `email` (VARCHAR, UNIQUE, NOT NULL)
  - `password_hash` (VARCHAR, NOT NULL)
  - `phone_number` (VARCHAR, NULL)
  - `role` (ENUM: guest, host, admin, NOT NULL)
  - `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
- **Constraints**:
  - Unique constraint on `email`
  - Non-null constraints on required fields

## Property Table

- **Primary Key**: `property_id` (UUID, Indexed)
- **Foreign Key**: `host_id` references `User(user_id)`
- **Attributes**:
  - `name` (VARCHAR, NOT NULL)
  - `description` (TEXT, NOT NULL)
  - `location` (VARCHAR, NOT NULL)
  - `price_per_night` (DECIMAL, NOT NULL)
  - `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
  - `updated_at` (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)
- **Constraints**:
  - Foreign key constraint on `host_id`
  - Non-null constraints on essential attributes

## Booking Table

- **Primary Key**: `booking_id` (UUID, Indexed)
- **Foreign Keys**:
  - `property_id` references `Property(property_id)`
  - `user_id` references `User(user_id)`
- **Attributes**:
  - `start_date` (DATE, NOT NULL)
  - `end_date` (DATE, NOT NULL)
  - `total_price` (DECIMAL, NOT NULL)
  - `status` (ENUM: pending, confirmed, canceled, NOT NULL)
  - `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
- **Constraints**:
  - Foreign key constraints on `property_id` and `user_id`
  - `status` must be one of pending, confirmed, or canceled

## Payment Table

- **Primary Key**: `payment_id` (UUID, Indexed)
- **Foreign Key**: `booking_id` references `Booking(booking_id)`
- **Attributes**:
  - `amount` (DECIMAL, NOT NULL)
  - `payment_date` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
  - `payment_method` (ENUM: credit_card, paypal, stripe, NOT NULL)
- **Constraints**:
  - Foreign key constraint on `booking_id`, ensuring payment is linked to valid bookings

## Review Table

- **Primary Key**: `review_id` (UUID, Indexed)
- **Foreign Keys**:
  - `property_id` references `Property(property_id)`
  - `user_id` references `User(user_id)`
- **Attributes**:
  - `rating` (INTEGER, CHECK: rating >= 1 AND rating <= 5, NOT NULL)
  - `comment` (TEXT, NOT NULL)
  - `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
- **Constraints**:
  - Constraints on rating values (1-5)
  - Foreign key constraints on `property_id` and `user_id`

## Message Table

- **Primary Key**: `message_id` (UUID, Indexed)
- **Foreign Keys**:
  - `sender_id` references `User(user_id)`
  - `recipient_id` references `User(user_id)`
- **Attributes**:
  - `message_body` (TEXT, NOT NULL)
  - `sent_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
- **Constraints**:
  - Foreign key constraints on `sender_id` and `recipient_id`
