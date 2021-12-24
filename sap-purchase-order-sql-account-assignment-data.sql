CREATE TABLE `sap-purchase-order-account-assignment-data`
(
    `PurchaseOrder`           varchar(10) NOT NULL,
    `PurchaseOrderItem`       varchar(5) NOT NULL,
    `AccountAssignmentNumber` varchar(2) NOT NULL,
    `GLAccount`               varchar(10) DEFAULT NULL,
    `BusinessArea`            varchar(4) DEFAULT NULL,
    `CostCenter`              varchar(10) DEFAULT NULL,
    `SalesOrder`              varchar(10) DEFAULT NULL,
    `SalesOrderItem`          varchar(6) DEFAULT NULL,
    `SalesOrderScheduleLine`  varchar(4) DEFAULT NULL,
    `MasterFixedAsset`        varchar(12) DEFAULT NULL,
    `FixedAsset`              varchar(4) DEFAULT NULL,
    `GoodsRecipientName`      varchar(12) DEFAULT NULL,
    `UnloadingPointName`      varchar(25) DEFAULT NULL,
    `ControllingArea`         varchar(4) DEFAULT NULL,
    `CostObject`              varchar(12) DEFAULT NULL,
    `OrderID`                 varchar(12) DEFAULT NULL,
    `ProfitCenter`            varchar(10) DEFAULT NULL,
    `WBSElement`              varchar(8) DEFAULT NULL,
    `ProjectNetwork`          varchar(12) DEFAULT NULL,
    `FunctionalArea`          varchar(16) DEFAULT NULL,
    `TaxCode`                 varchar(2) DEFAULT NULL,
    `CostCtrActivityType`     varchar(6) DEFAULT NULL,
    `IsDeleted`               tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`PurchaseOrder`, `PurchaseOrderItem`, `AccountAssignmentNumber`),
    CONSTRAINT `PurchaseOrder_fk` FOREIGN KEY (`PurchaseOrder`) REFERENCES `sap-purchase-order-header-data-with-address` (`PurchaseOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
