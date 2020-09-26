USE [RS_DB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_videoCGridviewwithsearch]    Script Date: 9/26/2020 12:25:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- =============================================

CREATE proc [dbo].[Proc_videoCGridviewwithsearch]
@Search as nvarchar(1000)
as
BEGIN
    Select * from Vclip_Table where ((Clip_Title_Eng like '%'+@Search+'%') or (Clip_Title_Hin like '%'+@Search+'%') or(Clip_Title_Hin like '%'+@Search+'%') or (Clip_Sum_Eng like '%'+@Search+'%')
	or (Clip_Sum_Hin like '%'+@Search+'%') or (Remarks like '%'+@Search+'%'))
	order by Clip_Title_Eng asc
END
