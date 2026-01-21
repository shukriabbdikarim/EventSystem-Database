USE EventSystem;
GO

SELECT * FROM Event;

SELECT 
    e.Title,
    v.Name AS Venue,
    e.Price
FROM Event e
JOIN Venue v ON e.VenueId = v.VenueId;
GO
