USE [RS_DB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_BachanGridviewwithsearch]    Script Date: 9/26/2020 12:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- =============================================

CREATE proc [dbo].[Proc_BachanGridviewwithsearch]
@Search as nvarchar(100)
as
begin
    Select * from Bachan_Table where ((Author like '%'+@Search+'%') or( BookName_Hindi like '%'+@Search+'%') or (BookName_English like '%'+@Search+'%')
	or (Bachan_English like '%'+@Search+'%') or (Bachan_Hindi like '%'+@Search+'%') or (Bachan_Summary_English like '%'+@Search+'%') or (Bachan_Summary_Hindi like '%'+@Search+'%')
	or (Link like '%'+@Search+'%') )
	order by author asc
	end
