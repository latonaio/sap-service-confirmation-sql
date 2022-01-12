CREATE TABLE `sap_service_confirmation_item_pricing_element_data`
(
  `ServiceConfirmation`                varchar(10) NOT NULL,
  `ServiceConfirmationItem`            varchar(6) NOT NULL,
  `PricingProcedureStep`               varchar(3) NOT NULL,
  `PricingProcedureCounter`            varchar(3) NOT NULL,
  `ConditionType`                      varchar(4) DEFAULT NULL,
  `ConditionRateValue`                 varchar(25) DEFAULT NULL,
  `ConditionCurrency`                  varchar(5) DEFAULT NULL,
  `ConditionQuantity`                  varchar(6) DEFAULT NULL,
  `ConditionQuantityUnit`              varchar(3) DEFAULT NULL,
    PRIMARY KEY (`ServiceConfirmation`, `ServiceConfirmationItem`),
    CONSTRAINT `SAPServiceConfirmationItemPricingElementData_fk` FOREIGN KEY (`ServiceConfirmation`) REFERENCES `sap_service_confirmation_item_data` (`ServiceConfirmation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
