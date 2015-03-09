Use CHRSecurity

IF EXISTS(Select * from sys.tables where name = 'SecurityProfile')
Drop Table SecurityProfile

create table dbo.SecurityProfile(SecurityKey INT Not Null IDENTITY(1,1) primary key,
Description VarChar(100) not null,
LogUserID Int not null,
DateModified DATETIME NOT NULL DEFAULT (GETDATE()),
DateInserted DATETIME NOT NULL DEFAULT (GETDATE()))

select * from dbo.SecurityProfile

