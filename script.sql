/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [TracNghiem]
GO
/****** Object:  Table [dbo].[ch_db]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ch_db](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaCauHoi] [int] NULL,
	[MaDe] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ch_db_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeThi]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeThi](
	[MaDe] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[MaMon] [int] NULL,
	[LoaiDe] [nvarchar](50) NULL,
	[CreateDate] [date] NULL,
	[CreateBy] [int] NULL,
	[MaxQuiz] [int] NULL,
	[Status] [bit] NULL,
	[Time] [int] NULL,
	[Audio] [nvarchar](250) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_DeThi] PRIMARY KEY CLUSTERED 
(
	[MaDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaKetQua] [int] IDENTITY(1,1) NOT NULL,
	[MaThiSinh] [int] NULL,
	[NgayThi] [date] NULL,
	[Diem] [float] NULL,
	[MaDe] [int] NULL,
 CONSTRAINT [PK_KetQua] PRIMARY KEY CLUSTERED 
(
	[MaKetQua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[Khoi] [nvarchar](50) NULL,
	[SiSo] [int] NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonThi]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonThi](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonThi] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[MaCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[MaMon] [int] NULL,
	[CauHoi] [nvarchar](250) NULL,
	[Picture] [image] NULL,
	[A] [nvarchar](50) NULL,
	[B] [nvarchar](50) NULL,
	[C] [nvarchar](50) NULL,
	[D] [nvarchar](50) NULL,
	[DapAn] [nvarchar](50) NULL,
 CONSTRAINT [PK_CauHoi] PRIMARY KEY CLUSTERED 
(
	[MaCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](150) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[MaQuyen] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](150) NULL,
	[SDT] [int] NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThiSinh]    Script Date: 9/4/2017 12:32:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThiSinh](
	[MaThiSinh] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DanToc] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLop] [int] NULL,
	[NienKhoa] [nvarchar](50) NULL,
	[Image] [image] NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThiSinh] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeThi] ADD  CONSTRAINT [DF_DeThi_NgayTao]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[DeThi] ADD  CONSTRAINT [DF_DeThi_Time]  DEFAULT ((10)) FOR [Time]
GO
ALTER TABLE [dbo].[KetQua] ADD  CONSTRAINT [DF_KetQua_NgayThi]  DEFAULT (getdate()) FOR [NgayThi]
GO
ALTER TABLE [dbo].[ch_db]  WITH CHECK ADD  CONSTRAINT [FK_ch_db_DeThi] FOREIGN KEY([MaDe])
REFERENCES [dbo].[DeThi] ([MaDe])
GO
ALTER TABLE [dbo].[ch_db] CHECK CONSTRAINT [FK_ch_db_DeThi]
GO
ALTER TABLE [dbo].[ch_db]  WITH CHECK ADD  CONSTRAINT [FK_ch_db_Quiz] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[Quiz] ([MaCauHoi])
GO
ALTER TABLE [dbo].[ch_db] CHECK CONSTRAINT [FK_ch_db_Quiz]
GO
ALTER TABLE [dbo].[DeThi]  WITH CHECK ADD  CONSTRAINT [FK_DeThi_MonThi] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonThi] ([MaMon])
GO
ALTER TABLE [dbo].[DeThi] CHECK CONSTRAINT [FK_DeThi_MonThi]
GO
ALTER TABLE [dbo].[DeThi]  WITH CHECK ADD  CONSTRAINT [FK_DeThi_TaiKhoan] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[DeThi] CHECK CONSTRAINT [FK_DeThi_TaiKhoan]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_DeThi] FOREIGN KEY([MaDe])
REFERENCES [dbo].[DeThi] ([MaDe])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_DeThi]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_ThiSinh] FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ThiSinh] ([MaThiSinh])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_ThiSinh]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_MonThi] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonThi] ([MaMon])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_MonThi]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_Quyen]
GO
ALTER TABLE [dbo].[ThiSinh]  WITH CHECK ADD  CONSTRAINT [FK_ThiSinh_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[ThiSinh] CHECK CONSTRAINT [FK_ThiSinh_Lop]
GO
