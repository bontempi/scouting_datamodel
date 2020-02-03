/* Match Scouting Level 1 */

/* 
   For status items defined as INT's 
   0 = not entered (default)
   1 = false
   2 = true 
*/
   
/*
   Table was originally created with ScouterID and ComputerID as being NOT NULL
   Table was edited live with the following commands and the CREATE TABLE below 
   edited so in the future it will be created properly
ALTER TABLE `team195_scouting`.`MatchScouting` 
CHANGE COLUMN `ComputerID` `ComputerID` INT(11) NULL ,
CHANGE COLUMN `ScouterID` `ScouterID` INT(11) NULL ;
*/

CREATE TABLE IF NOT EXISTS `team195_scouting`.`MatchScouting` (
	`MatchScoutingID` INT AUTO_INCREMENT NOT NULL,
	`EventID` INT NOT NULL,
	`MatchID` INT NOT NULL,
	`ComputerID` INT NULL, 
	`ScouterID` INT NULL,
	`ReviewerID` INT NULL,
	`ScoutingStatus` INT NULL,
	`Team` VARCHAR(10) NOT NULL,
	`TeamMatchNo` INT NULL,
	`AllianceStationID` INT NULL,
	`AutoStartPos` INT NULL,
	`AutoDidNotShow` INT NULL,
	`AutoMoveBonus` INT NULL,
	`AutoBallLow` INT DEFAULT 0,
	`AutoBallOuter` INT DEFAULT 0,
	`AutoBallInner` INT DEFAULT 0,
	`AutoPenalty` INT DEFAULT 0,
	`TeleBallLowZone1` INT DEFAULT 0,
	`TeleBallOuterZone1` INT DEFAULT 0,
	`TeleBallInnerZone1` INT DEFAULT 0,
	`TeleBallOuterZone2` INT DEFAULT 0,
	`TeleBallInnerZone2` INT DEFAULT 0,
	`TeleBallOuterZone3` INT DEFAULT 0,
	`TeleBallInnerZone3` INT DEFAULT 0,
	`TeleBallOuterZone4` INT DEFAULT 0,
	`TeleBallInnerZone4` INT DEFAULT 0,
	`TeleBallOuterZone5` INT DEFAULT 0,
	`TeleBallInnerZone5` INT DEFAULT 0,
	`TeleWheelStage2Time` INT NULL,
	`TeleWheelStage2Status` INT DEFAULT 0,
	`TeleWheelStage2Attempts` INT DEFAULT 0,
	`TeleWheelStage3Time` INT NULL,
	`TeleWheelStage3Status` INT DEFAULT 0,
	`TeleWheelStage3Attempts` INT DEFAULT 0,
	`ClimbStatus` INT DEFAULT 0,
	`ClimbHeight` INT DEFAULT 0,
	`ClimbPosition` INT DEFAULT 0,
	`ClimbMoveOnBar` INT DEFAULT 0,
	`ClimbLevelStatus` INT DEFAULT 0,
	`SummBrokeDown` INT DEFAULT 0,
	`SummLostComm` INT DEFAULT 0,
	`SummSubSystemBroke` INT DEFAULT 0,
	`SummGroundPickup` INT DEFAULT 0,
	`SummHopperLoad` INT DEFAULT 0,
	`SummPlayedDefense` INT DEFAULT 0,
	`SummDefPlayedAgainst` INT DEFAULT 0,
	PRIMARY KEY(`MatchScoutingID`))
ENGINE = InnoDB;