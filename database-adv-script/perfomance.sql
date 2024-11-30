SELECT * FROM booking, user, property, payment

EXPLAIN SELECT * FROM booking, user, property, payment

SELECT * 
FROM booking 
JOIN user ON booking.user_id = user.user_id 
JOIN property ON booking.property_id = property.property_id 
JOIN payment ON booking.booking_id = payment.booking_id;

EXPLAIN 
SELECT * 
FROM booking 
JOIN user ON booking.user_id = user.user_id 
JOIN property ON booking.property_id = property.property_id 
JOIN payment ON booking.booking_id = payment.booking_id;