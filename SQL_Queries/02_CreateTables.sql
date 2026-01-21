USE EventSystem;
GO

CREATE TABLE Venue (
    VenueId INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Address NVARCHAR(200) NOT NULL,
    Capacity INT NOT NULL
);

CREATE TABLE Event (
    EventId INT IDENTITY PRIMARY KEY,
    Title NVARCHAR(100) NOT NULL,
    EventDate DATETIME NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    VenueId INT NOT NULL,
    FOREIGN KEY (VenueId) REFERENCES Venue(VenueId)
);

CREATE TABLE Participant (
    ParticipantId INT IDENTITY PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL
);

CREATE TABLE Ticket (
    TicketId INT IDENTITY PRIMARY KEY,
    EventId INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (EventId) REFERENCES Event(EventId)
);

CREATE TABLE EventParticipants (
    EventId INT NOT NULL,
    ParticipantId INT NOT NULL,
    PRIMARY KEY (EventId, ParticipantId),
    FOREIGN KEY (EventId) REFERENCES Event(EventId),
    FOREIGN KEY (ParticipantId) REFERENCES Participant(ParticipantId)
);
GO
