USE [RS_DB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_videoPGridviewwithsearch]    Script Date: 9/26/2020 11:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- =============================================

CREATE proc [dbo].[Proc_videoPGridviewwithsearch]
@Search as nvarchar(1000)
as
BEGIN
    DECLARE @sqlcmd nvarchar(1000) = 'Select * from Shabd_Table where videoLink is not null AND ((Shabd_Name_Eng like N''%'+@Search+'%'') or (Shabd_Name_Hindi like N''%'+@Search+'%'') or(Book_Name_Hindi like N''%'+@Search+'%'') or (Book_Name_Eng like N''%'+@Search+'%'')
	or (Bachan like N''%'+@Search+'%'') or (Shabd like N''%'+@Search+'%'') or (SplOccasion_Eng like N''%'+@Search+'%'') or (SplOccasion_Hindi like N''%'+@Search+'%'')
	)
	order by Shabd_Name_Eng asc'

	EXEC (@sqlcmd) 
	
END
