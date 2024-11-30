SELECT *
FROM "Booking", "User", "Property", "Payment"
WHERE
    "Booking"."user_id" = "User"."user_id"
    AND "Booking"."property_id" = "Property"."property_id"
    AND "Booking"."booking_id" = "Payment"."booking_id";

EXPLAIN
SELECT *
FROM "Booking", "User", "Property", "Payment"
WHERE
    "Booking"."user_id" = "User"."user_id"
    AND "Booking"."property_id" = "Property"."property_id"
    AND "Booking"."booking_id" = "Payment"."booking_id";

SELECT *
FROM
    "Booking"
    JOIN "User" ON "Booking"."user_id" = "User"."user_id"
    JOIN "Property" ON "Booking"."property_id" = "Property"."property_id"
    JOIN "Payment" ON "Booking"."booking_id" = "Payment"."booking_id";

EXPLAIN
SELECT *
FROM
    "Booking"
    JOIN "User" ON "Booking"."user_id" = "User"."user_id"
    JOIN "Property" ON "Booking"."property_id" = "Property"."property_id"
    JOIN "Payment" ON "Booking"."booking_id" = "Payment"."booking_id";