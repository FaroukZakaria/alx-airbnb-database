-- Insert Users
INSERT INTO
    User (
        user_id,
        first_name,
        last_name,
        email,
        password_hash,
        phone_number,
        role
    )
VALUES (
        '550e8400-e29b-41d4-a716-446655440000',
        'John',
        'Doe',
        'john.doe@example.com',
        'hashed_password_1',
        '1234567890',
        'guest'
    ),
    (
        '550e8400-e29b-41d4-a716-446655440001',
        'Jane',
        'Smith',
        'jane.smith@example.com',
        'hashed_password_2',
        '0987654321',
        'host'
    ),
    (
        '550e8400-e29b-41d4-a716-446655440002',
        'Alice',
        'Johnson',
        'alice.johnson@example.com',
        'hashed_password_3',
        '1122334455',
        'admin'
    );

-- Insert Properties
INSERT INTO
    Property (
        property_id,
        host_id,
        name,
        description,
        location,
        price_per_night
    )
VALUES (
        '650e8400-e29b-41d4-a716-446655440000',
        '550e8400-e29b-41d4-a716-446655440001',
        'Cozy Cottage',
        'A cozy cottage in the countryside',
        'Countryside',
        100.00
    ),
    (
        '650e8400-e29b-41d4-a716-446655440001',
        '550e8400-e29b-41d4-a716-446655440001',
        'Modern Apartment',
        'A modern apartment in the city center',
        'City Center',
        150.00
    );

-- Insert Bookings
INSERT INTO
    Booking (
        booking_id,
        property_id,
        user_id,
        start_date,
        end_date,
        total_price,
        status
    )
VALUES (
        '750e8400-e29b-41d4-a716-446655440000',
        '650e8400-e29b-41d4-a716-446655440000',
        '550e8400-e29b-41d4-a716-446655440000',
        '2023-11-01',
        '2023-11-05',
        400.00,
        'confirmed'
    ),
    (
        '750e8400-e29b-41d4-a716-446655440001',
        '650e8400-e29b-41d4-a716-446655440001',
        '550e8400-e29b-41d4-a716-446655440000',
        '2023-12-01',
        '2023-12-10',
        1350.00,
        'pending'
    );

-- Insert Payments
INSERT INTO
    Payment (
        payment_id,
        booking_id,
        amount,
        payment_method
    )
VALUES (
        '850e8400-e29b-41d4-a716-446655440000',
        '750e8400-e29b-41d4-a716-446655440000',
        400.00,
        'credit_card'
    ),
    (
        '850e8400-e29b-41d4-a716-446655440001',
        '750e8400-e29b-41d4-a716-446655440001',
        1350.00,
        'paypal'
    );

-- Insert Reviews
INSERT INTO
    Review (
        review_id,
        property_id,
        user_id,
        rating,
        comment
    )
VALUES (
        '950e8400-e29b-41d4-a716-446655440000',
        '650e8400-e29b-41d4-a716-446655440000',
        '550e8400-e29b-41d4-a716-446655440000',
        5,
        'Amazing place! Highly recommend.'
    ),
    (
        '950e8400-e29b-41d4-a716-446655440001',
        '650e8400-e29b-41d4-a716-446655440001',
        '550e8400-e29b-41d4-a716-446655440000',
        4,
        'Great location, but a bit noisy.'
    );

-- Insert Messages
INSERT INTO
    Message (
        message_id,
        sender_id,
        recipient_id,
        message_body
    )
VALUES (
        'a50e8400-e29b-41d4-a716-446655440000',
        '550e8400-e29b-41d4-a716-446655440000',
        '550e8400-e29b-41d4-a716-446655440001',
        'Hello, I am interested in your property.'
    ),
    (
        'a50e8400-e29b-41d4-a716-446655440001',
        '550e8400-e29b-41d4-a716-446655440001',
        '550e8400-e29b-41d4-a716-446655440000',
        'Hi, thank you for your interest!'
    );