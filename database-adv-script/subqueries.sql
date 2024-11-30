-- Active: 1733001607402@@127.0.0.1@5432@prodev
SELECT property_id FROM "Property" p
WHERE (SELECT AVG(r.rating) FROM "Review" r WHERE r.property_id = p.property_id) > 4.0;

SELECT "User".first_name, "User".last_name
FROM "User"
WHERE "User".user_id IN (
    SELECT "Booking".user_id
    FROM "Booking"
    GROUP BY "Booking".user_id
    HAVING COUNT("Booking".booking_id) > 3
);