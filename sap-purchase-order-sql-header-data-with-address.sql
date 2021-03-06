CREATE TABLE `sap_purchase_order_header_data_with_address`
(
    `PurchaseOrder`           varchar(10) NOT NULL,
    `CompanyCode`             varchar(4) DEFAULT NULL,
    `PurchaseOrderType`       varchar(4) DEFAULT NULL,
    `PurchasingProcessingStatus` varchar(2) DEFAULT NULL,
    `CreationDate`            varchar(80) DEFAULT NULL,
    `LastChangeDateTime`      varchar(80) DEFAULT NULL,
    `Supplier`                varchar(10) DEFAULT NULL,
    `Language`                varchar(2) DEFAULT NULL,
    `PaymentTerms`            varchar(4) DEFAULT NULL,
    `PurchasingOrganization`  varchar(4) DEFAULT NULL,
    `PurchasingGroup`         varchar(3) DEFAULT NULL,
    `PurchaseOrderDate`       varchar(80) DEFAULT NULL,
    `DocumentCurrency`        varchar(5) DEFAULT NULL,
    `ExchangeRate`            varchar(9) DEFAULT NULL,
    `ValidityStartDate`       varchar(80) DEFAULT NULL,
    `ValidityEndDate`         varchar(80) DEFAULT NULL,
    `SupplierRespSalesPersonName` varchar(30) DEFAULT NULL,
    `SupplierPhoneNumber`     varchar(16) DEFAULT NULL,
    `SupplyingPlant`          varchar(4) DEFAULT NULL,
    `IncotermsClassification` varchar(3) DEFAULT NULL,
    `ManualSupplierAddressID` varchar(10) DEFAULT NULL,
    `AddressName`             varchar(50) DEFAULT NULL,
    `AddressCityName`         varchar(40) DEFAULT NULL,
    `AddressFaxNumber`        varchar(30) DEFAULT NULL,
    `AddressPostalCode`       varchar(10) DEFAULT NULL,
    `AddressStreetName`       varchar(60) DEFAULT NULL,
    `AddressPhoneNumber`      varchar(30) DEFAULT NULL,
    `AddressRegion`           varchar(3) DEFAULT NULL,
    `AddressCountry`          varchar(3) DEFAULT NULL,
    `PurchasingDocumentDeletionCode` tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`PurchaseOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
