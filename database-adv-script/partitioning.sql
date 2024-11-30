CREATE TABLE "Booking" (
    "Booking_id" CHAR(36) NOT NULL,
    "Start_date" DATE NOT NULL,
    "End_date" DATE NOT NULL,
    "Total_price" DECIMAL NOT NULL,
    "Status" VARCHAR(10) CHECK ("Status" IN ('pending', 'confirmed', 'canceled')) NOT NULL,
    "Created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("Booking_id", "Start_date")
) PARTITION BY RANGE ("Start_date");

CREATE TABLE "Booking_2022" PARTITION OF "Booking"
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE "Booking_2023" PARTITION OF "Booking"
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE "Booking_future" PARTITION OF "Booking"
    FOR VALUES FROM ('2024-01-01') TO ('9999-12-31');