/*
Created		14/12/2016
Modified		14/12/2016
Project		
Model		
Company		
Author		
Version		
Database		MS SQL 7 
*/


Create table [Creyente] (
	[idCelula] Integer NOT NULL,
	[idCreyente] Integer NOT NULL,
	[Nombres_Creyente] Char(10) NULL,
	[Telefono_Celular] Char(10) NULL,
	[Telefono_fijo] Char(10) NULL,
	[Sector_vivienda] Char(10) NULL,
	[Fecha_Nacimiento] Datetime NULL,
	[LideraCelula] Char(2) NULL,
Primary Key  ([idCreyente])
) 
go

Create table [Miniesterio] (
	[idMinisterio] Integer NOT NULL,
	[Nombre_Ministerio] Char(10) NULL,
Primary Key  ([idMinisterio])
) 
go

Create table [Sirve_en] (
	[idCreyente] Integer NOT NULL,
	[fecha_inicio] Datetime NULL,
	[fecha_fin] Char(10) NULL,
	[] Char(10) NULL,
	[idMinisterio] Integer NOT NULL,
Primary Key  ([idCreyente],[idMinisterio])
) 
go

Create table [Celula] (
	[idCelula] Integer NOT NULL,
	[SectorCelula] Char(20) NULL,
	[Edad_minima] Integer NULL,
	[Edad_maxima] Integer NULL,
	[idCreyente] Integer NOT NULL,
Primary Key  ([idCelula])
) 
go

Create table [Reunion_de_Jovenes] (
	[fechareunion] Datetime NOT NULL,
	[lugarReunion] Char(50) NOT NULL,
	[Tema_Reunion] Char(10) NULL,
Primary Key  ([fechareunion],[lugarReunion])
) 
go

Create table [Prédica_en_texto] (
	[fechareunion] Datetime NOT NULL,
	[lugarReunion] Char(50) NOT NULL,
	[ArchivoPDF] Char(10) NULL,
Primary Key  ([fechareunion],[lugarReunion])
) 
go

Create table [Audio_Podcast] (
	[fechareunion] Datetime NOT NULL,
	[lugarReunion] Char(50) NOT NULL,
	[Archivo_MP3] Char(10) NULL,
Primary Key  ([fechareunion],[lugarReunion])
) 
go

Create table [Foto_Reunion] (
	[fechareunion] Datetime NOT NULL,
	[lugarReunion] Char(50) NOT NULL,
	[archivi_foto] Char(10) NULL,
Primary Key  ([fechareunion],[lugarReunion])
) 
go

Create table [Asiste_reunion] (
	[idCreyente] Integer NOT NULL,
	[fechareunion] Datetime NOT NULL,
	[lugarReunion] Char(50) NOT NULL,
Primary Key  ([idCreyente],[fechareunion],[lugarReunion])
) 
go

Create table [Predica_en_Reunion] (
	[idCreyente] Integer NOT NULL,
	[fechareunion] Datetime NOT NULL,
	[lugarReunion] Char(50) NOT NULL,
Primary Key  ([idCreyente],[fechareunion],[lugarReunion])
) 
go


Alter table [Celula] add  foreign key([idCreyente]) references [Creyente] ([idCreyente]) 
go
Alter table [Sirve_en] add  foreign key([idCreyente]) references [Creyente] ([idCreyente]) 
go
Alter table [Asiste_reunion] add  foreign key([idCreyente]) references [Creyente] ([idCreyente]) 
go
Alter table [Predica_en_Reunion] add  foreign key([idCreyente]) references [Creyente] ([idCreyente]) 
go
Alter table [Sirve_en] add  foreign key([idMinisterio]) references [Miniesterio] ([idMinisterio]) 
go
Alter table [Creyente] add  foreign key([idCelula]) references [Celula] ([idCelula]) 
go
Alter table [Prédica_en_texto] add  foreign key([fechareunion],[lugarReunion]) references [Reunion_de_Jovenes] ([fechareunion],[lugarReunion]) 
go
Alter table [Audio_Podcast] add  foreign key([fechareunion],[lugarReunion]) references [Reunion_de_Jovenes] ([fechareunion],[lugarReunion]) 
go
Alter table [Foto_Reunion] add  foreign key([fechareunion],[lugarReunion]) references [Reunion_de_Jovenes] ([fechareunion],[lugarReunion]) 
go
Alter table [Asiste_reunion] add  foreign key([fechareunion],[lugarReunion]) references [Reunion_de_Jovenes] ([fechareunion],[lugarReunion]) 
go
Alter table [Predica_en_Reunion] add  foreign key([fechareunion],[lugarReunion]) references [Reunion_de_Jovenes] ([fechareunion],[lugarReunion]) 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


/* Roles permissions */


/* Users permissions */


