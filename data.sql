CREATE TABLE Client (
    ClientID INT PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(50)
);

CREATE TABLE Hotel (
    HotelID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE Room (
    RoomID INT PRIMARY KEY,
    Number INT,
    Type VARCHAR(50),
    Price DECIMAL(10, 2),
    HotelID INT,
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    Date DATE,
    ClientID INT,
    RoomID INT,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);

CREATE TABLE Service (
    ServiceID INT PRIMARY KEY,
    Description VARCHAR(255),
    Price DECIMAL(10, 2)
);

CREATE TABLE ServiceReservation (
    ServiceReservationID INT PRIMARY KEY,
    ServiceID INT,
    ReservationID INT,
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID)
);
