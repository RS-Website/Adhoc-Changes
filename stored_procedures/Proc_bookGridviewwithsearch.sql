USE [RS_DB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_bookGridviewwithsearch]    Script Date: 9/30/2020 12:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- =============================================

CREATE proc [dbo].[Proc_bookGridviewwithsearch]

@Author as nvarchar(1000),
@Related as nvarchar(1000),
@Language as nvarchar(1000),
@Search as nvarchar(1000)
as
DECLARE @AuthorArg nvarchar(1000)
DECLARE @RelatedArg nvarchar(1000)
DECLARE @LanguageArg nvarchar(1000)
DECLARE @SearchArg nvarchar(1000)
BEGIN


if @Author='null'
begin
SET @AuthorArg=''
end
else
begin
SET @AuthorArg=@Author
end


if @Related='null'
begin
SET @RelatedArg=''
end
else
begin
SET @RelatedArg=@Related
end

if @Language='null'
begin
SET @LanguageArg=''
end
else
begin
SET @LanguageArg=@Language
end

if @Search='null'
begin
SET @SearchArg=''
end
else
begin
SET @SearchArg=@Search
end


select * from Book_Table where 
(
((authTransEng like '%'+@AuthorArg+'%') or (authTransHin like N'%'+@AuthorArg+'%')) and
(related like '%'+@RelatedArg+'%') and
((langEng like '%'+@LanguageArg+'%') or (langHin like N'%'+@LanguageArg+'%')) and

((bNameEng like '%'+@SearchArg+'%') or (bNameHin like N'%'+@SearchArg+'%') or (authTransEng like '%'+@SearchArg+'%') or (authTransHin like N'%'+@SearchArg+'%') or
(pubEng like '%'+@SearchArg+'%') or (pubHin like N'%'+@SearchArg+'%') or (langEng like '%'+@SearchArg+'%') or (langHin like N'%'+@SearchArg+'%') or
(related like '%'+@SearchArg+'%'))
)
order by bNameEng asc

END
