USE [RS_DB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_shabdGridviewwithsearch]    Script Date: 9/26/2020 12:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Proc_shabdGridviewwithsearch]
@Search as nvarchar(100)
as
begin
    Select * from Shabd_Table where ((Shabd_Name_Eng like '%'+@Search+'%') or (Shabd_Name_Hindi like '%'+@Search+'%') or( Book_Name_Hindi like '%'+@Search+'%') or (Book_Name_Eng like '%'+@Search+'%')
	or (Bachan like '%'+@Search+'%') or (Shabd like '%'+@Search+'%') or (SplOccasion_Eng like '%'+@Search+'%') or (SplOccasion_Hindi like '%'+@Search+'%')
	or (File_Name like '%'+@Search+'%')	or (Link like '%'+@Search+'%')  )
	order by Shabd_Name_Eng asc
	end
