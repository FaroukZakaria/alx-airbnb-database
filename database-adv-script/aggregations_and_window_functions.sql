SELECT "User".first_name, "User".last_name, COUNT("Booking".booking_id) AS total_bookings
FROM "User"
    LEFT JOIN "Booking" ON "User".user_id = "Booking".user_id
GROUP BY "User".user_id;

SELECT "Booking".property_id, COUNT("Booking".booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT("Booking".booking_id) DESC) AS property_rank,
    ROW_NUMBER() OVER (ORDER BY COUNT("Booking".booking_id) DESC) AS property_row_number
FROM "Booking"
GROUP BY "Booking".property_id;