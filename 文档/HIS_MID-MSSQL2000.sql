USE [master]
GO
/****** Object:  Database [dg_his_mid]    Script Date: 07/19/2019 10:14:57 ******/
CREATE DATABASE [dg_his_mid] ON  PRIMARY 
( NAME = N'dg_his_mid', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\dg_his_mid.ndf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dg_his_mid_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\dg_his_mid_log.ldf' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10240KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dg_his_mid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dg_his_mid] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [dg_his_mid] SET ANSI_NULLS OFF
GO
ALTER DATABASE [dg_his_mid] SET ANSI_PADDING OFF
GO
ALTER DATABASE [dg_his_mid] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [dg_his_mid] SET ARITHABORT OFF
GO
ALTER DATABASE [dg_his_mid] SET AUTO_CLOSE ON
GO
ALTER DATABASE [dg_his_mid] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [dg_his_mid] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [dg_his_mid] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [dg_his_mid] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [dg_his_mid] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [dg_his_mid] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [dg_his_mid] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [dg_his_mid] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [dg_his_mid] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [dg_his_mid] SET  READ_WRITE
GO
ALTER DATABASE [dg_his_mid] SET RECOVERY SIMPLE
GO
ALTER DATABASE [dg_his_mid] SET  MULTI_USER
GO
if ( ((@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 760)) or 
		(@@microsoftversion / power(2, 24) >= 9) )begin 
	exec dbo.sp_dboption @dbname =  N'dg_his_mid', @optname = 'db chaining', @optvalue = 'OFF'
 end
GO
USE [dg_his_mid]
GO
/****** Object:  Table [dbo].[MID_PURCHASE_CONTRACT]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MID_PURCHASE_CONTRACT](
	[ID] [decimal](11, 0) IDENTITY(1,1) NOT NULL,
	[YYBM] [nvarchar](20) NOT NULL,
	[PTBM] [nvarchar](20) NOT NULL,
	[HTBH] [nvarchar](20) NOT NULL,
	[CGQX] [nvarchar](20) NOT NULL,
	[YPBM] [nvarchar](20) NOT NULL,
	[PSQYBM] [nvarchar](20) NOT NULL,
	[HTCGL] [decimal](10, 0) NOT NULL,
	[YXDL] [decimal](10, 0) NOT NULL,
	[XYSL] [decimal](10, 0) NOT NULL,
	[QRSL] [decimal](10, 0) NOT NULL,
	[JLDW] [nvarchar](10) NOT NULL,
	[CREATE_TIME] [datetime] NOT NULL,
 CONSTRAINT [PK_MID_PURCHASE_CONTRACT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ID����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҽԺ����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'YYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ƽ̨����(1ʡƽ̨2����ƽ̨)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'PTBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͬ���(ʡƽ̨������ƽ̨�Ϻ�ͬ���)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'HTBH'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ�����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'CGQX'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'HISҩƷ����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'YPBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������ҵ����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'PSQYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͬ�ɹ���' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'HTCGL'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'���µ���' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'YXDL'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ӧ����(��������)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'XYSL'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ȷ������(��Ʊ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'QRSL'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'JLDW'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(д���м���ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PURCHASE_CONTRACT', @level2type=N'COLUMN',@level2name=N'CREATE_TIME'
GO
/****** Object:  Table [dbo].[mid_product_status]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mid_product_status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[YYBM] [nvarchar](20) NOT NULL,
	[YPBM] [nvarchar](20) NOT NULL,
	[ZT] [nvarchar](2) NOT NULL,
	[YCMS] [nvarchar](200) NULL,
	[CREATE_TIME] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ID����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mid_product_status', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҽԺ����(ҽ�ƻ���Ψһ���룬����ҽԺHIS����ա�)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mid_product_status', @level2type=N'COLUMN',@level2name=N'YYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'HISҩƷ����(HIS��ҩƷΨһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mid_product_status', @level2type=N'COLUMN',@level2name=N'YPBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬(0��δ����,1���ɹ� ,2��ʧ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mid_product_status', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�쳣����(�쳣ʱ������ֵ)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mid_product_status', @level2type=N'COLUMN',@level2name=N'YCMS'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(��¼����ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mid_product_status', @level2type=N'COLUMN',@level2name=N'CREATE_TIME'
GO
/****** Object:  Table [dbo].[MID_PRODUCT]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MID_PRODUCT](
	[ID] [decimal](11, 0) IDENTITY(1,1) NOT NULL,
	[YYBM] [nvarchar](20) NOT NULL,
	[YPBM] [nvarchar](20) NOT NULL,
	[YPTYM] [nvarchar](50) NOT NULL,
	[BZGG] [nvarchar](100) NOT NULL,
	[SCQY] [nvarchar](100) NOT NULL,
	[BZDW] [nvarchar](10) NOT NULL,
	[CREATE_TIME] [datetime] NOT NULL,
	[MODIFY_TIME] [datetime] NULL,
 CONSTRAINT [PK_MID_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ID����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҽԺ����(ҽ�ƻ���Ψһ���룬����ҽԺHIS����ա�)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'YYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҩƷ����(HIS��ҩƷΨһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'YPBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҩƷͨ����(HIS��ҩƷͨ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'YPTYM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����װ(HIS��ҩƷ��װ���)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'BZGG'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������ҵȫ��(HIS��ҩƷ������ҵ)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'SCQY'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��װ��λ(HIS��ҩƷ��װ��λ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'BZDW'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(д���м���ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'CREATE_TIME'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��(HIS������޸�ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_PRODUCT', @level2type=N'COLUMN',@level2name=N'MODIFY_TIME'
GO
/****** Object:  Table [dbo].[MID_INVOICE]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MID_INVOICE](
	[ID] [decimal](11, 0) IDENTITY(1,1) NOT NULL,
	[FPHM] [nvarchar](20) NOT NULL,
	[YYBM] [nvarchar](20) NOT NULL,
	[PSQYBM] [nvarchar](20) NOT NULL,
	[FPHSZJE] [nvarchar](17) NOT NULL,
	[KPRQ] [nvarchar](20) NOT NULL,
	[JLS] [decimal](11, 0) NOT NULL,
	[GLDJLX] [nvarchar](10) NOT NULL,
	[GLMXBH] [nvarchar](20) NULL,
	[WFGLSM] [nvarchar](19) NULL,
	[YPBM] [nvarchar](20) NULL,
	[SCPH] [nvarchar](50) NULL,
	[SCRQ] [nvarchar](10) NULL,
	[YXRQ] [nvarchar](10) NULL,
	[DJ] [nvarchar](19) NULL,
	[SL] [nvarchar](10) NULL,
	[JLDW] [nvarchar](10) NULL,
	[JE] [nvarchar](17) NOT NULL,
	[YSSJ] [nvarchar](20) NULL,
	[CREATE_TIME] [datetime] NOT NULL,
 CONSTRAINT [PK_MID_INVOICE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ID����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ����(��ƱΨһ���18λ)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'FPHM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҽԺ����(ҽ�ƻ���Ψһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'YYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������ҵ����(������ҵΨһ���)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'PSQYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ��˰�ܽ��' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'FPHSZJE'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'KPRQ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼��(��Ʊ����ϸ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'JLS'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������������(���4.1.7)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'GLDJLX'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϸ���(������������Ϊ1ʱ����дERP�����͵���;������������Ϊ2ʱ����дƽ̨���˻���;������������Ϊ3ʱ����д��Ʊ�ţ�18λ��;������������Ϊ9ʱ��������д)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'GLMXBH'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�޷�����˵��(������������Ϊ9ʱ������)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'WFGLSM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'HISҩƷ����(�����������Ͳ�Ϊ3��9ʱ��ҩƷ���뼰����ֶα���ֵ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'YPBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'SCPH'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��������(���ڸ�ʽB)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'SCRQ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч����(���ڸ�ʽB)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'YXRQ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����(��HIS������λ����ĵ��ۣ���ʽ��14λ������4λС����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'DJ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����(��HIS��λ�������)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ(ҩ��ϵͳ���յ���HISҩƷ��������λ)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'JLDW'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'���(��ʽ��14λ������2λС��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'JE'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(��ϸ���ʱ�䣨��ʽ��YYYY-MM-DD HH:mm:SS��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'YSSJ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(д���м���ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVOICE', @level2type=N'COLUMN',@level2name=N'CREATE_TIME'
GO
/****** Object:  Table [dbo].[MID_INVENTORY_STATUS]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MID_INVENTORY_STATUS](
	[ID] [decimal](19, 0) IDENTITY(1,1) NOT NULL,
	[YYBM] [nvarchar](20) NOT NULL,
	[KFBM] [nvarchar](20) NOT NULL,
	[YPBM] [nvarchar](20) NOT NULL,
	[ZT] [nvarchar](2) NOT NULL,
	[YCMS] [nvarchar](200) NULL,
	[CREATE_TIME] [datetime] NOT NULL,
 CONSTRAINT [PK_MID_INVENTORY_STATUS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ID����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY_STATUS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҽԺ����(����HIS��ҽ�ƻ���Ψһ���롣����ҽԺHIS��ա�)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY_STATUS', @level2type=N'COLUMN',@level2name=N'YYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�ⷿ����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY_STATUS', @level2type=N'COLUMN',@level2name=N'KFBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'HISҩƷ����(HISҩƷΨһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY_STATUS', @level2type=N'COLUMN',@level2name=N'YPBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬(0��δ����,1���ɹ� ,2��ʧ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY_STATUS', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�쳣����(�쳣ʱ��д)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY_STATUS', @level2type=N'COLUMN',@level2name=N'YCMS'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(��¼����ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY_STATUS', @level2type=N'COLUMN',@level2name=N'CREATE_TIME'
GO
/****** Object:  Table [dbo].[MID_INVENTORY]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MID_INVENTORY](
	[ID] [decimal](11, 0) IDENTITY(1,1) NOT NULL,
	[YYBM] [nvarchar](20) NOT NULL,
	[KFBM] [nvarchar](20) NOT NULL,
	[YPBM] [nvarchar](20) NOT NULL,
	[SCPH] [nvarchar](20) NOT NULL,
	[SCRQ] [nvarchar](10) NOT NULL,
	[YXRQ] [nvarchar](10) NOT NULL,
	[KCSL] [nvarchar](10) NOT NULL,
	[KCDW] [nvarchar](10) NOT NULL,
	[CREATE_TIME] [datetime] NOT NULL,
	[MODIFY_TIME] [datetime] NULL,
 CONSTRAINT [PK_MID_INVENTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ID����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҽԺ����(ҽ�ƻ���Ψһ���룬����ҽԺHIS����ա�)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'YYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�ⷿ����(�ⷿ��Ψһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'KFBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'HISҩƷ����(HISҩƷΨһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'YPBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'SCPH'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'SCRQ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'YXRQ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�������(��ֵ��ҽԺһ���ⵥλ������)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'KCSL'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��浥λ' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'KCDW'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(д���м���ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'CREATE_TIME'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��(HIS������޸�ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_INVENTORY', @level2type=N'COLUMN',@level2name=N'MODIFY_TIME'
GO
/****** Object:  Table [dbo].[MID_DRUGS_CONSUMPTION]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MID_DRUGS_CONSUMPTION](
	[ID] [decimal](11, 0) IDENTITY(1,1) NOT NULL,
	[YYBM] [nvarchar](20) NOT NULL,
	[KFBM] [nvarchar](20) NOT NULL,
	[YPBM] [nvarchar](20) NOT NULL,
	[SYSL] [nvarchar](10) NOT NULL,
	[JLDW] [nvarchar](10) NOT NULL,
	[TJZQ] [nvarchar](10) NOT NULL,
	[CREATE_TIME] [datetime] NOT NULL,
 CONSTRAINT [PK_MID_DRUGS_CONSUMPTION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ID����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DRUGS_CONSUMPTION', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҽԺ����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DRUGS_CONSUMPTION', @level2type=N'COLUMN',@level2name=N'YYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�ⷿ����(�ⷿ��Ψһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DRUGS_CONSUMPTION', @level2type=N'COLUMN',@level2name=N'KFBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'HISҩƷ����(HISҩƷΨһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DRUGS_CONSUMPTION', @level2type=N'COLUMN',@level2name=N'YPBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ������(��ֵ��ҽԺһ���ⵥλ������)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DRUGS_CONSUMPTION', @level2type=N'COLUMN',@level2name=N'SYSL'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DRUGS_CONSUMPTION', @level2type=N'COLUMN',@level2name=N'JLDW'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ͳ������(��ʽ��yyyy-MM-dd��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DRUGS_CONSUMPTION', @level2type=N'COLUMN',@level2name=N'TJZQ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(д���м���ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DRUGS_CONSUMPTION', @level2type=N'COLUMN',@level2name=N'CREATE_TIME'
GO
/****** Object:  Table [dbo].[MID_DELIVERY_ORDER]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MID_DELIVERY_ORDER](
	[ID] [decimal](19, 0) IDENTITY(1,1) NOT NULL,
	[YYBM] [nvarchar](20) NOT NULL,
	[KFBM] [nvarchar](20) NOT NULL,
	[PSQYBM] [nvarchar](20) NOT NULL,
	[PSDH] [nvarchar](20) NOT NULL,
	[JLS] [decimal](11, 0) NOT NULL,
	[PSMXH] [nvarchar](19) NOT NULL,
	[YPBM] [nvarchar](20) NOT NULL,
	[SCPH] [nvarchar](50) NOT NULL,
	[SCRQ] [nvarchar](10) NOT NULL,
	[YXRQ] [nvarchar](10) NOT NULL,
	[DJ] [nvarchar](19) NOT NULL,
	[SL] [nvarchar](10) NOT NULL,
	[JLDW] [nvarchar](10) NOT NULL,
	[JE] [nvarchar](17) NOT NULL,
	[YSSJ] [nvarchar](20) NOT NULL,
	[CREATE_TIME] [datetime] NOT NULL,
	[BZSM] [nvarchar](200) NULL,
	[SCQY] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_MID_DELIVERY_ORDER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ID����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'ҽԺ����(ҽ�ƻ���Ψһ����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'YYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'�ⷿ����' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'KFBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������ҵ����(������ҵΨһ���)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'PSQYBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'���͵���' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'PSDH'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼��(���͵�����ϸ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'JLS'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϸ��' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'PSMXH'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'HISҩƷ����(�����������Ͳ�Ϊ3��9ʱ��ҩƷ���뼰����ֶα���ֵ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'YPBM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'SCPH'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��������(���ڸ�ʽB)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'SCRQ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч����(���ڸ�ʽB)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'YXRQ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����(��HIS������λ����ĵ��ۣ���ʽ��14λ������4λС����)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'DJ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����(��HIS��λ�������)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ(ҩ��ϵͳ���յ���HISҩƷ��������λ)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'JLDW'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'���(��ʽ��14λ������2λС��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'JE'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(��ϸ���ʱ�䣨��ʽ��YYYY-MM-DD HH:mm:SS��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'YSSJ'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��(д���м���ʱ��)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'CREATE_TIME'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'BZSM'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'������ҵȫ��(HIS��ҩƷ������ҵ)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MID_DELIVERY_ORDER', @level2type=N'COLUMN',@level2name=N'SCQY'
GO
/****** Object:  Table [dbo].[HIBERNATE_SEQUENCES]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIBERNATE_SEQUENCES](
	[SEQUENCE_NAME] [nvarchar](255) NULL,
	[SEQUENCE_NEXT_HI_VALUE] [decimal](11, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENERATOR_ID]    Script Date: 07/19/2019 10:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENERATOR_ID](
	[ID_KEY] [nvarchar](255) NULL,
	[ID_VALUE] [decimal](11, 0) NULL
) ON [PRIMARY]
GO
