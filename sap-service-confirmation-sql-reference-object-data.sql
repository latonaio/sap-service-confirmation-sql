CREATE TABLE `sap_service_confirmation_reference_object_data`
(
  `ServiceConfirmation`                varchar(10) NOT NULL,
  `ServiceReferenceEquipment`          varchar(18) DEFAULT NULL,
  `ServiceRefFunctionalLocation`       varchar(40) DEFAULT NULL,
  `SrvcRefObjIsMainObject`             tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`ServiceConfirmation`),
    CONSTRAINT `SAPServiceConfirmationReferenceObjectData_fk` FOREIGN KEY (`ServiceConfirmation`) REFERENCES `sap_service_confirmation_general_data` (`ServiceConfirmation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
