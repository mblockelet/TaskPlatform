CREATE TABLE `tm_source_codes` (
  `ID` bigint(20) NOT NULL,
  `idUser` bigint(20) NOT NULL,
  `idPlatform` bigint(20) NOT NULL,
  `idTask` bigint(20) NOT NULL,
  `sDate` datetime NOT NULL,
  `sLangProg` varchar(30) DEFAULT NULL,
  `sName` varchar(250) NOT NULL,
  `sSource` mediumtext NOT NULL,
  `bEditable` tinyint(4) NOT NULL,
  `bSubmission` tinyint(4) NOT NULL COMMENT 'corresponds to a submission, not fetched by editor',
  `iVersion` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UserTask` (`idUser`,`idTask`,`idPlatform`),
  KEY `idTask` (`idTask`),
  KEY `synchro` (`iVersion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
