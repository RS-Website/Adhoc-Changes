USE [RS_DB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_videoPGridviewwithsearch]    Script Date: 9/26/2020 11:28:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- =============================================

ALTER proc [dbo].[Proc_videoPGridviewwithsearch]
@Search as varchar(1000)
as
BEGIN
    Select * from Shabd_Table where videoLink != ' ' AND ((Shabd_Name_Eng like '%'+@Search+'%') or(Book_Name_Hindi like '%'+@Search+'%') or (Book_Name_Eng like '%'+@Search+'%')
	or (Bachan like '%'+@Search+'%') or (Shabd like '%'+@Search+'%') or (SplOccasion_Eng like '%'+@Search+'%') or (SplOccasion_Hindi like '%'+@Search+'%')
	)
	order by Shabd_Name_Eng asc
END
