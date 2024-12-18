EXPLAIN ANALYZE SELECT * FROM "User";

EXPLAIN ANALYZE SELECT * FROM "Review" WHERE rating > 3;

CREATE INDEX idx_user_email ON "User" (email);

CREATE INDEX idx_property_host_id ON "Property" (host_id);

CREATE INDEX idx_booking_property_id ON "Booking" (property_id);

CREATE INDEX idx_booking_user_id ON "Booking" (user_id);

CREATE INDEX idx_payment_booking_id ON "Payment" (booking_id);

CREATE INDEX idx_review_property_id ON "Review" (property_id);

CREATE INDEX idx_review_user_id ON "Review" (user_id);

CREATE INDEX idx_message_sender_id ON "Message" (sender_id);

CREATE INDEX idx_message_recipient_id ON "Message" (recipient_id);

EXPLAIN ANALYZE SELECT * FROM "User";

EXPLAIN ANALYZE SELECT * FROM "Review" WHERE rating > 3;