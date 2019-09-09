USE Lab3
GO

CREATE PROCEDURE LeandraRiosLab3
@SchoolName varchar(50),
@SchoolNickname varchar(30),
@SchoolAddress varchar(50),
@LastUpdatedBy varchar(50),
@LastUpdated date

AS
BEGIN
INSERT INTO School
(SchoolName
,SchoolNickname
,SchoolAddress
,LastUpdatedBy
,LastUpdated)


VALUES 
(@SchoolName
,@SchoolNickname
,@SchoolAddress
,@LastUpdatedBy
,@LastUpdated)
END
GO
