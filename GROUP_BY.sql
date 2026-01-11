SELECT 
    v.name AS vehicle_name,
    COUNT(b.id) AS total_bookings
FROM Bookings b
JOIN Vehicles v ON b.vehicle_id = v.id
GROUP BY v.name
HAVING COUNT(b.id) > 2;