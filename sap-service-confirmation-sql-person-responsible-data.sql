CREATE TABLE `sap_service_confirmation_person_responsible_data`
(
  `ServiceConfirmation`                varchar(10) NOT NULL,
  `PersonResponsible`                  varchar(10) DEFAULT NULL,
  `CustMgmtPartnerIsMainPartner`       tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`ServiceConfirmation`),
    CONSTRAINT `SAPServiceConfirmationPersonResponsibleData_fk` FOREIGN KEY (`ServiceConfirmation`) REFERENCES `sap_service_confirmation_header_data` (`ServiceConfirmation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
