-- Write a query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause
SELECT user.first_name, user.last_name, COUNT(booking.booking_id) AS total_bookings
FROM user
    LEFT JOIN booking ON user.user_id = booking.user_id
GROUP BY user.user_id;

-- Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received
SELECT booking.property_id, COUNT(booking.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(booking.booking_id) DESC) AS property_rank
FROM booking
GROUP BY booking.property_id