USE [RS_DB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_bookGridviewwithsearch]    Script Date: 9/26/2020 12:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- =============================================

CREATE proc [dbo].[Proc_bookGridviewwithsearch]

@Author as varchar(1000),
@Related as varchar(1000),
@Language as varchar(1000),
@Search as varchar(1000)
as
BEGIN

if @Author='null' and  @Related='null' and @Language='null' and  @Search='null'
begin
 select * from Book_Table order by bnameeng asc
 end
 else if @Author='null' and  @Related='null' and @Language='null' and  @Search<>'null'
 begin 
  select * from Book_Table where ((bNameEng like '%'+@Search+'%') or (bnamehin like  '%'+@Search+'%') or (authTransEng like '%'+@Search+'%'  ) 
 or (authTransHin like '%'+@Search+'%'  )  or (pubEng like '%'+@Search+'%' ) or  (pubHin like '%'+@Search+'%' ) or (pdfAvail like '%' +@Search+'%' )
 or (ebookAvail  like '%'+@Search+'%'  )  or (langEng like   '%'+@Search+'%'  ) or (langHin like   '%'+@Search+'%'  ) or (pdfLink like   '%'+@Search+'%'  )
 or (summaryHin like '%'+@Search+'%'  ) or (related like '%'+@Search+'%'  ) or (hwAvail like '%'+@Search+'%' ) 
 )  order by bnameeng asc
 end
  else if @Author='null' and  @Related='null' and @Language<>'null' and  @Search='null'
 begin 
  select * from Book_Table where (langEng like '%'+@Language+'%'  )   order by bnameeng asc
 
 end
 else if @Author='null' and  @Related='null' and @Language<>'null' and  @Search<>'null'
 begin 
  select * from Book_Table where (((bNameEng like '%'+@Search+'%') or (bnamehin like  '%'+@Search+'%') or (authTransEng like '%'+@Search+'%'  ) 
 or (authTransHin like '%'+@Search+'%'  )  or (pubEng like '%'+@Search+'%' ) or  (pubHin like '%'+@Search+'%' ) or (pdfAvail like '%' +@Search+'%' )
 or (ebookAvail  like '%'+@Search+'%'  )  or (langEng like   '%'+@Search+'%'  ) or (langHin like   '%'+@Search+'%'  ) or (pdfLink like   '%'+@Search+'%'  )
 or (summaryHin like '%'+@Search+'%'  ) or (related like '%'+@Search+'%'  ) or (hwAvail like '%'+@Search+'%' ))  and (langEng like '%'+@Language+'%'  ) 
 )  order by bnameeng asc
 end
 else if @Author='null' and  @Related<>'null' and @Language='null' and  @Search='null'
 begin 
  select * from Book_Table where  (related like '%'+@Related+'%'  )  order by bnameeng asc
 
 end
 else if @Author='null' and  @Related<>'null' and @Language='null' and  @Search<>'null'
 begin 
  select * from Book_Table where (((bNameEng like '%'+@Search+'%') or (bnamehin like  '%'+@Search+'%') or (authTransEng like '%'+@Search+'%'  ) 
 or (authTransHin like '%'+@Search+'%'  )  or (pubEng like '%'+@Search+'%' ) or  (pubHin like '%'+@Search+'%' ) or (pdfAvail like '%' +@Search+'%' )
 or (ebookAvail  like '%'+@Search+'%'  )  or (langEng like   '%'+@Search+'%'  ) or (langHin like   '%'+@Search+'%'  ) or (pdfLink like   '%'+@Search+'%'  )
 or (summaryHin like '%'+@Search+'%'  ) or (related like '%'+@Search+'%'  ) ) and (related like @Related)
 )  order by bnameeng asc
 end
 else if @Author='null' and  @Related<>'null' and @Language<>'null' and  @Search='null'
 begin 
  select * from Book_Table where ( (related like '%'+@Search+'%'  ) and (langEng like '%'+@Language+'%'  )  
 )  order by bnameeng asc
 end 
 else if @Author='null' and  @Related<>'null' and @Language<>'null' and  @Search<>'null'
 begin 
  select * from Book_Table where ((bNameEng like '%'+@Search+'%') or (bnamehin like  '%'+@Search+'%') or (authTransEng like '%'+@Search+'%'  ) 
 or (authTransHin like '%'+@Search+'%'  )  or (pubEng like '%'+@Search+'%' ) or  (pubHin like '%'+@Search+'%' ) or (pdfAvail like '%' +@Search+'%' )
 or (ebookAvail  like '%'+@Search+'%'  )  or (langEng like   '%'+@Search+'%'  ) or (langHin like   '%'+@Search+'%'  ) or (pdfLink like   '%'+@Search+'%'  )
 or (summaryHin like '%'+@Search+'%'  ) or (related like '%'+@Search+'%'  ) or (hwAvail like '%'+@Search+'%' ) ) and ((related like '%'+@Related+'%'  ) and  (langEng like '%'+@Language+'%'  ) 
 )  order by bnameeng asc
 end
 else if @Author<>'null' and  @Related='null' and @Language='null' and  @Search='null'
 begin 
  select * from Book_Table where  (authTransEng like '%'+@Author+'%')   order by bnameeng asc
 end
 else if @Author<>'null' and  @Related='null' and @Language='null' and  @Search<>'null'
 begin 
  select * from Book_Table where ((bNameEng like '%'+@Search+'%') or (bnamehin like  '%'+@Search+'%') or (authTransEng like '%'+@Search+'%'  ) 
 or (authTransHin like '%'+@Search+'%'  )  or (pubEng like '%'+@Search+'%' ) or  (pubHin like '%'+@Search+'%' ) or (pdfAvail like '%' +@Search+'%' )
 or (ebookAvail  like '%'+@Search+'%'  )  or (langEng like   '%'+@Search+'%'  ) or (langHin like   '%'+@Search+'%'  ) or (pdfLink like   '%'+@Search+'%'  )
 or (summaryHin like '%'+@Search+'%'  ) or (related like '%'+@Search+'%'  ) or (hwAvail like '%'+@Search+'%' ))  and ((authTransEng like '%'+@Author+'%')  )  order by bnameeng asc
 end
 else if @Author<>'null' and  @Related='null' and @Language<>'null' and  @Search='null'
 begin 
  select * from Book_Table where  ( (authTransEng like '%'+@Author+'%'  ) and  (langEng like '%'+@Language+'%'  )  )
  order by bnameeng asc
 end
 else if @Author<>'null' and  @Related='null' and @Language<>'null' and  @Search<>'null'
 begin 
  select * from Book_Table where ((bNameEng like '%'+@Search+'%') or (bnamehin like  '%'+@Search+'%') or (authTransEng like '%'+@Search+'%'  ) 
 or (authTransHin like '%'+@Search+'%'  )  or (pubEng like '%'+@Search+'%' ) or  (pubHin like '%'+@Search+'%' ) or (pdfAvail like '%' +@Search+'%' )
 or (ebookAvail  like '%'+@Search+'%'  )  or (langEng like   '%'+@Search+'%'  ) or (langHin like   '%'+@Search+'%'  ) or (pdfLink like   '%'+@Search+'%'  )
 or (summaryHin like '%'+@Search+'%'  ) or (related like '%'+@Search+'%'  ) or (hwAvail like '%'+@Search+'%' ))  and   ((authTransEng like '%'+@Author+'%') and
 (langEng like '%'+@Language+'%'  ) )
  order by bnameeng asc
 end
 else if @Author<>'null' and  @Related<>'null' and @Language='null' and  @Search='null'
 begin 
  select * from Book_Table where   ((related like '%'+@Related+'%'  ) and (authTransEng like '%'+@Author+'%') )
  order by bnameeng asc
 end
 else if @Author<>'null' and  @Related<>'null' and @Language='null' and  @Search<>'null'
 begin 
  select * from Book_Table where ((bNameEng like '%'+@Search+'%') or (bnamehin like  '%'+@Search+'%') or (authTransEng like '%'+@Search+'%'  ) 
 or (authTransHin like '%'+@Search+'%'  )  or (pubEng like '%'+@Search+'%' ) or  (pubHin like '%'+@Search+'%' ) or (pdfAvail like '%' +@Search+'%' )
 or (ebookAvail  like '%'+@Search+'%'  )  or (langEng like   '%'+@Search+'%'  ) or (langHin like   '%'+@Search+'%'  ) or (pdfLink like   '%'+@Search+'%'  )
 or (summaryHin like '%'+@Search+'%'  ) or (related like '%'+@Search+'%'  ) or (hwAvail like '%'+@Search+'%' ) ) and  ((related like '%'+@Related+'%'  ) and (authTransEng like '%'+@Author+'%') 

 )  order by bnameeng asc
 end
  else if @Author<>'null' and  @Related<>'null' and @Language<>'null' and  @Search='null'
 begin 
  select * from Book_Table where ( (related like '%'+@Related+'%'  ) and (authTransEng like '%'+@Author+'%') and  (langEng like '%'+@Language+'%'  ) )  order by bnameeng asc
 end
  else if @Author<>'null' and  @Related<>'null' and @Language<>'null' and  @Search<>'null'
 begin 
  select * from Book_Table where ((bNameEng like '%'+@Search+'%') or (bnamehin like  '%'+@Search+'%') or (authTransEng like '%'+@Search+'%'  ) 
 or (authTransHin like '%'+@Search+'%'  )  or (pubEng like '%'+@Search+'%' ) or  (pubHin like '%'+@Search+'%' ) or (pdfAvail like '%' +@Search+'%' )
 or (ebookAvail  like '%'+@Search+'%'  )  or (langEng like   '%'+@Search+'%'  ) or (langHin like   '%'+@Search+'%'  ) or (pdfLink like   '%'+@Search+'%'  )
 or (summaryHin like '%'+@Search+'%'  ) or (related like '%'+@Search+'%'  ) or (hwAvail like '%'+@Search+'%' )  ) and   ((related like '%'+@Related+'%'  ) and (authTransEng like '%'+@Author+'%') 
  and  (langEng like '%'+@Language+'%'  ) 
 )  order by bnameeng asc
 end
END
