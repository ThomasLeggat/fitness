/* Database script for workout tracking */
/* Create database */
DROP DATABASE IF EXISTS fitnessDB;
CREATE DATABASE fitnessDB;
USE fitnessDB;

/* Create User Table */
DROP TABLE IF EXISTS userTB;
CREATE TABLE userTB (
  userID int(10) AUTO_INCREMENT NOT NULL,
  userName varchar(30) NOT NULL,
  CONSTRAINT userIDPK PRIMARY KEY (userID)
  );
/* Create User stats Table possible future use */
DROP TABLE IF EXISTS userStatTB;
CREATE TABLE userStatTB (
  userStatID int(10) AUTO_INCREMENT NOT NULL,
  userID int(10) NOT NULL,
  height int(10),
  weight int(10),
  bodyfat int(10),
  chest int(10),
  arms int(10),
  waist int(10),
  thighs int(10),
  calves int(10),
  forearms int(10),
  shoulders int(10),
  kneck int(10),
  hips int(10),
  CONSTRAINT userStatIDPK PRIMARY KEY (userStatID),
  CONSTRAINT userStatIDFK FOREIGN KEY (userID) REFERENCES userTB(userID)
  );
/* Create User stats Table possible future use */  
DROP TABLE IF EXISTS workoutTB;
CREATE TABLE workoutTB (
  workoutID int(10) AUTO_INCREMENT NOT NULL,
  workoutName varchar(30) NOT NULL,
  userID int(10) NOT NULL,
  CONSTRAINT userIDPK PRIMARY KEY (workoutID),
  CONSTRAINT workoutIDFK FOREIGN KEY (userID) REFERENCES userTB(userID)
  );
