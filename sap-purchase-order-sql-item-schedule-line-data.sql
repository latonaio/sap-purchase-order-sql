CREATE TABLE `sap_purchase_order_item_schedule_line_data`
(
    `PurchasingDocument`      varchar(10) NOT NULL,
    `PurchasingDocumentItem`  varchar(5) NOT NULL,
    `ScheduleLine`            varchar(4) NOT NULL,
    `DelivDateCategory`       varchar(1) DEFAULT NULL,
    `ScheduleLineDeliveryDate` varchar(80) DEFAULT NULL,
    `PurchaseOrderQuantityUnit` varchar(3) DEFAULT NULL,
    `ScheduleLineOrderQuantity` varchar(13) DEFAULT NULL,
    `ScheduleLineDeliveryTime` varchar(80) DEFAULT NULL,
    `PurchaseRequisition`     varchar(10) DEFAULT NULL,
    `PurchaseRequisitionItem` varchar(5) DEFAULT NULL,
    `ScheduleLineCommittedQuantity` varchar(13) DEFAULT NULL,
    PRIMARY KEY (`PurchasingDocument`, `PurchasingDocumentItem`, `ScheduleLine`),
    CONSTRAINT `SAPPurchaseOrderItemScheduleLineData_fk` FOREIGN KEY (`PurchasingDocument`) REFERENCES `sap_purchase_order_header_data_with_address` (`PurchaseOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
