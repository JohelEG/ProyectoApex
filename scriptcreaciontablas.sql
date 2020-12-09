CREATE TABLE LIB_AUTHORS 
    ( 
     	Aut_ID NUMBER (8),
		Aut_First_Name VARCHAR2 (30) NOT NULL, 
     	Aut_Last_Name VARCHAR2 (30) NOT NULL, 
     	Aut_Date_DOB DATE, 
     	Aut_Gender VARCHAR2 (1) NOT NULL, 
     	Aut_Contact VARCHAR2 (30), 
     	Aut_Other_Details VARCHAR2 (200) 
    ) ;

CREATE TABLE LIB_BOOKS 
    ( 
     Book_ID NUMBER (8),  
     Book_Aut_ID NUMBER (8) NOT NULL, 
     Book_Cat_ID NUMBER (8) NOT NULL, 
     Book_ISBN VARCHAR2 (15) NOT NULL, 
     Book_Published_Date DATE, 
     Book_Title VARCHAR2 (100) NOT NULL, 
     Book_Price  NUMBER (8,2) NOT NULL, 
     Book_Description  VARCHAR2 (200),
	 Book_Image BLOB,
	 Book_Mimetype VARCHAR2 (255),
	 Book_Filename VARCHAR2 (400),
	 Book_Image_Last_Update TIMESTAMP (6) WITH LOCAL TIME ZONE
    ) ;

/* prompt ...Creating the PK */


alter table LIB_AUTHORS add constraint aut_id_pk primary key (aut_id);
alter table LIB_BOOKS add constraint book_id_pk primary key (book_id);

/* prompt ...Creating the FK */

alter table LIB_BOOKS add CONSTRAINT Lib_Aut_fk FOREIGN KEY (Book_Aut_ID) REFERENCES LIB_AUTHORS (Aut_ID);
alter table LIB_BOOKS add CONSTRAINT Lib_Cat_fk FOREIGN KEY (Book_Cat_ID) REFERENCES LIB_BOOK_CATEGORIES (Cat_ID);

/* prompt ...Creating Indices */

CREATE INDEX ISBN_idx1 ON LIB_BOOKS (Book_ISBN);


/* prompt ...Creating sequences */

CREATE SEQUENCE   "LIB_AUTHORS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "LIB_BOOKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/

/* prompt ...Creating Triggers */


CREATE OR REPLACE TRIGGER  "BI_LIB_AUTHORS" 
  before insert on "LIB_AUTHORS"               
  for each row  
begin   
  if :NEW."AUT_ID" is null then 
    select "LIB_AUTHORS_SEQ".nextval into :NEW."AUT_ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_LIB_AUTHORS" ENABLE
/


CREATE OR REPLACE TRIGGER  "BI_LIB_BOOKS" 
  before insert on "LIB_BOOKS"               
  for each row  
begin   
  if :NEW."BOOK_ID" is null then 
    select "LIB_BOOKS_SEQ".nextval into :NEW."BOOK_ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_LIB_BOOKS" ENABLE
/