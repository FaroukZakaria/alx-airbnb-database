SELECT "Booking".booking_id, "User".first_name, "User".last_name
FROM "Booking"
    INNER JOIN "User" ON "Booking".user_id = "User".user_id;

SELECT "Booking"."booking_id", "User"."first_name", "User"."last_name"
FROM "Booking"
    LEFT JOIN "User" ON "Booking"."user_id" = "User"."user_id"
ORDER BY "User"."last_name", "User"."first_name";

SELECT "Booking"."booking_id", "User"."first_name", "User"."last_name"
FROM "Booking"
    RIGHT JOIN "User" ON "Booking"."user_id" = "User"."user_id";

SELECT "Booking"."booking_id", "User"."first_name", "User"."last_name"
FROM "Booking"
    FULL OUTER JOIN "User" ON "Booking"."user_id" = "User"."user_id";
