/****** Script for SelectTopNRows command from SSMS  ******/
SELECT c.CustomerKey
      ,c.GeographyKey
      --CustomerAlternateKey
      --Title
      ,c.FirstName
      --MiddleName
      ,c.LastName
	  ,concat(c.firstName, ' ', c.lastName) as fullName
      --NameStyle
      ,c.BirthDate
      ,c.MaritalStatus
      --Suffix
      ,CASE (c.gender) WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,c.EmailAddress
      --YearlyIncome
      --TotalChildren
      --NumberChildrenAtHome
      ,c.EnglishEducation
      --SpanishEducation
      --FrenchEducation
      ,c.EnglishOccupation
      --SpanishOccupation
      --FrenchOccupation
      --HouseOwnerFlag
      --NumberCarsOwned
      ,c.AddressLine1
      --AddressLine2
      ,c.Phone
      ,c.DateFirstPurchase
      --CommuteDistance
	  ,g.city as [customer city]
  FROM AdventureWorksDW2019.dbo.DimCustomer c
  left join dbo.DimGeography g on g.GeographyKey =c.GeographyKey
  order by c.CustomerKey ASC