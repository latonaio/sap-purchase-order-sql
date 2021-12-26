CREATE TABLE `sap_purchase_order_schedule_line_data`
(
    `PurchaseOrder`           varchar(10) NOT NULL,
    `PurchaseOrderItem`       varchar(5) NOT NULL,
    `ScheduleLine`            varchar(4) NOT NULL,
    `DelivDateCategory`       varchar(1) DEFAULT NULL,
    `ScheduleLineDeliveryDate` varchar(80) DEFAULT NULL,
    `PurchaseOrderQuantityUnit` varchar(3) DEFAULT NULL,
    `ScheduleLineOrderQuantity` varchar(13) DEFAULT NULL,
    `ScheduleLineDeliveryTime` varchar(80) DEFAULT NULL,
    `PurchaseRequisition`     varchar(10) DEFAULT NULL,
    `PurchaseRequisitionItem` varchar(5) DEFAULT NULL,
    `ScheduleLineCommittedQuantity` varchar(13) DEFAULT NULL,
    PRIMARY KEY (`PurchaseOrder`, `PurchaseOrderItem`, `ScheduleLine`),
    CONSTRAINT `SAPPurchaseOrderScheduleLineData_fk` FOREIGN KEY (`PurchaseOrder`) REFERENCES `sap_purchase_order_header_data_with_address` (`PurchaseOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
