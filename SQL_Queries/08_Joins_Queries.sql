USE EventSystem;
GO

-- Join between Event and Venue
SELECT e.Title, v.Name AS Venue
FROM Event e
JOIN Venue v ON e.VenueId = v.VenueId;

-- Join with 3 tables
SELECT 
    e.Title,
    p.FirstName,
    p.LastName
FROM Event e
JOIN EventParticipants ep ON e.EventId = ep.EventId
JOIN Participant p ON ep.ParticipantId = p.ParticipantId;

-- Aggregation
SELECT VenueId, COUNT() AS EventCount
FROM Event
GROUP BY VenueId;

-- HAVING
SELECT VenueId, COUNT() AS EventCount
FROM Event
GROUP BY VenueId
HAVING COUNT() > 0;

-- Subquery
SELECT
FROM Event
WHERE Price > (SELECT AVG(Price) FROM Event);

-- Business question
-- Events with low capacity
SELECT e.Title, v.Capacity
FROM Event e
JOIN Venue v ON e.VenueId = v.VenueId
WHERE v.Capacity < 1000;
GO
