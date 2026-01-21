USE EventSystem;
GO

INSERT INTO Participant (FirstName, LastName, Email)
VALUES ('Sara', 'Nilsson', 'sara@mail.com');

INSERT INTO EventParticipants (EventId, ParticipantId)
VALUES (2, 3);
GO
