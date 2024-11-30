-- Active: 1729273844358@@127.0.0.1@3306@prodev
SELECT booking.booking_id, user.first_name, user.last_name
FROM booking
    INNER JOIN user ON booking.user_id = user.user_id;

SELECT booking.booking_id, user.first_name, user.last_name
FROM booking
    LEFT JOIN user ON booking.user_id = user.user_id;

SELECT booking.booking_id, user.first_name, user.last_name
FROM booking
    RIGHT JOIN user ON booking.user_id = user.user_id;

SELECT booking.booking_id, user.first_name, user.last_name
FROM booking FULL OUTER
    JOIN user ON booking.user_id = user.user_id
-- SELECT booking.booking_id, user.first_name, user.last_name
-- FROM booking
--     LEFT JOIN user ON booking.user_id = user.user_id
-- UNION
-- SELECT booking.booking_id, user.first_name, user.last_name
-- FROM booking
--     RIGHT JOIN user ON booking.user_id = user.user_id;
-- FOR MYSQL