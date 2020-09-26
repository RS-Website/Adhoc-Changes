USE [RS_DB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_santGridviewwithsearch]    Script Date: 9/26/2020 11:54:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Proc_santGridviewwithsearch]
@Search as nvarchar(100)
as
begin
    Select * from SantBani_Table where ((ShabdName_English like '%'+@Search+'%') or (ShabdName_Hindi like '%'+@Search+'%') or( Author_Hindi like '%'+@Search+'%') or (Author_English like '%'+@Search+'%')
	or (Category_Hindi like '%'+@Search+'%') or (category_English like '%'+@Search+'%') or (PartOfSankalan like '%'+@Search+'%') or (FileName like '%'+@Search+'%')
	or (Link like '%'+@Search+'%') )
	order by ShabdName_English asc
	end
