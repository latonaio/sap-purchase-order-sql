CREATE TABLE `sap-purchase-order-schedule-line-data`
(
    `PurchaseOrder`           varchar(10) DEFAULT NULL,
    `PurchaseOrderItem`       varchar(5) DEFAULT NULL,
    `ScheduleLine`            varchar(4) DEFAULT NULL,
    `DelivDateCategory`       varchar(1) DEFAULT NULL,
    `ScheduleLineDeliveryDate` date DEFAULT NULL,
    `PurchaseOrderQuantityUnit` varchar(3) DEFAULT NULL,
    `ScheduleLineOrderQuantity` varchar(13) DEFAULT NULL,
    `ScheduleLineDeliveryTime` time DEFAULT NULL,
    `PurchaseRequisition`     varchar(10) DEFAULT NULL,
    `PurchaseRequisitionItem` varchar(5) DEFAULT NULL,
    `ScheduleLineCommittedQuantity` varchar(13) DEFAULT NULL,
    PRIMARY KEY (`PurchaseOrder`, `PurchaseOrderItem`, `ScheduleLine`)
    CONSTRAINT `PurchaseOrder_fk` FOREIGN KEY (`PurchaseOrder`) REFERENCES `sap-purchase-order-header-data-with-address` (`PurchaseOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
