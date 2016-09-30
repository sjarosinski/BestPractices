
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/30/2016 12:32:11
-- Generated from EDMX file: d:\users\sylwester.jarosinski\documents\visual studio 2015\Projects\BestPractices\BestPractices\Models\BestPracticesModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BestPractices];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Article]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Article];
GO
IF OBJECT_ID(N'[dbo].[ArticleToCommentMapping]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArticleToCommentMapping];
GO
IF OBJECT_ID(N'[dbo].[Category]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Category];
GO
IF OBJECT_ID(N'[dbo].[CategoryToSubCategoryMapping]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategoryToSubCategoryMapping];
GO
IF OBJECT_ID(N'[BestPracticesModelStoreContainer].[Comment]', 'U') IS NOT NULL
    DROP TABLE [BestPracticesModelStoreContainer].[Comment];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Articles'
CREATE TABLE [dbo].[Articles] (
    [Id] uniqueidentifier  NOT NULL,
    [Name] nchar(100)  NULL,
    [Description] nchar(255)  NULL,
    [Content] nchar(1000)  NULL,
    [Author] nchar(100)  NULL,
    [Rating] float  NULL
);
GO

-- Creating table 'ArticleToCommentMappings'
CREATE TABLE [dbo].[ArticleToCommentMappings] (
    [Id] uniqueidentifier  NOT NULL,
    [ArticleId] int  NOT NULL,
    [CommentId] int  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] uniqueidentifier  NOT NULL,
    [Name] nchar(100)  NULL,
    [Description] nchar(255)  NULL
);
GO

-- Creating table 'CategoryToSubCategoryMappings'
CREATE TABLE [dbo].[CategoryToSubCategoryMappings] (
    [CategoryId] int  NOT NULL,
    [SubCategoryId] int  NOT NULL,
    [Id] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Comments'
CREATE TABLE [dbo].[Comments] (
    [Id] uniqueidentifier  NOT NULL,
    [UserId] int  NOT NULL,
    [Content] nchar(1000)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Articles'
ALTER TABLE [dbo].[Articles]
ADD CONSTRAINT [PK_Articles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [ArticleId], [CommentId] in table 'ArticleToCommentMappings'
ALTER TABLE [dbo].[ArticleToCommentMappings]
ADD CONSTRAINT [PK_ArticleToCommentMappings]
    PRIMARY KEY CLUSTERED ([Id], [ArticleId], [CommentId] ASC);
GO

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [CategoryId], [SubCategoryId], [Id] in table 'CategoryToSubCategoryMappings'
ALTER TABLE [dbo].[CategoryToSubCategoryMappings]
ADD CONSTRAINT [PK_CategoryToSubCategoryMappings]
    PRIMARY KEY CLUSTERED ([CategoryId], [SubCategoryId], [Id] ASC);
GO

-- Creating primary key on [Id], [UserId] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [PK_Comments]
    PRIMARY KEY CLUSTERED ([Id], [UserId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------