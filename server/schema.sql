drop database if exists chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  MessageID INTEGER(1000) NOT NULL, 
  UserID INTEGER(15),
  Text CHARACTER(100), 
  RoomID INTEGER(15),
  CreatedAt TIMESTAMP,
  PRIMARY KEY (MessageID),
  FOREIGN KEY (UserID) REFERENCES users(UserID),
  FOREIGN KEY (RoomID) REFERENCES rooms(RoomID)
);

CREATE TABLE users (
  UserID INTEGER(1000) NOT NULL,
  Username CHARACTER(15)
);

CREATE TABLE rooms (
  RoomID INTEGER(100) NOT NULL,
  Roomname CHARACTER(15)
);
/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

