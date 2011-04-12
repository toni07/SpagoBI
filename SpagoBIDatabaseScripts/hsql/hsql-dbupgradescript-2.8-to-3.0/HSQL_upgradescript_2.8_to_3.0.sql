---Sintassi Da controllare---
INSERT into SBI_DOMAINS (VALUE_CD,VALUE_NM,DOMAIN_CD,DOMAIN_NM,VALUE_DS) values ('Groovy','Groovy','SCRIPT_TYPE','Script Type','Script Type');
INSERT into SBI_DOMAINS (VALUE_CD,VALUE_NM,DOMAIN_CD,DOMAIN_NM,VALUE_DS) values ('Javascript','Javascript','SCRIPT_TYPE','Script Type','Script Type');
INSERT into SBI_DOMAINS (VALUE_CD,VALUE_NM,DOMAIN_CD,DOMAIN_NM,VALUE_DS) values ('File','SbiFileDataSet','DATA_SET_TYPE','Data Set Type','SbiFileDataSet');
INSERT into SBI_DOMAINS (VALUE_CD,VALUE_NM,DOMAIN_CD,DOMAIN_NM,VALUE_DS) values ('Query','SbiQueryDataSet','DATA_SET_TYPE','Data Set Type','SbiQueryDataSet');
INSERT into SBI_DOMAINS (VALUE_CD,VALUE_NM,DOMAIN_CD,DOMAIN_NM,VALUE_DS) values ('Java Class','SbiJClassDataSet','DATA_SET_TYPE','Data Set Type','SbiJClassDataSet');
INSERT into SBI_DOMAINS (VALUE_CD,VALUE_NM,DOMAIN_CD,DOMAIN_NM,VALUE_DS) values ('Web Service','SbiWSDataSet','DATA_SET_TYPE','Data Set Type','SbiWSDataSet');
INSERT into SBI_DOMAINS (VALUE_CD,VALUE_NM,DOMAIN_CD,DOMAIN_NM,VALUE_DS) values ('Script','SbiScriptDataSet','DATA_SET_TYPE','Data Set Type','SbiScriptDataSet');
INSERT into SBI_DOMAINS (VALUE_CD,VALUE_NM,DOMAIN_CD,DOMAIN_NM,VALUE_DS) values ('Qbe','SbiQbeDataSet','DATA_SET_TYPE','Data Set Type','SbiQbeDataSet');

ALTER TABLE SBI_DATA_SET DROP COLUMN EXECUTOR_CLASS;
ALTER TABLE SBI_DATA_SET ADD COLUMN CATEGORY_ID INTEGER;

ALTER TABLE SBI_DATA_SET ADD CONSTRAINT FK_SBI_DATA_SET_CAT  FOREIGN KEY FK_SBI_DATA_SET_CAT (CATEGORY_ID) REFERENCES SBI_DOMAINS (VALUE_ID) ON DELETE CASCADE ON UPDATE RESTRICT;
---Sintassi Da controllare---