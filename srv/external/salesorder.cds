/* checksum : ac16a3cf5b5d9bab5a6b9d7f123f072c */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
service salesorder {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order'
entity salesorder.CustomerOrderCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'InformationLifeCycleStatusCodeText'
  @sap.label : 'Data Privacy Status'
  InformationLifeCycleStatusCode : String(2);
  @sap.label : 'Data Privacy Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  InformationLifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'ClassificationCodeText'
  @sap.label : 'Incoterms'
  ClassificationCode : String(3);
  @sap.label : 'Incoterms Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  ClassificationCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'External Reference'
  BuyerID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'FulfilmentBlockingReasonCodeText'
  @sap.label : 'Delivery Block'
  FulfilmentBlockingReasonCode : String(2);
  @sap.label : 'Delivery Block Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  FulfilmentBlockingReasonCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'ID'
  ID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'InvoicingBlockingReasonCodeText'
  @sap.label : 'Billing Block'
  InvoicingBlockingReasonCode : String(2);
  @sap.label : 'Billing Block Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  InvoicingBlockingReasonCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Changed On'
  @sap.display.format : 'Date'
  LastChangeDate : Date;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'OrderExternalLifeCycleStatusCodeText'
  @sap.label : 'Status'
  OrderExternalLifeCycleStatusCode : String(2);
  @sap.label : 'Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  OrderExternalLifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Name : String(255);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'LanguageCodeText'
  @sap.label : 'Language'
  LanguageCode : String(2);
  @sap.label : 'Language Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  LanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ProcessingTypeCodeText'
  @sap.label : 'Document Type'
  ProcessingTypeCode : String(4);
  @sap.label : 'Document Type Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ProcessingTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'ItemListCancellationStatusCodeText'
  @sap.label : 'Cancellation Status'
  ItemListCancellationStatusCode : String(2);
  @sap.label : 'Cancellation Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  ItemListCancellationStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ItemListFulfilmentProcessingStatusCodeText'
  @sap.label : 'Delivery Status'
  ItemListFulfilmentProcessingStatusCode : String(2);
  @sap.label : 'Delivery Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ItemListFulfilmentProcessingStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ApprovalStatusCodeText'
  @sap.label : 'Approval Status'
  ApprovalStatusCode : String(2);
  @sap.label : 'Approval Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ApprovalStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ConsistencyStatusCodeText'
  @sap.label : 'Consistency Status'
  ConsistencyStatusCode : String(2);
  @sap.label : 'Consistency Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ConsistencyStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'OverallBlockingStatusCodeText'
  @sap.label : 'Blocking Status'
  OverallBlockingStatusCode : String(2);
  @sap.label : 'Blocking Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  OverallBlockingStatusCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ReplicationProcessingStatusCodeText'
  @sap.label : 'Transfer Status'
  ReplicationProcessingStatusCode : String(2);
  @sap.label : 'Transfer Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ReplicationProcessingStatusCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'DistributionChannelCodeText'
  @sap.label : 'Distribution Channel'
  DistributionChannelCode : String(2);
  @sap.label : 'Distribution Channel Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DistributionChannelCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'DivisionCodeText'
  @sap.label : 'Division'
  DivisionCode : String(2);
  @sap.label : 'Division Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DivisionCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Sales Group'
  SalesGroupID : String(20);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Sales Office'
  SalesOfficeID : String(20);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Sales Organization'
  SalesOrganisationID : String(20);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Sales Territory'
  SalesTerritoryID : String(6);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Account ID'
  BuyerPartyID : String(60) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'DeliveryPriorityCodeText'
  @sap.label : 'Delivery Priority'
  DeliveryPriorityCode : String(2);
  @sap.label : 'Delivery Priority Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  DeliveryPriorityCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Incoterms Location'
  TransferLocationName : String(28);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Owner ID'
  EmployeeResponsiblePartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Account Name'
  BuyerPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Owner Name'
  EmployeeResponsiblePartyName : String(480);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Primary Contact'
  BuyerContactPartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Primary Contact Name'
  BuyerContactPartyName : String(480);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CurrencyCodeText'
  @sap.label : 'Currency'
  CurrencyCode : String(3);
  @sap.label : 'Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CurrencyCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Pricing Date'
  PriceDateTime : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Ship-To Party ID'
  ProductRecipientPartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Ship-To Party Name'
  ProductRecipientPartyName : String(480);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Requested Date'
  RequestedFulfillmentStartDateTime : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'timeZoneCodeText'
  @sap.label : 'Time Zone'
  timeZoneCode : String(10);
  @sap.label : 'Time Zone Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  timeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CancellationReasonCodeText'
  @sap.label : 'Reason for Rejection'
  CancellationReasonCode : String(4);
  @sap.label : 'Reason for Rejection Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CancellationReasonCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Sales Unit'
  SalesUnitPartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'CalculationStatusCodeText'
  @sap.label : 'Pricing Status'
  CalculationStatusCode : String(2);
  @sap.label : 'Pricing Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CalculationStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'ExternalPriceDocumentBaseBusinessTransactionDocumentUUID'
  ExternalPriceDocumentBaseBusinessTransactionDocumentUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'PricingProcedureCodeText'
  @sap.label : 'Pricing Procedure'
  PricingProcedureCode : String(6);
  @sap.label : 'Pricing Procedure Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  PricingProcedureCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Creation Date'
  DateTime : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'OrderReasonCodeText'
  @sap.label : 'Order Reason'
  OrderReasonCode : String(3);
  @sap.label : 'Order Reason Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  OrderReasonCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'MaintenanceModeInternalOnlyMainDiscount'
  MaintenanceModeInternalOnlyMainDiscount : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Net Value'
  NetAmount : Decimal(28, 6);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'NetAmountCurrencyCodeText'
  @sap.label : 'Net Value Currency'
  NetAmountCurrencyCode : String(3);
  @sap.label : 'Net Value Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  NetAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Total'
  GrossAmount : Decimal(28, 6);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'GrossAmountCurrencyCodeText'
  @sap.label : 'Total Currency'
  GrossAmountCurrencyCode : String(3);
  @sap.label : 'Total Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  GrossAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Tax'
  TaxAmount : Decimal(28, 6);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'TaxAmountCurrencyCodeText'
  @sap.label : 'Tax Currency'
  TaxAmountCurrencyCode : String(3);
  @sap.label : 'Tax Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TaxAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'InternalPricingProcedureCodeText'
  @sap.label : 'Internal Pricing Procedure'
  InternalPricingProcedureCode : String(6);
  @sap.label : 'Internal Pricing Procedure Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  InternalPricingProcedureCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'InternalPricingCalculationStatusCodeText'
  @sap.label : 'Internal Pricing Status'
  InternalPricingCalculationStatusCode : String(2);
  @sap.label : 'Internal Pricing Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  InternalPricingCalculationStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Net Weight'
  NetWeightMeasure : Decimal(31, 14);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'NetWeightUnitCodeText'
  @sap.label : 'Net Weight UoM'
  NetWeightUnitCode : String(3);
  @sap.label : 'Net Weight UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  NetWeightUnitCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Gross Weight'
  GrossWeightMeasure : Decimal(31, 14);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'GrossWeightUnitCodeText'
  @sap.label : 'Gross Weight UoM'
  GrossWeightUnitCode : String(3);
  @sap.label : 'Gross Weight UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  GrossWeightUnitCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Volume'
  VolumeMeasure : Decimal(31, 14);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'VolumeUnitCodeText'
  @sap.label : 'Volume UoM'
  VolumeUnitCode : String(3);
  @sap.label : 'Volume UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  VolumeUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Simulate'
  Simulate : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'SubmitForApproval'
  SubmitForApproval : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Transfer'
  Transfer : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'WithdrawFromApproval'
  WithdrawFromApproval : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'SetAsCompleted'
  SetAsCompleted : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Plant Party ID'
  PlantPartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Plant Party Name'
  PlantPartyName : String(80);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Changed By'
  LastChangedBy : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Created By UUID'
  CreationIdentityUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Last Changed By UUID'
  LastChangeIdentityUUID : UUID;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrderAttachmentFolder : Association to many salesorder.CustomerOrderAttachmentFolderCollection {  };
  CustomerOrderBusinessTransactionDocumentReference : Association to many salesorder.CustomerOrderBusinessTransactionDocumentReferenceCollection {  };
  CustomerOrderCashDiscountTerms : Association to salesorder.CustomerOrderCashDiscountTermsCollection {  };
  CustomerOrderExternalPriceComponent : Association to many salesorder.CustomerOrderExternalPriceComponentCollection {  };
  CustomerOrderItem : Association to many salesorder.CustomerOrderItemCollection {  };
  CustomerOrderParty : Association to many salesorder.CustomerOrderPartyCollection {  };
  CustomerOrderPriceComponent : Association to many salesorder.CustomerOrderPriceComponentCollection {  };
  CustomerOrderRegisteredProduct : Association to many salesorder.CustomerOrderRegisteredProductCollection {  };
  CustomerOrderTextCollection : Association to many salesorder.CustomerOrderTextCollectionCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Item'
entity salesorder.CustomerOrderItemCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Description'
  Description : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'languageCodeText'
  @sap.label : 'Language'
  languageCode : String(2);
  @sap.label : 'Language Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  languageCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Created On'
  @sap.display.format : 'Date'
  CreationDate : Date;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Parent Line'
  ParentItemID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Line'
  ID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'ProcessingTypeCodeText'
  @sap.label : 'Item Type'
  ProcessingTypeCode : String(4);
  @sap.label : 'Item Type Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  ProcessingTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Product ID'
  ProductID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Product Standard ID'
  ProductStandardID : String(14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Product Internal ID'
  ProductInternalID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Quantity'
  Quantity : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'QuantityMeasureUnitCodeText'
  @sap.label : 'UoM'
  QuantityMeasureUnitCode : String(3);
  @sap.label : 'UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  QuantityMeasureUnitCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Requested Date'
  StartDateTime : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TimeZoneCodeText'
  @sap.label : 'Time Zone'
  TimeZoneCode : String(10);
  @sap.label : 'Time Zone Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'SalesTermsCancellationReasonCodeText'
  @sap.label : 'Reason for Rejection'
  SalesTermsCancellationReasonCode : String(4);
  @sap.label : 'Reason for Rejection Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  SalesTermsCancellationReasonCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'MaintenanceModeInternalOnlyItemMainDiscount'
  MaintenanceModeInternalOnlyItemMainDiscount : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Person Responsible'
  ItemProductRecipientBusinessPartnerInternalID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Buyer ID'
  BuyerID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Product Buyer ID'
  ProductBuyerID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Net Value'
  NetAmount : Decimal(28, 6);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'NetAmountCurrencyCodeText'
  @sap.label : 'Net Value Currency'
  NetAmountCurrencyCode : String(3);
  @sap.label : 'Net Value Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  NetAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Net Price'
  NetPriceAmount : Decimal(28, 6);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'NetPriceAmountCurrencyCodeText'
  @sap.label : 'Net Price Currency'
  NetPriceAmountCurrencyCode : String(3);
  @sap.label : 'Net Price Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  NetPriceAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Tax Amount'
  TaxAmount : Decimal(28, 6);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'TaxAmountCurrencyCodeText'
  @sap.label : 'Tax Amount Currency'
  TaxAmountCurrencyCode : String(3);
  @sap.label : 'Tax Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TaxAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Net Weight'
  NetWeightMeasure : Decimal(31, 14);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'NetWeightUnitCodeText'
  @sap.label : 'Net Weight UoM'
  NetWeightUnitCode : String(3);
  @sap.label : 'Net Weight UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  NetWeightUnitCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Gross Weight'
  GrossWeightMeasure : Decimal(31, 14);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'GrossWeightUnitCodeText'
  @sap.label : 'Gross Weight UoM'
  GrossWeightUnitCode : String(3);
  @sap.label : 'Gross Weight UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  GrossWeightUnitCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Volume'
  VolumeMeasure : Decimal(31, 14);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'VolumeUnitCodeText'
  @sap.label : 'Volume UoM'
  VolumeUnitCode : String(3);
  @sap.label : 'Volume UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  VolumeUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Net Price Unit'
  NetPriceBaseQuantity : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'NetPriceBaseQuantityunitCodeText'
  @sap.label : 'Net Price UoM'
  NetPriceBaseQuantityunitCode : String(3);
  @sap.label : 'Net Price UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  NetPriceBaseQuantityunitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Plant Party ID'
  PlantPartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Plant Name'
  PlantName : String(80);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'LifeCycleStatusCodeText'
  @sap.label : 'Overall Status'
  LifeCycleStatusCode : String(2);
  @sap.label : 'Overall Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  LifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'CancellationStatusCodeText'
  @sap.label : 'Cancellation Status'
  CancellationStatusCode : String(2);
  @sap.label : 'Cancellation Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  CancellationStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'FulfilmentProcessingStatusCodeText'
  @sap.label : 'Delivery Status'
  FulfilmentProcessingStatusCode : String(2);
  @sap.label : 'Delivery Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  FulfilmentProcessingStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'InvoiceProcessingStatusCodeText'
  @sap.label : 'Billing Status'
  InvoiceProcessingStatusCode : String(2);
  @sap.label : 'Billing Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  InvoiceProcessingStatusCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
  CustomerOrderFirstRequestedItemScheduleLine : Association to salesorder.CustomerOrderFirstRequestedItemScheduleLineCollection {  };
  CustomerOrderItemAttachmentFolder : Association to many salesorder.CustomerOrderItemAttachmentFolderCollection {  };
  CustomerOrderItemBusinessTransactionDocumentReference : Association to many salesorder.CustomerOrderItemBusinessTransactionDocumentReferenceCollection {  };
  CustomerOrderItemExternalPriceComponent : Association to many salesorder.CustomerOrderItemExternalPriceComponentCollection {  };
  CustomerOrderItemParty : Association to many salesorder.CustomerOrderItemPartyCollection {  };
  CustomerOrderItemPriceComponent : Association to many salesorder.CustomerOrderItemPriceComponentCollection {  };
  CustomerOrderItemTextCollection : Association to many salesorder.CustomerOrderItemTextCollectionCollection {  };
  CustomerOrderItemTotalValuesPricingSubtotal : Association to many salesorder.CustomerOrderItemTotalValuesPricingSubtotalCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Party'
entity salesorder.CustomerOrderPartyCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TimeZoneCodeText'
  @sap.label : 'Time Zone'
  TimeZoneCode : String(10);
  @sap.label : 'Time Zone Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TimeZoneCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'PartyName'
  PartyName : String(480);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Party ID'
  PartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RoleCodeText'
  @sap.label : 'Party Role'
  RoleCode : String(10);
  @sap.label : 'Party Role Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'PreferredCommunicationMediumTypeCodeText'
  @sap.label : 'Preferred Method of Contact'
  PreferredCommunicationMediumTypeCode : String(3);
  @sap.label : 'Preferred Method of Contact Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  PreferredCommunicationMediumTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Main'
  MainIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Phone'
  ConventionalPhone : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'E-Mail'
  Email : String(765);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Web Site'
  Web : String(1280);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Fax'
  Fax : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Mobile Phone'
  MobilePhone : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'FirstLineName'
  FirstLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'SecondLineName'
  SecondLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'ThirdLineName'
  ThirdLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'FourthLineName'
  FourthLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'c/o'
  CareOfName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'City'
  CityName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CountryCodeText'
  @sap.label : 'Country/Region'
  CountryCode : String(3);
  @sap.label : 'Country/Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CountryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'County'
  CountyName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'District'
  DistrictName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 1'
  StreetPrefixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 2'
  AdditionalStreetPrefixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'House Number'
  HouseID : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Street'
  StreetName : String(360);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 4'
  StreetSuffixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 5'
  AdditionalStreetSuffixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RegionCodeText'
  @sap.label : 'Region'
  RegionCode : String(6);
  @sap.label : 'Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RegionCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Postal Code'
  StreetPostalCode : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'POBoxIndicator'
  POBoxIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box'
  POBoxID : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box Postal Code'
  POBoxPostalCode : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box City'
  POBoxDeviatingCityName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'POBoxDeviatingCountryCodeText'
  @sap.label : 'P.O. Box Country/Region'
  POBoxDeviatingCountryCode : String(3);
  @sap.label : 'P.O. Box Country/Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  POBoxDeviatingCountryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'POBoxDeviatingRegionCodeText'
  @sap.label : 'P.O. Box State'
  POBoxDeviatingRegionCode : String(6);
  @sap.label : 'P.O. Box State Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  POBoxDeviatingRegionCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'PartyTypeCodeText'
  @sap.label : 'Party Type'
  PartyTypeCode : String(15);
  @sap.label : 'Party Type Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  PartyTypeCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
  CustomerOrderPartyContactParty : Association to many salesorder.CustomerOrderPartyContactPartyCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Party Contact Party'
entity salesorder.CustomerOrderPartyContactPartyCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Party ID'
  PartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Main'
  MainIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Primary Contact'
  ContactPartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'PreferredCommunicationMediumTypeCodeText'
  @sap.label : 'Preferred Method of Contact'
  PreferredCommunicationMediumTypeCode : String(3);
  @sap.label : 'Preferred Method of Contact Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  PreferredCommunicationMediumTypeCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Phone'
  ConventionalPhone : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'E-Mail'
  Email : String(765);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Fax'
  Fax : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Mobile Phone'
  Mobile : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Web Site'
  Web : String(1280);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'ContactPartyName'
  ContactPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'FirstLineName'
  FirstLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'SecondLineName'
  SecondLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'ThirdLineName'
  ThirdLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TimeZoneCodeText'
  @sap.label : 'Time Zone'
  TimeZoneCode : String(10);
  @sap.label : 'Time Zone Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TimeZoneCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'FourthLineName'
  FourthLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CountryCodeText'
  @sap.label : 'Country/Region'
  CountryCode : String(3);
  @sap.label : 'Country/Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CountryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'c/o'
  CareOfName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 1'
  StreetPrefixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 2'
  AdditionalStreetPrefixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'House Number'
  HouseID : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Street'
  StreetName : String(360);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 4'
  StreetSuffixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 5'
  AdditionalStreetSuffixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'City'
  CityName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RegionCodeText'
  @sap.label : 'Region'
  RegionCode : String(6);
  @sap.label : 'Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RegionCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Postal Code'
  StreetPostalCode : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'District'
  DistrictName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'County'
  CountyName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'POBoxIndicator'
  POBoxIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box'
  POBoxID : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box Postal Code'
  POBoxPostalCode : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box City'
  POBoxDeviatingCityName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'POBoxDeviatingCountryCodeText'
  @sap.label : 'P.O. Box Country/Region'
  POBoxDeviatingCountryCode : String(3);
  @sap.label : 'P.O. Box Country/Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  POBoxDeviatingCountryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'POBoxDeviatingRegionCodeText'
  @sap.label : 'P.O. Box State'
  POBoxDeviatingRegionCode : String(6);
  @sap.label : 'P.O. Box State Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  POBoxDeviatingRegionCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
  CustomerOrderParty : Association to salesorder.CustomerOrderPartyCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Text Collection'
entity salesorder.CustomerOrderTextCollectionCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'SalesOrderID'
  SalesOrderID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Text'
  Text : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'LanguageCodeText'
  @sap.label : 'Language Code'
  LanguageCode : String(2);
  @sap.label : 'Language Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  LanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Type Code'
  TypeCode : String(5);
  @sap.label : 'Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Author Name'
  AuthorName : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Author UUID'
  AuthorUUID : UUID;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created On'
  CreatedOn : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(80);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Updated On'
  UpdatedOn : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated By'
  LastUpdatedBy : String(80);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Attachments'
entity salesorder.CustomerOrderAttachmentFolderCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Binary'
  Binary : LargeBinary;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'CategoryCodeText'
  @sap.label : 'Category Code'
  CategoryCode : String(1) not null;
  @sap.label : 'Category Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  CategoryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(80);
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created On'
  CreatedOn : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Document Link'
  DocumentLink : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated By'
  LastUpdatedBy : String(80);
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated On'
  LastUpdatedOn : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Link Web URI'
  LinkWebURI : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Mime Type'
  MimeType : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Name'
  Name : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Size In KiloBytes'
  SizeInkB : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Type Code'
  TypeCode : String(5);
  @sap.label : 'Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'UUID'
  UUID : UUID not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Item Text Collection'
entity salesorder.CustomerOrderItemTextCollectionCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Text'
  Text : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'LanguageCodeText'
  @sap.label : 'Language Code'
  LanguageCode : String(2);
  @sap.label : 'Language Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  LanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Type Code'
  TypeCode : String(5);
  @sap.label : 'Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Author Name'
  AuthorName : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Author UUID'
  AuthorUUID : UUID;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created On'
  CreatedOn : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(80);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Updated On'
  UpdatedOn : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated By'
  LastUpdatedBy : String(80);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  SalesOrderItemID : String(10);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  CustomerOrderItem : Association to salesorder.CustomerOrderItemCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Item Party'
entity salesorder.CustomerOrderItemPartyCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Web Site'
  Web : String(1280);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Mobile Phone'
  MobilePhone : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Fax'
  Fax : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'E-Mail'
  Email : String(765);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Phone'
  ConventionalPhone : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  ID : String(10);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'PreferredCommunicationMediumTypeCodeText'
  @sap.label : 'Preferred Method of Contact'
  PreferredCommunicationMediumTypeCode : String(3);
  @sap.label : 'Preferred Method of Contact Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  PreferredCommunicationMediumTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Party ID'
  PartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RoleCodeText'
  @sap.label : 'RoleCode'
  RoleCode : String(10);
  @sap.label : 'RoleCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TimeZoneCodeText'
  @sap.label : 'Time Zone'
  TimeZoneCode : String(10);
  @sap.label : 'Time Zone Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TimeZoneCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 4'
  StreetSuffixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 1'
  StreetPrefixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Street'
  StreetName : String(360);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'FirstLineName'
  FirstLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'FourthLineName'
  FourthLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'SecondLineName'
  SecondLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'ThirdLineName'
  ThirdLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'c/o'
  CareOfName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'City'
  CityName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CountryCodeText'
  @sap.label : 'Country/Region'
  CountryCode : String(3);
  @sap.label : 'Country/Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CountryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'County'
  CountyName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'House Number'
  HouseID : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 2'
  AdditionalStreetPrefixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 5'
  AdditionalStreetSuffixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box City'
  POBoxDeviatingCityName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'POBoxDeviatingCountryCodeText'
  @sap.label : 'P.O. Box Country/Region'
  POBoxDeviatingCountryCode : String(3);
  @sap.label : 'P.O. Box Country/Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  POBoxDeviatingCountryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'POBoxDeviatingRegionCodeText'
  @sap.label : 'P.O. Box State'
  POBoxDeviatingRegionCode : String(6);
  @sap.label : 'P.O. Box State Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  POBoxDeviatingRegionCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box'
  POBoxID : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'POBoxIndicator'
  POBoxIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box Postal Code'
  POBoxPostalCode : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RegionCodeText'
  @sap.label : 'Region'
  RegionCode : String(6);
  @sap.label : 'Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RegionCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'PartyTypeCodeText'
  @sap.label : 'Party Type'
  PartyTypeCode : String(15);
  @sap.label : 'Party Type Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  PartyTypeCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
  CustomerOrderItem : Association to salesorder.CustomerOrderItemCollection {  };
  CustomerOrderItemPartyContactParty : Association to many salesorder.CustomerOrderItemPartyContactPartyCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'First Requested Item Schedule Line (Deprecated)'
entity salesorder.CustomerOrderFirstRequestedItemScheduleLineCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'ID'
  ID : String(4);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Quantity'
  Quantity : Decimal(31, 14);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'unitCodeText'
  @sap.label : 'UoM'
  unitCode : String(3);
  @sap.label : 'UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  unitCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'EndDateTime'
  EndDateTime : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'EndDateTimeZoneCodeText'
  @sap.label : 'EndDateTimeZoneCode'
  EndDateTimeZoneCode : String(10);
  @sap.label : 'EndDateTimeZoneCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  EndDateTimeZoneCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'StartDateTime'
  StartDateTime : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'StartDateTimeZoneCodeText'
  @sap.label : 'StartDateTimeZoneCode'
  StartDateTimeZoneCode : String(10);
  @sap.label : 'StartDateTimeZoneCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  StartDateTimeZoneCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  ItemLine : String(10);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
  CustomerOrderItem : Association to salesorder.CustomerOrderItemCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Business Transaction Document Reference'
entity salesorder.CustomerOrderBusinessTransactionDocumentReferenceCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Business System ID'
  BusinessSystemID : String(32);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Reference Type'
  TypeCode : String(15);
  @sap.label : 'Reference Type Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'UUID'
  UUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RoleCodeText'
  @sap.label : 'Reference Role'
  RoleCode : String(3);
  @sap.label : 'Reference Role Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Reference ID'
  ID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Cash Discount Terms'
entity salesorder.CustomerOrderCashDiscountTermsCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CodeText'
  @sap.label : 'Payment Terms'
  Code : String(4);
  @sap.label : 'Payment Terms Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Item Business Transaction Document Reference'
entity salesorder.CustomerOrderItemBusinessTransactionDocumentReferenceCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'BusinessTransactionDocumentRelationshipRoleCodeText'
  @sap.label : 'Relationship Role'
  BusinessTransactionDocumentRelationshipRoleCode : String(3);
  @sap.label : 'Relationship Role Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  BusinessTransactionDocumentRelationshipRoleCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Reference Doc Item ID'
  ItemID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'ItemTypeCodeText'
  @sap.label : 'Reference Doc Item Type'
  ItemTypeCode : String(5);
  @sap.label : 'Reference Doc Item Type Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  ItemTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'ItemUUID'
  ItemUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Reference Doc Type'
  TypeCode : String(15);
  @sap.label : 'Reference Doc Type Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'UUID'
  UUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  LineItemID : String(10);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Reference Doc ID'
  ID : String(35);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
  CustomerOrderItem : Association to salesorder.CustomerOrderItemCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.label : 'Sales Order Item Total Values Pricing Subtotal'
entity salesorder.CustomerOrderItemTotalValuesPricingSubtotalCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Amount'
  Amount : Decimal(28, 6);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CurrencyCodeText'
  @sap.label : 'CurrencyCode'
  CurrencyCode : String(3);
  @sap.label : 'CurrencyCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CurrencyCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TypeCodeText'
  @sap.label : 'TypeCode'
  TypeCode : String(2);
  @sap.label : 'TypeCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TypeCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  LineItemID : String(10);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
  CustomerOrderItem : Association to salesorder.CustomerOrderItemCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Item Party Contact Party'
entity salesorder.CustomerOrderItemPartyContactPartyCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Street'
  StreetName : String(360);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 1'
  StreetPrefixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 4'
  StreetSuffixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TimeZoneCodeText'
  @sap.label : 'Time Zone'
  TimeZoneCode : String(10);
  @sap.label : 'Time Zone Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Main'
  MainIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Contact Party ID'
  ContactPartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Item Party ID'
  ItemPartyID : String(60);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  LineItemID : String(10);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'PreferredCommunicationMediumTypeCodeText'
  @sap.label : 'Preferred Method of Contact'
  PreferredCommunicationMediumTypeCode : String(3);
  @sap.label : 'Preferred Method of Contact Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  PreferredCommunicationMediumTypeCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'ContactPartyName'
  ContactPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Phone'
  ConventionalPhone : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'E-Mail'
  Email : String(765);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Fax'
  Fax : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Mobile'
  MobilePhone : String(350);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Web Site'
  Web : String(1280);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'FirstLineName'
  FirstLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'SecondLineName'
  SecondLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'ThirdLineName'
  ThirdLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'FourthLineName'
  FourthLineName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'c/o'
  CareOfName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'City'
  CityName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 2'
  AdditionalStreetPrefixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Address Line 5'
  AdditionalStreetSuffixName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CountryCodeText'
  @sap.label : 'Country/Region'
  CountryCode : String(3);
  @sap.label : 'Country/Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CountryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'County'
  CountyName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'District'
  DistrictName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'House Number'
  HouseID : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box City'
  POBoxDeviatingCityName : String(240);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'POBoxDeviatingCountryCodeText'
  @sap.label : 'P.O. Box Country/Region'
  POBoxDeviatingCountryCode : String(3);
  @sap.label : 'P.O. Box Country/Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  POBoxDeviatingCountryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'POBoxDeviatingRegionCodeText'
  @sap.label : 'P.O. Box State'
  POBoxDeviatingRegionCode : String(6);
  @sap.label : 'P.O. Box State Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  POBoxDeviatingRegionCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box'
  POBoxID : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'POBoxIndicator'
  POBoxIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'P.O. Box Postal Code'
  POBoxPostalCode : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RegionCodeText'
  @sap.label : 'Region'
  RegionCode : String(6);
  @sap.label : 'Region Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RegionCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
  CustomerOrderItemParty : Association to salesorder.CustomerOrderItemPartyCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Item Attachments'
entity salesorder.CustomerOrderItemAttachmentFolderCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Binary'
  Binary : LargeBinary;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'CategoryCodeText'
  @sap.label : 'Category Code'
  CategoryCode : String(1) not null;
  @sap.label : 'Category Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  CategoryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(80);
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created On'
  CreatedOn : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Document Link'
  DocumentLink : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated By'
  LastUpdatedBy : String(80);
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated On'
  LastUpdatedOn : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Link Web URI'
  LinkWebURI : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Mime Type'
  MimeType : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Name'
  Name : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Size In KiloBytes'
  SizeInkB : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Type Code'
  TypeCode : String(5);
  @sap.label : 'Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'UUID'
  UUID : UUID not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order External Pricing'
entity salesorder.CustomerOrderExternalPriceComponentCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Price Component'
  TypeCode : String(4);
  @sap.label : 'Price Component Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Step'
  MajorLevelOrdinalNumberValue : Integer;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Counter'
  MinorLevelOrdinalNumberValue : Integer;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CategoryCodeText'
  @sap.label : 'Category'
  CategoryCode : String(1);
  @sap.label : 'Category Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CategoryCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Amount'
  RateDecimalValue : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateCurrencyCodeText'
  @sap.label : 'Amount Currency'
  RateCurrencyCode : String(3);
  @sap.label : 'Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateMeasureUnitCodeText'
  @sap.label : 'Amount UoM'
  RateMeasureUnitCode : String(3);
  @sap.label : 'Amount UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateMeasureUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'For'
  RateBaseDecimalValue : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateBaseMeasureUnitCodeText'
  @sap.label : 'For UoM'
  RateBaseMeasureUnitCode : String(3);
  @sap.label : 'For UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateBaseMeasureUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Calculated Amount'
  CalculatedAmount : Decimal(28, 6);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CalculatedAmountCurrencyCodeText'
  @sap.label : 'Calculated Amount Currency'
  CalculatedAmountCurrencyCode : String(3);
  @sap.label : 'Calculated Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CalculatedAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Effective'
  EffectiveIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Manually Changed'
  ManuallyChangedIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'InactivityReasonCodeText'
  @sap.label : 'Status'
  InactivityReasonCode : String(2);
  @sap.label : 'Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  InactivityReasonCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'OriginCodeText'
  @sap.label : 'Origin'
  OriginCode : String(2);
  @sap.label : 'Origin Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  OriginCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'SalesOrderNodeID'
  SalesOrderNodeID : String(70) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Description'
  Description : String(40);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Item External Pricing'
entity salesorder.CustomerOrderItemExternalPriceComponentCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  SalesOrderItemID : String(10);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Product ID'
  ProductID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Price Component'
  TypeCode : String(4);
  @sap.label : 'Price Component Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Step'
  MajorLevelOrdinalNumberValue : Integer;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Counter'
  MinorLevelOrdinalNumberValue : Integer;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CategoryCodeText'
  @sap.label : 'Category'
  CategoryCode : String(1);
  @sap.label : 'Category Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CategoryCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Amount'
  RateDecimalValue : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateCurrencyCodeText'
  @sap.label : 'Amount Currency'
  RateCurrencyCode : String(3);
  @sap.label : 'Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateMeasureUnitCodeText'
  @sap.label : 'Amount UoM'
  RateMeasureUnitCode : String(3);
  @sap.label : 'Amount UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateMeasureUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'For'
  RateBaseDecimalValue : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateBaseMeasureUnitCodeText'
  @sap.label : 'For UoM'
  RateBaseMeasureUnitCode : String(3);
  @sap.label : 'For UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateBaseMeasureUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Calculated Amount'
  CalculatedAmount : Decimal(28, 6);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'CalculatedAmountCurrencyCodeText'
  @sap.label : 'Calculated Amount Currency'
  CalculatedAmountCurrencyCode : String(3);
  @sap.label : 'Calculated Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CalculatedAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Effective'
  EffectiveIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Manually Changed'
  ManuallyChangedIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'InactivityReasonCodeText'
  @sap.label : 'Status'
  InactivityReasonCode : String(2);
  @sap.label : 'Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  InactivityReasonCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'OriginCodeText'
  @sap.label : 'Origin'
  OriginCode : String(2);
  @sap.label : 'Origin Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  OriginCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'SalesOrderNodeID'
  SalesOrderNodeID : String(70) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'SalesOrderItemNodeID'
  SalesOrderItemNodeID : String(70) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Pricing'
entity salesorder.CustomerOrderPriceComponentCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Price Component'
  TypeCode : String(4);
  @sap.label : 'Price Component Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TypeCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Description'
  Description : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Step'
  MajorLevelOrdinalNumberValue : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Counter'
  MinorLevelOrdinalNumberValue : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'CategoryCodeText'
  @sap.label : 'Category'
  CategoryCode : String(1);
  @sap.label : 'Category Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CategoryCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Amount'
  RateDecimalValue : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateCurrencyCodeText'
  @sap.label : 'Amount Currency'
  RateCurrencyCode : String(3);
  @sap.label : 'Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateMeasureUnitCodeText'
  @sap.label : 'Amount UoM'
  RateMeasureUnitCode : String(3);
  @sap.label : 'Amount UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateMeasureUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'For'
  RateBaseDecimalValue : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateBaseMeasureUnitCodeText'
  @sap.label : 'For UoM'
  RateBaseMeasureUnitCode : String(3);
  @sap.label : 'For UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateBaseMeasureUnitCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Calculated Amount'
  CalculatedAmount : Decimal(28, 6);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'CalculatedAmountCurrencyCodeText'
  @sap.label : 'Calculated Amount Currency'
  CalculatedAmountCurrencyCode : String(3);
  @sap.label : 'Calculated Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CalculatedAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Effective'
  EffectiveIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'InactivityReasonCodeText'
  @sap.label : 'Status'
  InactivityReasonCode : String(2);
  @sap.label : 'Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  InactivityReasonCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Manually Changed'
  ManuallyChangedIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'OriginCodeText'
  @sap.label : 'Origin'
  OriginCode : String(2);
  @sap.label : 'Origin Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  OriginCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'SalesOrderNodeID'
  SalesOrderNodeID : String(70) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Item Pricing'
entity salesorder.CustomerOrderItemPriceComponentCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  SalesOrderItemID : String(10);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Product ID'
  ProductID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Price Component'
  TypeCode : String(4);
  @sap.label : 'Price Component Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  TypeCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Description'
  Description : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Step'
  MajorLevelOrdinalNumberValue : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Counter'
  MinorLevelOrdinalNumberValue : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'CategoryCodeText'
  @sap.label : 'Category'
  CategoryCode : String(1);
  @sap.label : 'Category Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CategoryCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Amount'
  RateDecimalValue : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateCurrencyCodeText'
  @sap.label : 'Amount Currency'
  RateCurrencyCode : String(3);
  @sap.label : 'Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateCurrencyCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateMeasureUnitCodeText'
  @sap.label : 'Amount UoM'
  RateMeasureUnitCode : String(3);
  @sap.label : 'Amount UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateMeasureUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'For'
  RateBaseDecimalValue : Decimal(31, 14);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.text : 'RateBaseMeasureUnitCodeText'
  @sap.label : 'For UoM'
  RateBaseMeasureUnitCode : String(3);
  @sap.label : 'For UoM Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  RateBaseMeasureUnitCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Calculated Amount'
  CalculatedAmount : Decimal(28, 6);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'CalculatedAmountCurrencyCodeText'
  @sap.label : 'Calculated Amount Currency'
  CalculatedAmountCurrencyCode : String(3);
  @sap.label : 'Calculated Amount Currency Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CalculatedAmountCurrencyCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Effective'
  EffectiveIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'InactivityReasonCodeText'
  @sap.label : 'Status'
  InactivityReasonCode : String(2);
  @sap.label : 'Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  InactivityReasonCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Manually Changed'
  ManuallyChangedIndicator : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.text : 'OriginCodeText'
  @sap.label : 'Origin'
  OriginCode : String(2);
  @sap.label : 'Origin Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  OriginCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'SalesOrderNodeID'
  SalesOrderNodeID : String(70) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'SalesOrderItemNodeID'
  SalesOrderItemNodeID : String(70) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Sales Order Registered Product'
entity salesorder.CustomerOrderRegisteredProductCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Serial ID'
  IndividualProductSerialID : String(30);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Installation Point ID'
  InstallationPointID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Installed Base ID'
  InstalledBaseID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Primary'
  MainIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Product ID'
  ProductInternalID : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Product Description'
  ProductDescription : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Belongs to Installation Point ID'
  ParentInstallationPointID : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Installed Base Description'
  InstalledBaseDescription : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Belongs to Installation Point Description'
  ParentInstallationPointIndividualProductDescription : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Individual Product Description'
  InstallationPointDescription : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Order ID'
  SalesOrderID : String(35);
  CustomerOrder : Association to salesorder.CustomerOrderCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderApprovalStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderAttachmentFolderCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderAttachmentFolderTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderBusinessTransactionDocumentReferenceRoleCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderBusinessTransactionDocumentReferenceTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderCalculationStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderCancellationReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderCashDiscountTermsCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderClassificationCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderConsistencyStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderDeliveryPriorityCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderDistributionChannelCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderDivisionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderExternalPriceComponentCalculatedAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderExternalPriceComponentCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderExternalPriceComponentInactivityReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderExternalPriceComponentOriginCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderExternalPriceComponentRateBaseMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderExternalPriceComponentRateCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderExternalPriceComponentRateMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderExternalPriceComponentTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderFirstRequestedItemScheduleLineEndDateTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderFirstRequestedItemScheduleLineStartDateTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderFirstRequestedItemScheduleLineunitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderFulfilmentBlockingReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderGrossAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderGrossWeightUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderInformationLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderInternalPricingCalculationStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderInternalPricingProcedureCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderInvoicingBlockingReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemAttachmentFolderCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemAttachmentFolderTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemBusinessTransactionDocumentReferenceBusinessTransactionDocumentRelationshipRoleCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemBusinessTransactionDocumentReferenceItemTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemBusinessTransactionDocumentReferenceTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemCancellationStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemExternalPriceComponentCalculatedAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemExternalPriceComponentCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemExternalPriceComponentInactivityReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemExternalPriceComponentOriginCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemExternalPriceComponentRateBaseMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemExternalPriceComponentRateCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemExternalPriceComponentRateMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemExternalPriceComponentTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemFulfilmentProcessingStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemGrossWeightUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemInvoiceProcessingStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemListCancellationStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemListFulfilmentProcessingStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemNetAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemNetPriceAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemNetPriceBaseQuantityunitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemNetWeightUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyContactPartyCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyContactPartyPOBoxDeviatingCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyContactPartyPreferredCommunicationMediumTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyContactPartyTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyPOBoxDeviatingCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyPartyTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyPreferredCommunicationMediumTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyRoleCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPriceComponentCalculatedAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPriceComponentCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPriceComponentInactivityReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPriceComponentOriginCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPriceComponentRateBaseMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPriceComponentRateCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPriceComponentRateMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPriceComponentTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemProcessingTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemQuantityMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemSalesTermsCancellationReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemTaxAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemTextCollectionLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemTextCollectionTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemTotalValuesPricingSubtotalCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemTotalValuesPricingSubtotalTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemVolumeUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemlanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderNetAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderNetWeightUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderOrderExternalLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderOrderReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderOverallBlockingStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyContactPartyCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyContactPartyPOBoxDeviatingCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyContactPartyPreferredCommunicationMediumTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyContactPartyTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyPOBoxDeviatingCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyPartyTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyPreferredCommunicationMediumTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyRoleCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPriceComponentCalculatedAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPriceComponentCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPriceComponentInactivityReasonCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPriceComponentOriginCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPriceComponentRateBaseMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPriceComponentRateCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPriceComponentRateMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPriceComponentTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPricingProcedureCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderProcessingTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderReplicationProcessingStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderTaxAmountCurrencyCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderTextCollectionLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderTextCollectionTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderVolumeUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrdertimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.ExternalPriceDocumentExternalPriceDocumentCalculationStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyContactPartyPOBoxDeviatingRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyContactPartyRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyPOBoxDeviatingRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderItemPartyRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyContactPartyPOBoxDeviatingRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyContactPartyRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyPOBoxDeviatingRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity salesorder.CustomerOrderPartyRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
action salesorder.Depersonalize(
  ObjectID : LargeString
) returns salesorder.CustomerOrderCollection;

