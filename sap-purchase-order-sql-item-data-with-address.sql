CREATE TABLE `sap-purchase-order-item-data-with-address`
(
    `PurchaseOrder`           varchar(10) DEFAULT NULL,
    `PurchaseOrderItem`       varchar(5) DEFAULT NULL,
    `PurchaseOrderItemText`   varchar(40) DEFAULT NULL,
    `Plant`                   varchar(4) DEFAULT NULL,
    `StorageLocation`         varchar(4) DEFAULT NULL,
    `MaterialGroup`           varchar(9) DEFAULT NULL,
    `PurchasingInfoRecord`    varchar(10) DEFAULT NULL,
    `SupplierMaterialNumber`  varchar(35) DEFAULT NULL,
    `OrderQuantity`           varchar(13) DEFAULT NULL,
    `PurchaseOrderQuantityUnit` varchar(3) DEFAULT NULL,
    `OrderPriceUnit`          varchar(3) DEFAULT NULL,
    `DocumentCurrency`        varchar(5) DEFAULT NULL,
    `NetPriceAmount`          varchar(11) DEFAULT NULL,
    `NetPriceQuantity`        varchar(13) DEFAULT NULL,
    `TaxCode`                 varchar(2) DEFAULT NULL,
    `OverdelivTolrtdLmtRatioInPct` varchar(3) DEFAULT NULL,
    `UnlimitedOverdeliveryIsAllowed` tinyint(1) DEFAULT NULL,
    `UnderdelivTolrtdLmtRatioInPct` varchar(3) DEFAULT NULL,
    `IsCompletelyDelivered`   tinyint(1) DEFAULT NULL,
    `IsFinallyInvoiced`       tinyint(1) DEFAULT NULL,
    `PurchaseOrderItemCategory` varchar(1) DEFAULT NULL,
    `AccountAssignmentCategory` varchar(1) DEFAULT NULL,
    `GoodsReceiptIsExpected`  tinyint(1) DEFAULT NULL,
    `GoodsReceiptIsNonValuated` tinyint(1) DEFAULT NULL,
    `InvoiceIsExpected`       tinyint(1) DEFAULT NULL,
    `InvoiceIsGoodsReceiptBased` tinyint(1) DEFAULT NULL,
    `Customer`                varchar(10) DEFAULT NULL,
    `SupplierIsSubcontractor` tinyint(1) DEFAULT NULL,
    `ItemNetWeight`           varchar(13) DEFAULT NULL,
    `ItemWeightUnit`          varchar(3) DEFAULT NULL,
    `IncotermsClassification` varchar(3) DEFAULT NULL,
    `PurchaseRequisition`     varchar(10) DEFAULT NULL,
    `PurchaseRequisitionItem` varchar(5) DEFAULT NULL,
    `RequisitionerName`       varchar(12) DEFAULT NULL,
    `Material`                varchar(40) DEFAULT NULL,
    `InternationalArticleNumber` varchar(18) DEFAULT NULL,
    `DeliveryAddressID`       varchar(10) DEFAULT NULL,
    `DeliveryAddressName`     varchar(50) DEFAULT NULL,
    `DeliveryAddressPostalCode` varchar(10) DEFAULT NULL,
    `DeliveryAddressStreetName` varchar(60) DEFAULT NULL,
    `DeliveryAddressCityName` varchar(40) DEFAULT NULL,
    `DeliveryAddressRegion`   varchar(3) DEFAULT NULL,
    `DeliveryAddressCountry`  varchar(3) DEFAULT NULL,
    `PurchasingDocumentDeletionCode` varchar(1) DEFAULT NULL,
    PRIMARY KEY (`PurchaseOrder`, `PurchaseOrderItem`)
    CONSTRAINT `PurchaseOrder_fk` FOREIGN KEY (`PurchaseOrder`) REFERENCES `sap-purchase-order-header-data-with-address` (`PurchaseOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
