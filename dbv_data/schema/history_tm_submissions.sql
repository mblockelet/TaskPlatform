CREATE TABLE `history_tm_submissions` (
  `historyID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID` bigint(20) NOT NULL,
  `idUser` bigint(20) NOT NULL,
  `idPlatform` bigint(20) NOT NULL,
  `idTask` bigint(20) NOT NULL COMMENT 'Problem''s ID',
  `sDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idSourceCode` int(11) DEFAULT NULL,
  `bManualCorrection` tinyint(4) NOT NULL DEFAULT '0',
  `iSuccess` tinyint(4) NOT NULL DEFAULT '0',
  `nbTestsTotal` int(11) NOT NULL DEFAULT '0',
  `nbTestsPassed` int(11) NOT NULL DEFAULT '0',
  `iScore` int(11) NOT NULL DEFAULT '0',
  `bCompilError` tinyint(4) NOT NULL DEFAULT '0',
  `sCompilMsg` mediumtext NOT NULL,
  `sErrorMsg` mediumtext NOT NULL,
  `sFirstUserOutput` mediumtext NOT NULL,
  `sFirstExpectedOutput` mediumtext NOT NULL,
  `sManualScoreDiffComment` varchar(255) NOT NULL,
  `bEvaluated` tinyint(4) NOT NULL DEFAULT '0',
  `sMode` enum('Submitted','LimitedTime','Contest') NOT NULL DEFAULT 'Submitted',
  `iChecksum` int(11) NOT NULL DEFAULT '0',
  `iVersion` int(11) NOT NULL,
  `iNextVersion` int(11) DEFAULT NULL,
  `bDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`historyID`),
  KEY `iVersion` (`iVersion`),
  KEY `iNextVersion` (`iNextVersion`),
  KEY `bDeleted` (`bDeleted`),
  KEY `checksum` (`iChecksum`),
  KEY `date` (`sDate`),
  KEY `user` (`idUser`,`idPlatform`),
  KEY `idTask` (`idTask`),
  KEY `userTask` (`idTask`,`idUser`,`idPlatform`),
  KEY `idSourceCode` (`idSourceCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8