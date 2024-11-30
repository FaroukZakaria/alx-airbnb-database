SELECT *
FROM booking, user, property, payment
WHERE
    booking.user_id = user.user_id
    AND booking.property_id = property.property_id
    AND booking.booking_id = payment.booking_id;

EXPLAIN
SELECT *
FROM booking, user, property, payment
WHERE
    booking.user_id = user.user_id
    AND booking.property_id = property.property_id
    AND booking.booking_id = payment.booking_id;

SELECT *
FROM
    booking
    JOIN user ON booking.user_id = user.user_id
    JOIN property ON booking.property_id = property.property_id
    JOIN payment ON booking.booking_id = payment.booking_id;

EXPLAIN
SELECT *
FROM
    booking
    JOIN user ON booking.user_id = user.user_id
    JOIN property ON booking.property_id = property.property_id
    JOIN payment ON booking.booking_id = payment.booking_id;