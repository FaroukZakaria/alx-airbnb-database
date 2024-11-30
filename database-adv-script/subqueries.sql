SELECT property_id FROM property p
WHERE (SELECT AVG(r.rating) FROM review r WHERE r.property_id = p.property_id) > 4.0;

SELECT user.first_name, user.last_name
FROM user
WHERE user.user_id IN (
    SELECT booking.user_id
    FROM booking
    GROUP BY booking.user_id
    HAVING COUNT(booking.booking_id) > 3
);