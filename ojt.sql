USE [OJT]
GO
/****** Object:  UserDefinedFunction [dbo].[GET_USER]    Script Date: 2023-01-31 오후 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
/* 함수 CREATE */
CREATE FUNCTION [dbo].[GET_USER](@ht INT) 
RETURNS TABLE 
AS
RETURN 
(
	SELECT * FROM TB_USER WHERE USER_HEIGHT > @ht
	--입력한 값(키)보다 큰 유저 반환
)


/* 함수 만들고나서 ALTER 시키는 부분 */
ALTER FUNCTION [dbo].[GET_USER](@ht INT) 
RETURNS TABLE 
AS
RETURN 
(
	SELECT * FROM TB_USER WHERE USER_HEIGHT > @ht
	--입력한 값(키)보다 큰 유저 반환
)

/* 함수호출 */
SELECT * FROM dbo.GET_USER(160)