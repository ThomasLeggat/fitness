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
/* Create table for tracking what body part an exercise works */   
DROP TABLE IF EXISTS exerciseType;
CREATE TABLE exerciseType (
  exerciseTypeID int(10) AUTO_INCREMENT NOT NULL,
  exerciseTypeName varchar(30) NOT NULL,
  CONSTRAINT exerciseIDPK PRIMARY KEY (exerciseTypeID),
  );  
/* Create table for tracking exercises */   
DROP TABLE IF EXISTS exercise;
CREATE TABLE exercise (
  exerciseID int(10) AUTO_INCREMENT NOT NULL,
  exerciseName varchar(30) NOT NULL,
  CONSTRAINT exerciseIDPK PRIMARY KEY (exerciseID),
  );    
  
/* Create table for tracking user generated workouts */  
DROP TABLE IF EXISTS workoutTB;
CREATE TABLE workoutTB (
  workoutID int(10) AUTO_INCREMENT NOT NULL,
  workoutName varchar(30) NOT NULL,
  userID int(10) NOT NULL,
  CONSTRAINT userIDPK PRIMARY KEY (workoutID),
  CONSTRAINT workoutIDFK FOREIGN KEY (userID) REFERENCES userTB(userID)
  );
/* Create table for tracking what exercises are in a user generated workout */
DROP TABLE IF EXISTS workoutExercise;
CREATE TABLE workoutExercise (
  workoutExerciseID int(10) AUTO_INCREMENT NOT NULL,
  workoutExerciseName varchar(30) NOT NULL,
  exerciseID int(10) NOT NULL,
  CONSTRAINT exerciseIDPK PRIMARY KEY (workoutExerciseID),
  CONSTRAINT workoutIDFK FOREIGN KEY (userID) REFERENCES userTB(userID)
  );
