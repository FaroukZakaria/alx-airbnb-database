SELECT user.first_name, user.last_name, COUNT(booking.booking_id) AS total_bookings
FROM user
    LEFT JOIN booking ON user.user_id = booking.user_id
GROUP BY user.user_id;

SELECT booking.property_id, COUNT(booking.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(booking.booking_id) DESC) AS property_rank,
    ROW_NUMBER() OVER (ORDER BY COUNT(booking.booking_id) DESC) AS property_row_number
FROM booking
GROUP BY booking.property_id