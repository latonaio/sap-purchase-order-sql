CREATE TABLE `sap_purchase_order_item_pricing_element_data`
(
    `PurchaseOrder`               varchar(10) NOT NULL,
    `PurchaseOrderItem`           varchar(5) NOT NULL,
    `PricingProcedureStep`        varchar(3) NOT NULL,
    `PricingProcedureCounter`     varchar(3) NOT NULL,
    `PricingDocument`             varchar(10) DEFAULT NULL,
    `PricingDocumentItem`         varchar(6) DEFAULT NULL,
    `ConditionType`               varchar(4) DEFAULT NULL,
    `ConditionRateValue`          varchar(25) DEFAULT NULL,
    `ConditionCurrency`           varchar(5) DEFAULT NULL,
    `PriceDetnExchangeRate`       varchar(12) DEFAULT NULL,
    `TransactionCurrency`         varchar(5) DEFAULT NULL,
    `ConditionAmount`             varchar(25) DEFAULT NULL,
    `ConditionQuantityUnit`       varchar(3) DEFAULT NULL,
    `ConditionQuantity`           varchar(6) DEFAULT NULL,
    `ConditionApplication`        varchar(2) DEFAULT NULL,
    `PricingDateTime`             varchar(80) DEFAULT NULL,
    `ConditionCalculationType`    varchar(3) DEFAULT NULL,
    `ConditionBaseValue`          varchar(25) DEFAULT NULL,
    `ConditionToBaseQtyNmrtr`     varchar(11) DEFAULT NULL,
    `ConditionToBaseQtyDnmntr`    varchar(11) DEFAULT NULL,
    `ConditionCategory`           varchar(1) DEFAULT NULL,
    `PricingScaleType`            varchar(1) DEFAULT NULL,
    `ConditionOrigin`             varchar(1) DEFAULT NULL,
    `IsGroupCondition`            varchar(1) DEFAULT NULL,
    `ConditionSequentialNumber`   varchar(3) DEFAULT NULL,
    `ConditionInactiveReason`     varchar(1) DEFAULT NULL,
    `PricingScaleBasis`           varchar(3) DEFAULT NULL,
    `ConditionScaleBasisValue`    varchar(25) DEFAULT NULL,
    `ConditionScaleBasisCurrency` varchar(5) DEFAULT NULL,
    `ConditionScaleBasisUnit`     varchar(3) DEFAULT NULL,
    `ConditionIsManuallyChanged`  tinyint(1) DEFAULT NULL,
    `ConditionRecord`             varchar(10) DEFAULT NULL,
    PRIMARY KEY (`PurchaseOrder`, `PurchaseOrderItem`, `PricingProcedureStep`, `PricingProcedureCounter`),
    CONSTRAINT `SAPPurchaseOrderItemPricingElementData_fk` FOREIGN KEY (`PurchaseOrder`) REFERENCES `sap_purchase_order_header_data_with_address` (`PurchaseOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
