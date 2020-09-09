USE [SchoolManagementSystem]
GO
/****** Object:  Table [dbo].[AccountsManagement]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountsManagement](
	[SerialNo] [bigint] NOT NULL,
	[FeeAmount] [float] NOT NULL,
	[ClassId] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamType]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamType](
	[ExamId] [int] IDENTITY(1,1) NOT NULL,
	[ExamName] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExtraFee]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraFee](
	[SerialNo] [bigint] NOT NULL,
	[ExtraFeeTitle] [nvarchar](50) NOT NULL,
	[ExtraFeeAmount] [float] NOT NULL,
	[ClassId] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeeSubmission]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeeSubmission](
	[SerialNo] [bigint] NOT NULL,
	[StudentId] [bigint] NOT NULL,
	[ClassId] [bigint] NOT NULL,
	[FeeAmount] [float] NOT NULL,
	[DueAmount] [float] NOT NULL,
	[ExtraFeeAmount] [float] NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GuardianInfo]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GuardianInfo](
	[SL] [bigint] IDENTITY(1,1) NOT NULL,
	[GNameM] [nvarchar](50) NULL,
	[GNameF] [varchar](50) NULL,
	[GPhoneF] [bigint] NULL,
	[GEmailF] [nvarchar](50) NULL,
	[StudentId] [bigint] NULL,
	[GPhoneM] [bigint] NULL,
	[GEmailM] [nvarchar](50) NULL,
	[GOrganisationF] [nvarchar](50) NULL,
	[GOrganisationM] [nvarchar](50) NULL,
	[GDesignationM] [nvarchar](50) NULL,
	[GDesignationF] [nvarchar](50) NULL,
	[GOccupationM] [nvarchar](50) NULL,
	[GOccupationF] [nvarchar](50) NULL,
 CONSTRAINT [PK_GuardianInfo] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[SL] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CurrentPassword] [nvarchar](50) NULL,
	[FirstLoginStatus] [bit] NULL,
	[RoleId] [int] NULL,
	[ActiveStatus] [bit] NULL,
	[DistinguishId] [bigint] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MarkDistribution]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarkDistribution](
	[MarkDisId] [int] NOT NULL,
	[MarkDisTitle] [nchar](10) NOT NULL,
	[ClassId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MarkSubmission]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarkSubmission](
	[SerialNo] [bigint] NOT NULL,
	[MarkDisId] [bigint] NOT NULL,
	[Marks] [float] NOT NULL,
	[StudentId] [bigint] NOT NULL,
	[ClassId] [bigint] NOT NULL,
	[TeacherId] [bigint] NOT NULL,
	[SectionName] [nchar](10) NOT NULL,
	[SubjectId] [bigint] NOT NULL,
	[Grade] [nchar](10) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[SerialNo] [bigint] NOT NULL,
	[StudentId] [bigint] NOT NULL,
	[ClassId] [bigint] NOT NULL,
	[TotalMarks] [float] NOT NULL,
	[Position] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalaryDetails]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryDetails](
	[SerialNo] [bigint] NOT NULL,
	[TeacherId] [bigint] NOT NULL,
	[Salary] [float] NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Section]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[SectionSL] [bigint] IDENTITY(1,1) NOT NULL,
	[ClassId] [bigint] NULL,
	[SectionName] [nchar](50) NULL,
	[SectionCapacity] [bigint] NULL,
	[SectionYear] [bigint] NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[SectionSL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SEnrolledSubject]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEnrolledSubject](
	[SL] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[StudentId] [bigint] NOT NULL,
	[Year] [int] NOT NULL,
	[SectionName] [nchar](10) NOT NULL,
 CONSTRAINT [PK_SEnrolledSubject] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[StudentDOB] [date] NULL,
	[StudentBG] [nchar](10) NULL,
	[StudentGender] [nchar](20) NULL,
	[StudentNationality] [varchar](50) NULL,
	[StudentPAddress] [nvarchar](100) NULL,
	[StudentCAddress] [nvarchar](100) NULL,
	[StudentPhoto] [nvarchar](50) NULL,
	[DateOfAdmission] [date] NULL,
	[Year] [bigint] NULL,
	[StudentClass] [bigint] NULL,
	[SectionId] [bigint] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentAttendance]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttendance](
	[SL] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentId] [bigint] NULL,
	[ClassId] [bigint] NULL,
	[SectionId] [bigint] NULL,
	[Date] [date] NULL,
	[Remark] [nvarchar](50) NULL,
	[SubjectId] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_StudentAttendance] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectId] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubjectOftheClass]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectOftheClass](
	[SL] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_SubjectOftheClass] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [bigint] IDENTITY(1,1) NOT NULL,
	[TeacherName] [varchar](50) NULL,
	[TeacherDesignation] [varchar](50) NULL,
	[TeacherDOB] [date] NULL,
	[TeacherBG] [nchar](10) NULL,
	[TeacherJD] [date] NULL,
	[TeacherNationality] [varchar](50) NULL,
	[TeacherPAddress] [nvarchar](100) NULL,
	[TeacherCAddress] [nvarchar](100) NULL,
	[TeacherPhoto] [nvarchar](50) NULL,
	[TeacherEmail] [nvarchar](50) NULL,
	[TeacherPhoneNo] [bigint] NULL,
	[TeacherGender] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherDesignation]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherDesignation](
	[SerialNo] [bigint] NOT NULL,
	[DesigName] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherDocSubmitted]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherDocSubmitted](
	[SL] [bigint] IDENTITY(1,1) NOT NULL,
	[TeacherId] [bigint] NULL,
	[SSCMarksheet] [bit] NULL,
	[SSCCertificate] [bit] NULL,
	[HSCMarksheet] [bit] NULL,
	[HSCCertificate] [bit] NULL,
	[HonsMarksheet] [bit] NULL,
	[HonsCertificate] [bit] NULL,
 CONSTRAINT [PK_TeacherDocSubmitted] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherQualification]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherQualification](
	[SL] [bigint] IDENTITY(1,1) NOT NULL,
	[TeacherId] [bigint] NULL,
	[SSCYear] [bigint] NULL,
	[HSCYear] [bigint] NULL,
	[SSCInstitute] [varchar](50) NULL,
	[HonsInstitute] [varchar](50) NULL,
	[HonsYear] [bigint] NULL,
	[HSCInstitute] [varchar](50) NULL,
	[SSCGrade] [float] NULL,
	[HSCGrade] [float] NULL,
	[HonsGrade] [float] NULL,
 CONSTRAINT [PK_TeacherQualification] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherSalary]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherSalary](
	[DesigName] [nvarchar](50) NOT NULL,
	[Salary] [float] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TEnrolledSubject]    Script Date: 7/7/2019 1:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEnrolledSubject](
	[SL] [bigint] IDENTITY(1,1) NOT NULL,
	[TeacherId] [bigint] NULL,
	[SubjectId] [bigint] NULL,
	[SectionId] [bigint] NULL,
	[Year] [bigint] NULL,
	[ClassId] [bigint] NULL,
 CONSTRAINT [PK_TEnrolledSubject] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ClassId], [ClassName]) VALUES (1, N'One')
INSERT [dbo].[Class] ([ClassId], [ClassName]) VALUES (2, N'Two')
SET IDENTITY_INSERT [dbo].[Class] OFF
SET IDENTITY_INSERT [dbo].[ExamType] ON 

INSERT [dbo].[ExamType] ([ExamId], [ExamName]) VALUES (1, N'First Term Examination')
INSERT [dbo].[ExamType] ([ExamId], [ExamName]) VALUES (2, N'Mid Term Examination')
INSERT [dbo].[ExamType] ([ExamId], [ExamName]) VALUES (3, N'Final Examination')
SET IDENTITY_INSERT [dbo].[ExamType] OFF
SET IDENTITY_INSERT [dbo].[GuardianInfo] ON 

INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (1, N'A', N'A', 1, N'A', 5, 5, N'A', N'A', N'A', N'A', N'A', NULL, N'a')
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (2, NULL, NULL, 0, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (3, NULL, NULL, 0, NULL, 7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (4, N'A', N'A', 1, NULL, 5, 5, NULL, N'A', N'A', N'A', N'A', NULL, N'a')
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (5, N'A', N'A', 1, NULL, 5, 5, NULL, N'A', N'A', N'A', N'A', NULL, N'a')
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (6, N'A', N'A', 1, NULL, 5, 5, NULL, N'A', N'A', N'A', N'A', NULL, N'a')
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (7, N'A', N'A', 1, NULL, 5, 5, NULL, N'A', N'A', N'A', N'A', NULL, N'a')
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (8, NULL, NULL, 0, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (9, NULL, NULL, 0, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (10, NULL, NULL, 0, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (11, N'A', N'A', 1, N'A@gmail.com', 5, 5, N'B@gmail.com', N'A', N'A', N'A', N'A', NULL, N'a')
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (12, NULL, NULL, 0, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (13, NULL, NULL, 0, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (14, NULL, NULL, 0, NULL, 7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (15, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (16, NULL, NULL, 0, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (17, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (18, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (19, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (20, NULL, NULL, 0, NULL, 12, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (21, NULL, NULL, 0, NULL, 13, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (22, NULL, NULL, 0, NULL, 13, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (23, NULL, NULL, 0, NULL, 13, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (24, NULL, NULL, 2, NULL, 14, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (25, NULL, NULL, 2, NULL, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (26, NULL, NULL, 0, NULL, 16, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (27, NULL, NULL, 2, NULL, 17, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (28, NULL, NULL, 54, NULL, 18, 4536, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (29, NULL, NULL, 564, NULL, 19, 456, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (30, NULL, NULL, 45, NULL, 20, 5464, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (31, NULL, NULL, 65, NULL, 21, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (32, NULL, NULL, 67, NULL, 22, 5656, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (33, NULL, NULL, 5, NULL, 23, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (34, NULL, NULL, 5, NULL, 24, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (35, NULL, NULL, 2, NULL, 25, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (36, NULL, NULL, 3, NULL, 26, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (37, NULL, NULL, 4, NULL, 27, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (38, NULL, NULL, 4, NULL, 28, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (39, NULL, NULL, 2, NULL, 29, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GuardianInfo] ([SL], [GNameM], [GNameF], [GPhoneF], [GEmailF], [StudentId], [GPhoneM], [GEmailM], [GOrganisationF], [GOrganisationM], [GDesignationM], [GDesignationF], [GOccupationM], [GOccupationF]) VALUES (40, NULL, NULL, 75, NULL, 30, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[GuardianInfo] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (1, N'6', N'izkv8057BB', N'uvpl2782AN', 1, 1, 1, 6)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (2, N'7', N'fpfv3923DE', N'fpfv3923DE', 1, 1, 1, 7)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (3, N'tasmi@gmail.com', N'hvwh9973DX', NULL, 0, 2, 1, 3)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (4, NULL, N'brpm5140DM', N'brpm5140DM', 0, 2, 1, 4)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (5, NULL, N'qcod9067GT', N'qcod9067GT', 0, 2, 1, 5)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (6, N'12', N'vykl5443BF', N'vykl5443BF', 1, 1, 1, 12)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (7, N'13', N'uksq2904JM', N'uksq2904JM', 1, 1, 1, 13)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (8, NULL, N'wevs8281YI', N'wevs8281YI', 0, 2, 1, 6)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (9, NULL, N'fymn7712ZW', N'fymn7712ZW', 0, 2, 1, 7)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (10, NULL, N'somt4169ZN', N'somt4169ZN', 0, 2, 1, 8)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (11, NULL, N'pimw1993AD', N'pimw1993AD', 0, 2, 1, 9)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (12, N'14', N'qewr9578ND', N'qewr9578ND', 1, 1, 1, 14)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (13, N'15', N'bwql6962EG', N'bwql6962EG', 1, 1, 1, 15)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (14, N'16', N'xqvu4925MO', N'xqvu4925MO', 1, 1, 1, 16)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (15, N'17', N'bhsv4768NF', N'bhsv4768NF', 1, 1, 1, 17)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (16, N'18', N'vrsp5090GN', N'vrsp5090GN', 1, 1, 1, 18)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (17, N'19', N'uwaq7058RL', N'uwaq7058RL', 1, 1, 1, 19)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (18, N'20', N'vakn1751ER', N'vakn1751ER', 1, 1, 1, 20)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (19, N'21', N'fqqw4661DC', N'fqqw4661DC', 1, 1, 1, 21)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (20, N'22', N'fabr8311OL', N'fabr8311OL', 1, 1, 1, 22)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (21, N'23', N'iywn7689JP', N'iywn7689JP', 1, 1, 1, 23)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (22, N'24', N'hhhn1746YO', N'hhhn1746YO', 1, 1, 1, 24)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (23, N'25', N'xmon3580FA', N'xmon3580FA', 1, 1, 1, 25)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (24, N'26', N'qvao6551OF', N'qvao6551OF', 1, 1, 1, 26)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (25, N'27', N'uklh2925CW', N'uklh2925CW', 1, 1, 1, 27)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (26, N'28', N'gzjq7798AS', N'gzjq7798AS', 1, 1, 1, 28)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (27, N'29', N'ebjt8595XF', N'ebjt8595XF', 1, 1, 1, 29)
INSERT [dbo].[Login] ([SL], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (28, N'30', N'yeta9788LX', N'yeta9788LX', 1, 1, 1, 30)
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleType]) VALUES (1, N'Student')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([SectionSL], [ClassId], [SectionName], [SectionCapacity], [SectionYear]) VALUES (4, 1, N'A                                                 ', 1, 2019)
INSERT [dbo].[Section] ([SectionSL], [ClassId], [SectionName], [SectionCapacity], [SectionYear]) VALUES (5, 1, N'B                                                 ', 40, 2019)
INSERT [dbo].[Section] ([SectionSL], [ClassId], [SectionName], [SectionCapacity], [SectionYear]) VALUES (6, 2, N'A                                                 ', 2, 2019)
INSERT [dbo].[Section] ([SectionSL], [ClassId], [SectionName], [SectionCapacity], [SectionYear]) VALUES (7, 1, N'C                                                 ', 40, 2019)
SET IDENTITY_INSERT [dbo].[Section] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentDOB], [StudentBG], [StudentGender], [StudentNationality], [StudentPAddress], [StudentCAddress], [StudentPhoto], [DateOfAdmission], [Year], [StudentClass], [SectionId]) VALUES (16, N'fdg', CAST(0x00000000 AS Date), NULL, N'Select              ', NULL, NULL, NULL, NULL, CAST(0xD73F0B00 AS Date), 2019, 2, 4)
INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentDOB], [StudentBG], [StudentGender], [StudentNationality], [StudentPAddress], [StudentCAddress], [StudentPhoto], [DateOfAdmission], [Year], [StudentClass], [SectionId]) VALUES (17, N'A', CAST(0xBE3F0B00 AS Date), NULL, N'Select              ', NULL, NULL, NULL, NULL, CAST(0xD73F0B00 AS Date), 2019, 2, NULL)
INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentDOB], [StudentBG], [StudentGender], [StudentNationality], [StudentPAddress], [StudentCAddress], [StudentPhoto], [DateOfAdmission], [Year], [StudentClass], [SectionId]) VALUES (18, N'fsdg', CAST(0xBE3F0B00 AS Date), NULL, N'Select              ', NULL, NULL, NULL, NULL, CAST(0xD73F0B00 AS Date), 2019, 1, NULL)
INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentDOB], [StudentBG], [StudentGender], [StudentNationality], [StudentPAddress], [StudentCAddress], [StudentPhoto], [DateOfAdmission], [Year], [StudentClass], [SectionId]) VALUES (29, N'vishal', CAST(0xE43F0B00 AS Date), NULL, N'Select              ', NULL, NULL, NULL, NULL, CAST(0xD83F0B00 AS Date), 2019, 1, 4)
INSERT [dbo].[Student] ([StudentId], [StudentName], [StudentDOB], [StudentBG], [StudentGender], [StudentNationality], [StudentPAddress], [StudentCAddress], [StudentPhoto], [DateOfAdmission], [Year], [StudentClass], [SectionId]) VALUES (30, N'a', CAST(0xE43F0B00 AS Date), NULL, N'Select              ', NULL, NULL, NULL, NULL, CAST(0xD83F0B00 AS Date), 2019, 1, 4)
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[StudentAttendance] ON 

INSERT [dbo].[StudentAttendance] ([SL], [StudentId], [ClassId], [SectionId], [Date], [Remark], [SubjectId], [Status]) VALUES (5, 29, 0, 4, CAST(0xDE3F0B00 AS Date), NULL, 1, 1)
INSERT [dbo].[StudentAttendance] ([SL], [StudentId], [ClassId], [SectionId], [Date], [Remark], [SubjectId], [Status]) VALUES (6, 30, 0, 4, CAST(0xDE3F0B00 AS Date), NULL, 1, 1)
INSERT [dbo].[StudentAttendance] ([SL], [StudentId], [ClassId], [SectionId], [Date], [Remark], [SubjectId], [Status]) VALUES (7, 29, 1, 4, CAST(0xDE3F0B00 AS Date), NULL, 1, 1)
INSERT [dbo].[StudentAttendance] ([SL], [StudentId], [ClassId], [SectionId], [Date], [Remark], [SubjectId], [Status]) VALUES (8, 30, 1, 4, CAST(0xDE3F0B00 AS Date), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[StudentAttendance] OFF
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle]) VALUES (1, N'Bangla')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle]) VALUES (2, N'English')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle]) VALUES (3, N'Mathematics')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle]) VALUES (4, N'Social Science')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle]) VALUES (5, N'General Science')
SET IDENTITY_INSERT [dbo].[Subject] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [TeacherDesignation], [TeacherDOB], [TeacherBG], [TeacherJD], [TeacherNationality], [TeacherPAddress], [TeacherCAddress], [TeacherPhoto], [TeacherEmail], [TeacherPhoneNo], [TeacherGender]) VALUES (2, N'A', N'dgh', CAST(0xA23F0B00 AS Date), N'dgf       ', CAST(0xB73F0B00 AS Date), N'sf', N'dgh', N'gdh', NULL, N'ff@g.com', 345, N'Male')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
SET IDENTITY_INSERT [dbo].[TeacherDocSubmitted] ON 

INSERT [dbo].[TeacherDocSubmitted] ([SL], [TeacherId], [SSCMarksheet], [SSCCertificate], [HSCMarksheet], [HSCCertificate], [HonsMarksheet], [HonsCertificate]) VALUES (1, 7, 0, 0, 0, 0, 1, 1)
INSERT [dbo].[TeacherDocSubmitted] ([SL], [TeacherId], [SSCMarksheet], [SSCCertificate], [HSCMarksheet], [HSCCertificate], [HonsMarksheet], [HonsCertificate]) VALUES (2, 8, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[TeacherDocSubmitted] ([SL], [TeacherId], [SSCMarksheet], [SSCCertificate], [HSCMarksheet], [HSCCertificate], [HonsMarksheet], [HonsCertificate]) VALUES (3, 9, 0, 0, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[TeacherDocSubmitted] OFF
SET IDENTITY_INSERT [dbo].[TeacherQualification] ON 

INSERT [dbo].[TeacherQualification] ([SL], [TeacherId], [SSCYear], [HSCYear], [SSCInstitute], [HonsInstitute], [HonsYear], [HSCInstitute], [SSCGrade], [HSCGrade], [HonsGrade]) VALUES (1, 9, 97, 9, N'gfdg', N'sdfgdsf', 9, N'sdfgdsf', 98676, 68976, 87969)
SET IDENTITY_INSERT [dbo].[TeacherQualification] OFF
SET IDENTITY_INSERT [dbo].[TEnrolledSubject] ON 

INSERT [dbo].[TEnrolledSubject] ([SL], [TeacherId], [SubjectId], [SectionId], [Year], [ClassId]) VALUES (12, 2, 1, 4, 2019, 1)
SET IDENTITY_INSERT [dbo].[TEnrolledSubject] OFF
