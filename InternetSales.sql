/****** Script for SelectTopNRows command from SSMS  ******/
SELECT ProductKey
      ,OrderDateKey
	  ,left(OrderDateKey,4) as Year
      ,DueDateKey
      ,ShipDateKey
      ,CustomerKey
      --PromotionKey
      --CurrencyKey
      --SalesTerritoryKey
      ,SalesOrderNumber
      --SalesOrderLineNumber
      --RevisionNumber
      ,OrderQuantity
      ,UnitPrice
      --ExtendedAmount
      --UnitPriceDiscountPct
      --DiscountAmount
      --ProductStandardCost
      ,TotalProductCost
      ,SalesAmount
      --TaxAmt
      --Freight
      --CarrierTrackingNumber
      --CustomerPONumber
      --OrderDate
      --DueDate
      --ShipDate
  FROM AdventureWorksDW2019.dbo.FactInternetSales
  where left (OrderDateKey,4) >= 2019
  order by year asc