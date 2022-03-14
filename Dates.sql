/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DateKey
      --FullDateAlternateKey
      --DayNumberOfWeek
      ,EnglishDayNameOfWeek as [Day]
      --SpanishDayNameOfWeek
      --FrenchDayNameOfWeek
      --DayNumberOfMonth
      --DayNumberOfYear
      --WeekNumberOfYear
      ,EnglishMonthName as [Month]
	  ,left(EnglishMonthName,3) as MonthAlias
      --SpanishMonthName
      --FrenchMonthName
      ,MonthNumberOfYear as [Month No]
      ,CalendarQuarter
      ,CalendarYear as [Year]
      ,CalendarSemester
      --FiscalQuarter
      --FiscalYear
      --FiscalSemester
  FROM AdventureWorksDW2019.dbo.DimDate
  where CalendarYear >= 2019