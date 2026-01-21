USE EventSystem;
GO

INSERT INTO Venue (Name, Address, Capacity)
VALUES
('Main Hall', 'Street 1', 500),
('Open Arena', 'Street 2', 2000);

INSERT INTO Event (Title, EventDate, Price, VenueId)
VALUES
('Music Festival', '2026-06-01', 599, 1),
('Tech Conference', '2026-05-15', 899, 2);

INSERT INTO Participant (FirstName, LastName, Email)
VALUES
('Anna', 'Karlsson', 'anna@mail.com'),
('John', 'Doe', 'john@mail.com');

INSERT INTO Ticket (EventId, Price)
VALUES
(1, 599),
(2, 899);

INSERT INTO EventParticipants (EventId, ParticipantId)
VALUES
(1, 1),
(1, 2),
(2, 2);
GO
