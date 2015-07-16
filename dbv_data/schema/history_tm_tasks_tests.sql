CREATE TABLE `history_tm_tasks_tests` (
  `historyID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID` bigint(20) NOT NULL,
  `idTask` bigint(20) NOT NULL,
  `idSubtask` bigint(20) NOT NULL DEFAULT '-1',
  `sGroupType` enum('Example','User','Evaluation') DEFAULT NULL,
  `idUser` bigint(20) DEFAULT NULL,
  `idPlatform` bigint(20) DEFAULT NULL,
  `iRank` int(11) NOT NULL DEFAULT '0',
  `sName` varchar(30) NOT NULL,
  `sInput` mediumtext NOT NULL,
  `sOutput` mediumtext NOT NULL,
  `iVersion` int(11) NOT NULL DEFAULT '0',
  `iNextVersion` int(11) DEFAULT NULL,
  `bDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`historyID`),
  KEY `iVersion` (`iVersion`),
  KEY `iNextVersion` (`iNextVersion`),
  KEY `bDeleted` (`bDeleted`),
  KEY `TaskGroup` (`idTask`,`sGroupType`),
  KEY `TaskGroupUser` (`idTask`,`sGroupType`,`idUser`,`idPlatform`),
  KEY `idUser` (`idUser`,`idPlatform`),
  KEY `idTask` (`idTask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
