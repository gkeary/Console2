
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/28/2014 21:43:05
-- Generated from EDMX file: E:\wip\Console2\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [D3];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CurrentDayPickups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CurrentDayPickups];
GO
IF OBJECT_ID(N'[dbo].[CurrentDayRoutes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CurrentDayRoutes];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[Drivers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Drivers];
GO
IF OBJECT_ID(N'[dbo].[ArchivedPickups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArchivedPickups];
GO
IF OBJECT_ID(N'[dbo].[Pickups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pickups];
GO
IF OBJECT_ID(N'[dbo].[PostedMessages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PostedMessages];
GO
IF OBJECT_ID(N'[dbo].[Routes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Routes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CurrentDayPickups'
CREATE TABLE [dbo].[CurrentDayPickups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RouteId] nvarchar(2)  NULL,
    [RouteName] nvarchar(20)  NULL,
    [PreviousRouteId] nvarchar(2)  NULL,
    [PickupDate] datetime  NULL,
    [CustomerKey] nvarchar(10)  NULL,
    [CustomerName] nvarchar(30)  NULL,
    [DriverName] nvarchar(30)  NULL,
    [DriverMessage] nvarchar(100)  NULL,
    [Comment] nvarchar(30)  NULL,
    [IsDispatched] bit  NOT NULL,
    [DispatchTime] datetime  NULL,
    [Notes] nvarchar(3)  NULL,
    [IsDeleted] bit  NOT NULL
);
GO

-- Creating table 'CurrentDayRoutes'
CREATE TABLE [dbo].[CurrentDayRoutes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RouteKey] nvarchar(2)  NULL,
    [RouteName] nvarchar(20)  NULL,
    [DriverId] nvarchar(4)  NULL,
    [DriverName] nvarchar(100)  NULL,
    [DriverMessage] nvarchar(100)  NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CustomerKey] nvarchar(10)  NULL,
    [CustomerName] nvarchar(30)  NULL,
    [Address1] nvarchar(30)  NULL,
    [City] nvarchar(30)  NULL,
    [State] nvarchar(2)  NULL,
    [Phone] nvarchar(13)  NULL,
    [Contact] nvarchar(30)  NULL,
    [ClosingTime] nvarchar(5)  NULL,
    [Comment] nvarchar(30)  NULL,
    [DefaultRouteId] nvarchar(2)  NULL,
    [InfoString] nchar(255)  NULL
);
GO

-- Creating table 'Drivers'
CREATE TABLE [dbo].[Drivers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DriverKey] nvarchar(4)  NULL,
    [LastName] nvarchar(20)  NULL,
    [FirstName] nvarchar(20)  NULL,
    [MiddleInitial] nvarchar(1)  NULL
);
GO

-- Creating table 'ArchivedPickups'
CREATE TABLE [dbo].[ArchivedPickups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DefaultRouteID] nvarchar(2)  NULL,
    [PickupDate] datetime  NULL,
    [CustomerKey] nvarchar(10)  NULL,
    [DriverName] nvarchar(30)  NULL,
    [DriverMessage] nvarchar(100)  NULL,
    [RouteName] nvarchar(20)  NULL,
    [CustomerName] nvarchar(30)  NULL,
    [Comment] nvarchar(30)  NULL,
    [Dispatched] bit  NULL,
    [DispatchTime] datetime  NULL,
    [Deleted] bit  NULL,
    [Notes] nvarchar(3)  NULL
);
GO

-- Creating table 'Pickups'
CREATE TABLE [dbo].[Pickups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DefaultRouteId] nvarchar(2)  NULL,
    [PickupDate] datetime  NULL,
    [CustomerKey] nvarchar(10)  NULL,
    [DriverName] nvarchar(30)  NULL,
    [RouteName] nvarchar(20)  NULL,
    [CustomerName] nvarchar(30)  NULL,
    [Comment] nvarchar(30)  NULL,
    [Monday] bit  NULL,
    [Tuesday] bit  NULL,
    [Wednesday] bit  NULL,
    [Thursday] bit  NULL,
    [Friday] bit  NULL,
    [Dispatched] bit  NULL,
    [DispatchTime] datetime  NULL,
    [Notes] nvarchar(3)  NULL
);
GO

-- Creating table 'PostedMessages'
CREATE TABLE [dbo].[PostedMessages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DataType] varchar(50)  NULL,
    [Key] int  NULL,
    [NumberofPendingUpdates] int  NULL,
    [Originator] varchar(50)  NULL,
    [DefaultRouteId] varchar(50)  NULL,
    [PreviousRouteID] varchar(50)  NULL,
    [isDragnDrop] bit  NOT NULL
);
GO

-- Creating table 'Routes'
CREATE TABLE [dbo].[Routes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RouteKey] nvarchar(2)  NULL,
    [RouteName] nvarchar(20)  NULL,
    [DriverMessage] nvarchar(100)  NULL,
    [DriverKey] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'CurrentDayPickups'
ALTER TABLE [dbo].[CurrentDayPickups]
ADD CONSTRAINT [PK_CurrentDayPickups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CurrentDayRoutes'
ALTER TABLE [dbo].[CurrentDayRoutes]
ADD CONSTRAINT [PK_CurrentDayRoutes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Drivers'
ALTER TABLE [dbo].[Drivers]
ADD CONSTRAINT [PK_Drivers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ArchivedPickups'
ALTER TABLE [dbo].[ArchivedPickups]
ADD CONSTRAINT [PK_ArchivedPickups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Pickups'
ALTER TABLE [dbo].[Pickups]
ADD CONSTRAINT [PK_Pickups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PostedMessages'
ALTER TABLE [dbo].[PostedMessages]
ADD CONSTRAINT [PK_PostedMessages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Routes'
ALTER TABLE [dbo].[Routes]
ADD CONSTRAINT [PK_Routes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------