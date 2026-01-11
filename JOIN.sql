SELECT 
    b.id AS booking_id,
    u.name AS customer_name,
    v.name AS vehicle_name,
    b.start_date,
    b.end_date,
    b.status
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.id
INNER JOIN Vehicles v ON b.vehicle_id = v.id;