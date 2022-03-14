/****** Script for SelectTopNRows command from SSMS  ******/
SELECT p.ProductKey
      --ProductAlternateKey
      ,p.ProductSubcategoryKey
	  ,pc.EnglishProductCategoryName as Category
	  ,psc.EnglishProductSubcategoryName as SubCategory
      --WeightUnitMeasureCode
      --SizeUnitMeasureCode
      ,p.EnglishProductName
      --SpanishProductName
      --FrenchProductName
      --StandardCost
      --FinishedGoodsFlag
      ,p.Color
      --SafetyStockLevel
      --ReorderPoint
      --ListPrice
      ,p.Size
      --SizeRange
      --Weight
      --DaysToManufacture
      ,p.ProductLine
      --DealerPrice
      --Class
      --Style
      ,p.ModelName
      --LargePhoto
      ,p.EnglishDescription
      --FrenchDescription
      --ChineseDescription
      --ArabicDescription
      --HebrewDescription
      --ThaiDescription
      --GermanDescription
      --JapaneseDescription
      --TurkishDescription
      ,p.StartDate
      ,p.EndDate
      ,isnull(p.Status, 'outdated') as Product_Status
  FROM AdventureWorksDW2019.dbo.DimProduct p
  left join dbo.DimProductSubcategory psc on psc.ProductSubcategoryKey = p.ProductSubcategoryKey
  left join dbo.DimProductCategory pc on pc.ProductCategoryKey = psc.ProductCategoryKey
  
  