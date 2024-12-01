EXPLAIN
ANALYZE
SELECT property_id
FROM "Property"
WHERE
    property_id IN (
        SELECT property_id
        FROM "Booking"
    );