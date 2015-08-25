CREATE TABLE IF NOT EXISTS `history_tm_source_codes` (
  `historyID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID` bigint(20) NOT NULL,
  `idUser` bigint(20) NOT NULL,
  `idPlatform` bigint(20) NOT NULL,
  `idTask` bigint(20) NOT NULL,
  `sDate` datetime NOT NULL,
  `sParams` tinytext DEFAULT NULL,
  `sName` varchar(250) NOT NULL,
  `sSource` mediumtext NOT NULL,
  `bEditable` tinyint(1) NOT NULL,
  `bSubmission` tinyint(1) NOT NULL,
  `bActive` tinyint(1) NOT NULL DEFAULT 0,
  `iVersion` int(11) NOT NULL,
  `iNextVersion` int(11) DEFAULT NULL,
  `bDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`historyID`),
  KEY `UserTask` (`idUser`,`idTask`,`idPlatform`),
  KEY `idTask` (`idTask`),
  KEY `recordID` (`ID`),
  KEY `iVersion` (`iVersion`),
  KEY `iNextVersion` (`iNextVersion`),
  KEY `bDeleted` (`bDeleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
