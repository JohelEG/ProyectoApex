prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_default_workspace_id=>2175901767576694
);
end;
/
prompt  WORKSPACE 2175901767576694
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   18:57 Miércoles Diciembre 9, 2020
--   Exported By:     ADMIN
--   Export Type:     Workspace Export
--   Version:         19.1.0.00.15
--   Instance ID:     250119213143089
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_190100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>2175901767576694);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace CURSOAPEX-PROYECTO...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 2176126734576774
 ,p_provisioning_company_id => 2175901767576694
 ,p_short_name => 'CURSOAPEX-PROYECTO'
 ,p_display_name => 'CURSOAPEX-PROYECTO'
 ,p_first_schema_provisioned => 'CURSOAPEX'
 ,p_company_schemas => 'CURSOAPEX'
 ,p_ws_schema => 'CURSOAPEX'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'CURSOAPE'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'CURSOAPEX-PROYECTO'
 ,p_files_version => 2
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1260389819508042,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1260273786508042,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1260102014508041,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 5083137732631759,
  p_GROUP_NAME => 'Dev',
  p_SECURITY_GROUP_ID => 2175901767576694,
  p_GROUP_DESC => 'Grupo de Desarrolladores');
end;
/
prompt  Creating group grants...
begin
wwv_flow_fnd_user_api.set_group_group_grants (
  p_group_id => 5083137732631759
, p_granted_group_ids => wwv_flow_t_number(1260102014508041
                       , 1260273786508042
                       , 1260389819508042
));
end;
/
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '2175852030576694',
  p_user_name                    => 'ADMIN',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'jelizondog531@ulacit.ed.cr',
  p_web_password                 => 'E3EC456D84B58CCF32AAFAA773DACBFCDA8D2698',
  p_web_password_format          => '5;2;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'CURSOAPEX',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202012070613','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '5083330781639973',
  p_user_name                    => 'JELIZONDO',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'jelizondog531@ulacit.de.cr',
  p_web_password                 => 'D8C38802CCBA153402221152B64CDA9AB17B1F25',
  p_web_password_format          => '5;2;10000',
  p_group_ids                    => '5083137732631759:',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'CURSOAPEX',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202012070000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--csv data loading
--
begin
  wwv_flow_api.create_data_load_unload (
    p_id => 5092728797672369,
    p_platform => 'W',
    p_file_columns => 'AUT_ID,AUT_FIRST_NAME,AUT_LAST_NAME,AUT_DATE_DOB,AUT_GENDER,AUT_CONTACT,AUT_OTHER_DETAILS',
    p_data_type => 'ASCII IMPORT',
    p_data_schema => 'CURSOAPEX',
    p_data_table => 'LIB_AUTHORS',
    p_success_rows => 5,
    p_failed_rows => 0,
    p_data_id => 5092586693672072,
    p_job_id => null,
    p_created_on => to_date('202012070628','YYYYMMDDHH24MI'),
    p_created_by => 'ADMIN',
    p_created_by_id => null,
    p_enclosed_by => '',
    p_separator => ',');
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4155545F49442C4155545F46495253545F4E414D452C4155545F4C4153545F4E414D452C4155545F444154455F444F422C4155545F47454E4445522C4155545F434F4E544143542C4155545F4F544845525F44455441494C530D0A312C436C6172697361';
wwv_flow_api.g_varchar2_table(2) := '2C4D616D616E2C2C462C3131312D3232322D333333332C687474703A2F2F7777772E696E74726F64756363696F6E616F7261636C6561706578352E636F6D200D0A332C53757A652C4F726D616E2C2C462C3132332D3132332D313233342C687474703A2F';
wwv_flow_api.g_varchar2_table(3) := '2F7777772E73757A656F726D616E2E636F6D0D0A352C53746576652C4665756572737465696E2C2C4D2C3132332D3536372D383838382C687474703A2F2F7777772E73746576656E6665756572737465696E2E636F6D2F0D0A322C4E6963686F6C61732C';
wwv_flow_api.g_varchar2_table(4) := '537061726B732C2C4D2C3131312D3435362D393835362C20687474703A2F2F7777772E6E6963686F6C6173737061726B732E636F6D2F200D0A342C44616E69656C6C652C537465656C2C2C462C3435362D3435362D393939392C687474703A2F2F64616E';
wwv_flow_api.g_varchar2_table(5) := '69656C6C65737465656C2E636F6D0D0A';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 5092586693672072,
    p_flow_id => 0,
    p_name => 'F944789906/lib_authors.txt',
    p_pathid => null,
    p_filename => 'lib_authors.txt',
    p_title => '',
    p_mime_type => 'text/plain',
    p_dad_charset => 'ascii',
    p_created_by => 'ANONYMOUS',
    p_created_on => to_date('202012070628','YYYYMMDDHH24MI'),
    p_updated_by => 'ADMIN',
    p_updated_on => to_date('202012070628','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'CSV_DATA_IMPORT',
    p_file_charset => '');
end;
/
begin
  wwv_flow_api.create_data_load_unload (
    p_id => 5093044910675000,
    p_platform => 'W',
    p_file_columns => 'CAT_ID,CAT_DESCRIPTION',
    p_data_type => 'ASCII IMPORT',
    p_data_schema => 'CURSOAPEX',
    p_data_table => 'LIB_BOOK_CATEGORIES',
    p_success_rows => 10,
    p_failed_rows => 0,
    p_data_id => 5092963416674558,
    p_job_id => null,
    p_created_on => to_date('202012070628','YYYYMMDDHH24MI'),
    p_created_by => 'ADMIN',
    p_created_by_id => null,
    p_enclosed_by => '',
    p_separator => ',');
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4341545F49442C4341545F4445534352495054494F4E0D0A312C416374696F6E20616E6420416476656E747572650D0A322C4172742C2041726368697465637475726520616E642050686F746F6772617068790D0A332C427573696E6573730D0A342C44';
wwv_flow_api.g_varchar2_table(2) := '6965742C204865616C746820616E64204669746E6573730D0A352C4472616D610D0A362C486F72726F720D0A372C4D79737465727920616E64204372696D650D0A382C526F6D616E63650D0A392C536369656E63652046696374696F6E20616E64204661';
wwv_flow_api.g_varchar2_table(3) := '6E746173790D0A31302C536369656E636520616E6420546563686E6F6C6F6779';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 5092963416674558,
    p_flow_id => 0,
    p_name => 'F1709144066/lib_book_categories.txt',
    p_pathid => null,
    p_filename => 'lib_book_categories.txt',
    p_title => '',
    p_mime_type => 'text/plain',
    p_dad_charset => 'ascii',
    p_created_by => 'ANONYMOUS',
    p_created_on => to_date('202012070628','YYYYMMDDHH24MI'),
    p_updated_by => 'ADMIN',
    p_updated_on => to_date('202012070628','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'CSV_DATA_IMPORT',
    p_file_charset => '');
end;
/
begin
  wwv_flow_api.create_data_load_unload (
    p_id => 5093221374678298,
    p_platform => 'W',
    p_file_columns => 'BOOK_ID,BOOK_AUT_ID,BOOK_CAT_ID,BOOK_ISBN,BOOK_PUBLISHED_DATE,BOOK_TITLE,BOOK_PRICE,BOOK_DESCRIPTION,BOOK_MIMETYPE,BOOK_FILENAME,BOOK_IMAGE_LAST_UPDATE',
    p_data_type => 'ASCII IMPORT',
    p_data_schema => 'CURSOAPEX',
    p_data_table => 'LIB_BOOKS',
    p_success_rows => 6,
    p_failed_rows => 0,
    p_data_id => 5093118845676985,
    p_job_id => null,
    p_created_on => to_date('202012070629','YYYYMMDDHH24MI'),
    p_created_by => 'ADMIN',
    p_created_by_id => null,
    p_enclosed_by => '',
    p_separator => ',');
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := 'EFBBBF424F4F4B5F49442C424F4F4B5F4155545F49442C424F4F4B5F4341545F49442C424F4F4B5F4953424E2C424F4F4B5F5055424C49534845445F444154452C424F4F4B5F5449544C452C424F4F4B5F50524943452C424F4F4B5F4445534352495054';
wwv_flow_api.g_varchar2_table(2) := '494F4E2C424F4F4B5F4D494D45545950452C424F4F4B5F46494C454E414D452C424F4F4B5F494D4147455F4C4153545F5550444154450D0A312C312C31302C393738313531353238343138352C31392F31322F323031352C496E74726F64756363696F6E';
wwv_flow_api.g_varchar2_table(3) := '2061204F7261636C65204150455820352E302C34302C556E6120677569612070726163746963612070617261207573756172696F73206465206E6976656C20696E696369616C206520696E7465726D6564696F2070617261206465736172726F6C6C6172';
wwv_flow_api.g_varchar2_table(4) := '2061706C69636163696F6E6573207765622070726F666573696F6E616C6573207573616E646F204F7261636C65204170706C69636174696F6E20457870726573732E2C696D6167652F6A7065672C626F6F6B30312E6A70672C2C0D0A322C312C31302C39';
wwv_flow_api.g_varchar2_table(5) := '373831313532333338313136362C32312F30312F323031362C496E746567726163696F6E2053696E20436F73746F206465204A61737065725265706F72747320656E204F7261636C65204150455820352E302C31302C556E61206775C3AD61207072C3A1';
wwv_flow_api.g_varchar2_table(6) := '6374696361207061726120617072656E6465722061206372656172207265706F7274657320706572736F6E616C697A61646F73206C6973746F73207061726120696D7072696D6972207573616E646F20656C206B697420656E204F7261636C6520415045';
wwv_flow_api.g_varchar2_table(7) := '5820352E302E2C696D6167652F6A7065672C626F6F6B30322E6A70672C2C0D0A332C322C382C303535333831363731332C30352F30372F323030342C546865204E6F7465626F6F6B2C382C2253657420616D696420746865206175737465726520626561';
wwv_flow_api.g_varchar2_table(8) := '757479206F6620746865204E6F727468204361726F6C696E6120636F6173742C20546865204E6F7465626F6F6B20626567696E732077697468207468652073746F7279206F66204E6F61682043616C686F756E206120727572616C20536F75746865726E';
wwv_flow_api.g_varchar2_table(9) := '657220726563656E746C792072657475726E65642066726F6D20746865205365636F6E6420576F726C64205761722E222C696D6167652F6A7065672C626F6F6B30332E6A70672C2C0D0A342C332C332C303831323938323133342C31302F30312F323031';
wwv_flow_api.g_varchar2_table(10) := '322C546865204D6F6E657920436C6173732C31352C486F7720746F205374616E6420696E20596F757220547275746820616E6420437265617465207468652046757475726520596F7520446573657276652E2C696D6167652F6A7065672C626F6F6B3034';
wwv_flow_api.g_varchar2_table(11) := '2E6A70672C2C0D0A352C342C382C303338353334303233302C33302F31302F313939372C416D617A696E672047726163652C31332C224F6E2061207761726D204D6179206E6967687420696E2053616E204672616E636973636F2C20746865205269747A';
wwv_flow_api.g_varchar2_table(12) := '2D4361726C746F6E2062616C6C726F6F6D207368696D6D657273206173206120676C6974746572696E672063656C6562726974792D737475646465642063726F7764206761746865727320666F72206120636861726974792064696E6E65722064616E63';
wwv_flow_api.g_varchar2_table(13) := '652E222C696D6167652F6A7065672C626F6F6B30352E6A70672C2C0D0A362C352C31302C313434393332343435322C31362F30322F323031342C4F7261636C6520504C2F53514C2050726F6772616D6D696E672C35352C436F6E73696465726564207468';
wwv_flow_api.g_varchar2_table(14) := '652062657374204F7261636C6520504C2F53514C2070726F6772616D6D696E6720677569646520627920746865204F7261636C6520636F6D6D756E6974792E2C696D6167652F6A7065672C626F6F6B30362E6A70672C2C0D0A';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 5093118845676985,
    p_flow_id => 0,
    p_name => 'F-848428083/lib_books.txt',
    p_pathid => null,
    p_filename => 'lib_books.txt',
    p_title => '',
    p_mime_type => 'text/plain',
    p_dad_charset => 'ascii',
    p_created_by => 'ANONYMOUS',
    p_created_on => to_date('202012070628','YYYYMMDDHH24MI'),
    p_updated_by => 'ADMIN',
    p_updated_on => to_date('202012070628','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'CSV_DATA_IMPORT',
    p_file_charset => '');
end;
/
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_flow_api.create_password_history (
    p_id => 2176390791576786,
    p_user_id => 2175852030576694,
    p_password => 'F32033E5810F7F02E429AC0A548295EE1F1EE0A9');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 5079456706587288,
    p_user_id => 2175852030576694,
    p_password => 'E3EC456D84B58CCF32AAFAA773DACBFCDA8D2698');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 5083493899639985,
    p_user_id => 5083330781639973,
    p_password => 'D8C38802CCBA153402221152B64CDA9AB17B1F25');
end;
/
----------------
--preferences
--
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5350803708233060,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_IG_712080000591813402_CURRENT_REPORT',
    p_attribute_value => '712386498335634625:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5080371810596093,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '72328790154483268');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5080443257596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4001T3',
    p_attribute_value => '72328790154483268,4001');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5080531505596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '72329795312505899');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5080643919596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4021T101',
    p_attribute_value => '72329795312505899,4021');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5080727184596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '72330278206509731');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5080839145596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4051T3',
    p_attribute_value => '72330278206509731,4051');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5080993866596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '16565172685526446');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081084019596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4301T3',
    p_attribute_value => '16565172685526446,4301');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081166008596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '72331295244515034');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081254889596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4351T3',
    p_attribute_value => '72331295244515034,4351');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081382731596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4400T3',
    p_attribute_value => '72331791243517365');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081427322596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4401T3',
    p_attribute_value => '72331791243517365,4401');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081566717596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '72332249557526712');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081662176596094,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4501T3',
    p_attribute_value => '72332249557526712,4501');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081789636596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '72332775553531661');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081874844596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4551T3',
    p_attribute_value => '72332775553531661,4551');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5081985401596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '72333216619538152');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5082008437596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4701T3',
    p_attribute_value => '72333216619538152,4701');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5082172436596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '72333757135541211');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5082277601596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4751T3',
    p_attribute_value => '72333757135541211,4751');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5082323829596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4800T3',
    p_attribute_value => '72334208468543765');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5082458109596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4801T3',
    p_attribute_value => '72334208468543765,4801');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5082506823596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '72334735125547461');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5082618203596095,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_THEME_STYLE_A4851T3',
    p_attribute_value => '72334735125547461,4851');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5342542316262217,
    p_user_id => 'ADMIN',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '280:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5293610083103259,
    p_user_id => 'ADMIN',
    p_preference_name => 'F4500_1157684935965338210_SPLITTER_STATE',
    p_attribute_value => '393:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5080071276589337,
    p_user_id => 'ADMIN',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '102');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5309450574114015,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP102_P9_R5294474090112559_SORT',
    p_attribute_value => 'fsp_sort_1_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5320661943069362,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP4500_P2102_R5737432600960966_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5320789303070627,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP4500_P2155_R15607221124933219_SORT',
    p_attribute_value => 'fsp_sort_3_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5322084831082323,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP4500_P24_R12183729610626245_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5293707668110523,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP4500_P38_R159940232617099966_SORT',
    p_attribute_value => 'fsp_sort_4_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5348613003276309,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_102_P9_W5344162729275524',
    p_attribute_value => '5348103882276307____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5238987980692613,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5238628274687944,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5239316288782771,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P287_W47869516939800889',
    p_attribute_value => '47870618297805517____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5239535663795430,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P312_W26482817283914173',
    p_attribute_value => '26483725907914179____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5254033862889444,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P4050_W10642116325440827',
    p_attribute_value => '10643624462441172____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5253607492889173,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5240363875823434,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P4110_W1548412223182178',
    p_attribute_value => '1550029190194632____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5239144656742981,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4000_P546_W30205316146531602',
    p_attribute_value => '30206031208532453____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5310550203029967,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5316929400159977,
    p_user_id => 'ADMIN',
    p_preference_name => 'PD_GROUP_BY_COMPONENT_TYPE',
    p_attribute_value => 'Y');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5311688064089118,
    p_user_id => 'ADMIN',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '956');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5092383331664741,
    p_user_id => 'ADMIN',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5079797236589296,
    p_user_id => 'ADMIN',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 5241670955859756,
    p_user_id => 'ADMIN',
    p_preference_name => 'WIZARD_SQL_SOURCE_TYPE',
    p_attribute_value => 'QUERY');
end;
/
----------------
--query builder
--
begin
  wwv_flow_api.create_qb_saved_query (
    p_id => 5323223680145834
    ,p_query_owner => 'CURSOAPEX'
    ,p_title => 'Categories_sequence'
 ,p_qb_sql => 
'CREATE SEQUENCE "Categories_sequence"'||wwv_flow.LF||
'MINVALUE 1'||wwv_flow.LF||
'INCREMENT BY 1'||wwv_flow.LF||
'START WITH 1'||wwv_flow.LF||
'CACHE 13'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081822','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'ADMIN'
    ,p_last_updated_on => to_date('202012081822','YYYYMMDDHH24MI'));
end;
/
----------------
--sql scripts
--
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '435245415445205441424C45204C49425F415554484F5253200D0A2020202028200D0A2020202020094175745F4944204E554D424552202838292C0D0A09094175745F46697273745F4E616D652056415243484152322028333029204E4F54204E554C4C';
wwv_flow_api.g_varchar2_table(2) := '2C200D0A2020202020094175745F4C6173745F4E616D652056415243484152322028333029204E4F54204E554C4C2C200D0A2020202020094175745F446174655F444F4220444154452C200D0A2020202020094175745F47656E64657220564152434841';
wwv_flow_api.g_varchar2_table(3) := '523220283129204E4F54204E554C4C2C200D0A2020202020094175745F436F6E7461637420564152434841523220283330292C200D0A2020202020094175745F4F746865725F44657461696C73205641524348415232202832303029200D0A2020202029';
wwv_flow_api.g_varchar2_table(4) := '203B0D0A0D0A435245415445205441424C45204C49425F424F4F4B53200D0A2020202028200D0A2020202020426F6F6B5F4944204E554D424552202838292C20200D0A2020202020426F6F6B5F4175745F4944204E554D42455220283829204E4F54204E';
wwv_flow_api.g_varchar2_table(5) := '554C4C2C200D0A2020202020426F6F6B5F4361745F4944204E554D42455220283829204E4F54204E554C4C2C200D0A2020202020426F6F6B5F4953424E2056415243484152322028313529204E4F54204E554C4C2C200D0A2020202020426F6F6B5F5075';
wwv_flow_api.g_varchar2_table(6) := '626C69736865645F4461746520444154452C200D0A2020202020426F6F6B5F5469746C65205641524348415232202831303029204E4F54204E554C4C2C200D0A2020202020426F6F6B5F507269636520204E554D4245522028382C3229204E4F54204E55';
wwv_flow_api.g_varchar2_table(7) := '4C4C2C200D0A2020202020426F6F6B5F4465736372697074696F6E202056415243484152322028323030292C0D0A0920426F6F6B5F496D61676520424C4F422C0D0A0920426F6F6B5F4D696D65747970652056415243484152322028323535292C0D0A09';
wwv_flow_api.g_varchar2_table(8) := '20426F6F6B5F46696C656E616D652056415243484152322028343030292C0D0A0920426F6F6B5F496D6167655F4C6173745F5570646174652054494D455354414D50202836292057495448204C4F43414C2054494D45205A4F4E450D0A2020202029203B';
wwv_flow_api.g_varchar2_table(9) := '0D0A0D0A2F2A2070726F6D7074202E2E2E4372656174696E672074686520504B202A2F0D0A0D0A0D0A616C746572207461626C65204C49425F415554484F52532061646420636F6E73747261696E74206175745F69645F706B207072696D617279206B65';
wwv_flow_api.g_varchar2_table(10) := '7920286175745F6964293B0D0A616C746572207461626C65204C49425F424F4F4B532061646420636F6E73747261696E7420626F6F6B5F69645F706B207072696D617279206B65792028626F6F6B5F6964293B0D0A0D0A2F2A2070726F6D7074202E2E2E';
wwv_flow_api.g_varchar2_table(11) := '4372656174696E672074686520464B202A2F0D0A0D0A616C746572207461626C65204C49425F424F4F4B532061646420434F4E53545241494E54204C69625F4175745F666B20464F524549474E204B45592028426F6F6B5F4175745F4944292052454645';
wwv_flow_api.g_varchar2_table(12) := '52454E434553204C49425F415554484F525320284175745F4944293B0D0A616C746572207461626C65204C49425F424F4F4B532061646420434F4E53545241494E54204C69625F4361745F666B20464F524549474E204B45592028426F6F6B5F4361745F';
wwv_flow_api.g_varchar2_table(13) := '494429205245464552454E434553204C49425F424F4F4B5F43415445474F5249455320284361745F4944293B0D0A0D0A2F2A2070726F6D7074202E2E2E4372656174696E6720496E6469636573202A2F0D0A0D0A43524541544520494E44455820495342';
wwv_flow_api.g_varchar2_table(14) := '4E5F69647831204F4E204C49425F424F4F4B532028426F6F6B5F4953424E293B0D0A0D0A0D0A2F2A2070726F6D7074202E2E2E4372656174696E672073657175656E636573202A2F0D0A0D0A4352454154452053455155454E4345202020224C49425F41';
wwv_flow_api.g_varchar2_table(15) := '5554484F52535F5345512220204D494E56414C55452031204D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352454D454E54204259203120535441525420574954482031204341434845203230204E';
wwv_flow_api.g_varchar2_table(16) := '4F4F5244455220204E4F4359434C450D0A2F0D0A204352454154452053455155454E4345202020224C49425F424F4F4B535F5345512220204D494E56414C55452031204D415856414C554520393939393939393939393939393939393939393939393939';
wwv_flow_api.g_varchar2_table(17) := '3939393920494E4352454D454E54204259203120535441525420574954482031204341434845203230204E4F4F5244455220204E4F4359434C450D0A2F0D0A0D0A2F2A2070726F6D7074202E2E2E4372656174696E67205472696767657273202A2F0D0A';
wwv_flow_api.g_varchar2_table(18) := '0D0A0D0A435245415445204F52205245504C414345205452494747455220202242495F4C49425F415554484F525322200D0A20206265666F726520696E73657274206F6E20224C49425F415554484F5253222020202020202020202020202020200D0A20';
wwv_flow_api.g_varchar2_table(19) := '20666F72206561636820726F7720200D0A626567696E2020200D0A20206966203A4E45572E224155545F494422206973206E756C6C207468656E200D0A2020202073656C65637420224C49425F415554484F52535F534551222E6E65787476616C20696E';
wwv_flow_api.g_varchar2_table(20) := '746F203A4E45572E224155545F4944222066726F6D207379732E6475616C3B200D0A2020656E642069663B200D0A656E643B200D0A0D0A2F0D0A414C544552205452494747455220202242495F4C49425F415554484F52532220454E41424C450D0A2F0D';
wwv_flow_api.g_varchar2_table(21) := '0A0D0A0D0A435245415445204F52205245504C414345205452494747455220202242495F4C49425F424F4F4B5322200D0A20206265666F726520696E73657274206F6E20224C49425F424F4F4B53222020202020202020202020202020200D0A2020666F';
wwv_flow_api.g_varchar2_table(22) := '72206561636820726F7720200D0A626567696E2020200D0A20206966203A4E45572E22424F4F4B5F494422206973206E756C6C207468656E200D0A2020202073656C65637420224C49425F424F4F4B535F534551222E6E65787476616C20696E746F203A';
wwv_flow_api.g_varchar2_table(23) := '4E45572E22424F4F4B5F4944222066726F6D207379732E6475616C3B200D0A2020656E642069663B200D0A656E643B200D0A0D0A2F0D0A414C544552205452494747455220202242495F4C49425F424F4F4B532220454E41424C450D0A2F';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 5084227669663107,
    p_flow_id => 4500,
    p_name => '5084227669663107/scriptcreaciontablas.sql',
    p_pathid => null,
    p_filename => 'scriptcreaciontablas.sql',
    p_title => 'scriptcreaciontablas.sql',
    p_mime_type => 'application/octet-stream',
    p_dad_charset => 'ascii',
    p_created_by => 'ADMIN',
    p_created_on => to_date('202012070626','YYYYMMDDHH24MI'),
    p_updated_by => 'ADMIN',
    p_updated_on => to_date('202012070626','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085338956663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 2
    ,p_src_line_number => 10
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086913667663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 5
    ,p_src_line_number => 26
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087163211663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 11
    ,p_src_line_number => 31
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087357406663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 13
    ,p_src_line_number => 32
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087579525663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 18
    ,p_src_line_number => 36
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087739247663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 20
    ,p_src_line_number => 37
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087938508663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 25
    ,p_src_line_number => 41
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088163436663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 31
    ,p_src_line_number => 47
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088384951663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 33
    ,p_src_line_number => 49
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089334816663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 39
    ,p_src_line_number => 63
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089558320663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 41
    ,p_src_line_number => 65
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5090588688663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 45
    ,p_src_line_number => 77
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5090705259663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 47
    ,p_src_line_number => 79
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087054547663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 10
    ,p_src_line_number => 31
    ,p_offset => 842
    ,p_length => 69
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'alter table LIB_AUTHORS add constraint aut_id_pk primary key (aut_id)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087245989663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 12
    ,p_src_line_number => 32
    ,p_offset => 914
    ,p_length => 69
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'alter table LIB_BOOKS add constraint book_id_pk primary key (book_id)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087425711663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 17
    ,p_src_line_number => 36
    ,p_offset => 1023
    ,p_length => 105
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'alter table LIB_BOOKS add CONSTRAINT Lib_Aut_fk FOREIGN KEY (Book_Aut_ID) REFERENCES LIB_AUTHORS (Aut_ID)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087636459663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 19
    ,p_src_line_number => 37
    ,p_offset => 1131
    ,p_length => 113
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'alter table LIB_BOOKS add CONSTRAINT Lib_Cat_fk FOREIGN KEY (Book_Cat_ID) REFERENCES LIB_BOOK_CATEGORIES (Cat_ID)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089453255663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 40
    ,p_src_line_number => 64
    ,p_offset => 1959
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TRIGGER  "BI_LIB_AUTHORS" ENABLE '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5090625557663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 46
    ,p_src_line_number => 78
    ,p_offset => 2256
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TRIGGER  "BI_LIB_BOOKS" ENABLE '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5084316398663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE LIB_AUTHORS  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5084494065663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 28
    ,p_length => 7
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    (  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5084536909663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 36
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     	Aut_ID NUMBER (8), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5084679596663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 62
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '		Aut_First_Name VARCHAR2 (30) NOT NULL,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5084705097663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 105
    ,p_length => 45
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     	Aut_Last_Name VARCHAR2 (30) NOT NULL,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5084808166663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 151
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     	Aut_Date_DOB DATE,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5084923184663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 178
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     	Aut_Gender VARCHAR2 (1) NOT NULL,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085098299663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 220
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     	Aut_Contact VARCHAR2 (30),  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085176573663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 255
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     	Aut_Other_Details VARCHAR2 (200)  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085257137663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 296
    ,p_length => 6
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085457884663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 12
    ,p_offset => 307
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE LIB_BOOKS  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085520680663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 13
    ,p_offset => 332
    ,p_length => 7
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    (  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085679235663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 14
    ,p_offset => 340
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     Book_ID NUMBER (8),   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085778808663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 15
    ,p_offset => 368
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     Book_Aut_ID NUMBER (8) NOT NULL,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085882495663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 16
    ,p_offset => 408
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     Book_Cat_ID NUMBER (8) NOT NULL,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5085926638663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 17
    ,p_offset => 448
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     Book_ISBN VARCHAR2 (15) NOT NULL,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086062598663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 18
    ,p_offset => 489
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     Book_Published_Date DATE,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086166023663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 19
    ,p_offset => 522
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     Book_Title VARCHAR2 (100) NOT NULL,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086246082663646
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 20
    ,p_offset => 565
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     Book_Price  NUMBER (8,2) NOT NULL,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086360910663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 21
    ,p_offset => 607
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     Book_Description  VARCHAR2 (200), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086487698663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 22
    ,p_offset => 647
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 Book_Image BLOB, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086527823663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 23
    ,p_offset => 667
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 Book_Mimetype VARCHAR2 (255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086623338663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 24
    ,p_offset => 700
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 Book_Filename VARCHAR2 (400), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086727448663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 25
    ,p_offset => 733
    ,p_length => 60
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 Book_Image_Last_Update TIMESTAMP (6) WITH LOCAL TIME ZONE '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5086878163663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 4
    ,p_src_line_number => 26
    ,p_offset => 794
    ,p_length => 6
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5087806844663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 24
    ,p_src_line_number => 41
    ,p_offset => 1285
    ,p_length => 47
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE INDEX ISBN_idx1 ON LIB_BOOKS (Book_ISBN)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088019862663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 30
    ,p_src_line_number => 46
    ,p_offset => 1377
    ,p_length => 140
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE   "LIB_AUTHORS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088261377663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 32
    ,p_src_line_number => 48
    ,p_offset => 1521
    ,p_length => 139
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' CREATE SEQUENCE   "LIB_BOOKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088477664663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 54
    ,p_offset => 1705
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER  "BI_LIB_AUTHORS"  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088574541663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 55
    ,p_offset => 1751
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on "LIB_AUTHORS"                '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088623711663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 56
    ,p_offset => 1800
    ,p_length => 17
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088721272663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 57
    ,p_offset => 1818
    ,p_length => 9
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin    '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088840749663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 58
    ,p_offset => 1828
    ,p_length => 33
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW."AUT_ID" is null then  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5088967870663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 59
    ,p_offset => 1862
    ,p_length => 72
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select "LIB_AUTHORS_SEQ".nextval into :NEW."AUT_ID" from sys.dual;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089055520663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 60
    ,p_offset => 1935
    ,p_length => 11
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089133615663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 61
    ,p_offset => 1947
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089220346663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 38
    ,p_src_line_number => 62
    ,p_offset => 1954
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089629241663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 68
    ,p_offset => 2006
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER  "BI_LIB_BOOKS"  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089795819663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 69
    ,p_offset => 2050
    ,p_length => 46
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on "LIB_BOOKS"                '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089860825663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 70
    ,p_offset => 2097
    ,p_length => 17
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5089991724663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 71
    ,p_offset => 2115
    ,p_length => 9
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin    '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5090071268663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 72
    ,p_offset => 2125
    ,p_length => 34
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW."BOOK_ID" is null then  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5090141519663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 73
    ,p_offset => 2160
    ,p_length => 71
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select "LIB_BOOKS_SEQ".nextval into :NEW."BOOK_ID" from sys.dual;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5090276161663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 74
    ,p_offset => 2232
    ,p_length => 11
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5090313835663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 75
    ,p_offset => 2244
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 5090414494663647
    ,p_file_id => 5084227669663107
    ,p_stmt_number => 44
    ,p_src_line_number => 76
    ,p_offset => 2251
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 5090920340664713,
    p_file_id => 5084227669663107,
    p_job_id => null,
    p_run_by => 'ADMIN',
    p_run_as => 'CURSOAPEX',
    p_started => to_date('202012070626','YYYYMMDDHH24MI'),
    p_start_time => 664720,
    p_ended => to_date('202012070626','YYYYMMDDHH24MI'),
    p_end_time => 664740,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091016933664721
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE TABLE LIB_AUTHORS      (       	Aut_ID NUMBER (8), 		Aut_First_Name VARCHAR2 (30) NOT NULL,       	Aut_Last_Name VARCHAR2 (30) NOT NULL,       	Aut_Date_DOB DATE,       	Aut_Gender VARCHAR2 (1) NOT NULL,       	Aut_Contact VARCHAR2 (30),       	Aut_Other_Details VARCHAR2 (200)      ) '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Tabla creada.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664721
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664722
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091198604664723
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 2
    ,p_stmt_num => 4
 ,p_stmt_text => 
'CREATE TABLE LIB_BOOKS      (       Book_ID NUMBER (8),        Book_Aut_ID NUMBER (8) NOT NULL,       Book_Cat_ID NUMBER (8) NOT NULL,       Book_ISBN VARCHAR2 (15) NOT NULL,       Book_Published_Date DATE,       Book_Title VARCHAR2 (100) NOT NULL,       Book_Price  NUMBER (8,2) NOT NULL,       Book_Description  VARCHAR2 (200), 	 Book_Image BLOB, 	 Book_Mimetype VARCHAR2 (255), 	 Book_Filename VAR'||
'CHAR2 (400), 	 Book_Image_Last_Update TIMESTAMP (6) WITH LOCAL TIME ZONE     ) '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Tabla creada.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664723
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664724
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091257046664724
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 3
    ,p_stmt_num => 10
 ,p_stmt_text => 
'alter table LIB_AUTHORS add constraint aut_id_pk primary key (aut_id)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Tabla modificada.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664724
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664727
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091368944664727
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 4
    ,p_stmt_num => 12
 ,p_stmt_text => 
'alter table LIB_BOOKS add constraint book_id_pk primary key (book_id)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Tabla modificada.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664727
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664728
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091490751664728
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 5
    ,p_stmt_num => 17
 ,p_stmt_text => 
'alter table LIB_BOOKS add CONSTRAINT Lib_Aut_fk FOREIGN KEY (Book_Aut_ID) REFERENCES LIB_AUTHORS (Aut_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Tabla modificada.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664728
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664731
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091524238664731
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 6
    ,p_stmt_num => 19
 ,p_stmt_text => 
'alter table LIB_BOOKS add CONSTRAINT Lib_Cat_fk FOREIGN KEY (Book_Cat_ID) REFERENCES LIB_BOOK_CATEGORIES (Cat_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Tabla modificada.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664731
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664733
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091670739664733
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 7
    ,p_stmt_num => 24
 ,p_stmt_text => 
'CREATE INDEX ISBN_idx1 ON LIB_BOOKS (Book_ISBN)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Índice creado.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664733
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664734
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091711752664734
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 8
    ,p_stmt_num => 30
 ,p_stmt_text => 
'CREATE SEQUENCE   "LIB_AUTHORS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Secuencia creada.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664734
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664735
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091866068664735
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 9
    ,p_stmt_num => 32
 ,p_stmt_text => 
' CREATE SEQUENCE   "LIB_BOOKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Secuencia creada.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664735
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664736
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5091964397664736
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 10
    ,p_stmt_num => 38
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER  "BI_LIB_AUTHORS"    before insert on "LIB_AUTHORS"                  for each row   begin      if :NEW."AUT_ID" is null then      select "LIB_AUTHORS_SEQ".nextval into :NEW."AUT_ID" from sys.dual;    end if;  end;   '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Disparador creado.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664736
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664737
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5092008271664738
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 11
    ,p_stmt_num => 40
 ,p_stmt_text => 
'ALTER TRIGGER  "BI_LIB_AUTHORS" ENABLE '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Disparador modificado.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664738
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664738
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5092148381664738
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 12
    ,p_stmt_num => 44
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER  "BI_LIB_BOOKS"    before insert on "LIB_BOOKS"                  for each row   begin      if :NEW."BOOK_ID" is null then      select "LIB_BOOKS_SEQ".nextval into :NEW."BOOK_ID" from sys.dual;    end if;  end;   '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Disparador creado.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664738
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664739
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 5092271359664739
    ,p_result_id => 5090920340664713
    ,p_file_id => 5084227669663107
    ,p_seq_id => 13
    ,p_stmt_num => 46
 ,p_stmt_text => 
'ALTER TRIGGER  "BI_LIB_BOOKS" ENABLE '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Disparador modificado.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_start_time => 664739
    ,p_ended => to_date('202012070626','YYYYMMDDHH24MI')
    ,p_end_time => 664740
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202012070626','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5321823057079077
 ,p_command => 
'CREATE SEQUENCE "Books_sequence"'||wwv_flow.LF||
'MINVALUE 1'||wwv_flow.LF||
'MAXVALUE 10'||wwv_flow.LF||
'INCREMENT BY 1'||wwv_flow.LF||
'START WITH 1'||wwv_flow.LF||
'CACHE 6'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081810','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5321955928081436
 ,p_command => 
'CREATE SEQUENCE "Categories_sequence"'||wwv_flow.LF||
'MINVALUE 1'||wwv_flow.LF||
'MAXVALUE 10'||wwv_flow.LF||
'INCREMENT BY 1'||wwv_flow.LF||
'START WITH 1'||wwv_flow.LF||
'CACHE 13'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081811','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5322963951136546
 ,p_command => 
'CREATE SEQUENCE "Categories_sequence"'||wwv_flow.LF||
'MINVALUE 1'||wwv_flow.LF||
'INCREMENT BY 1'||wwv_flow.LF||
'START WITH 1'||wwv_flow.LF||
'CACHE 13'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081820','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5323042518137601
 ,p_command => 
'Alter SEQUENCE "Categories_sequence"'||wwv_flow.LF||
'MINVALUE 1'||wwv_flow.LF||
'INCREMENT BY 1'||wwv_flow.LF||
'START WITH 1'||wwv_flow.LF||
'CACHE 13'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081820','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5323465445146809
 ,p_command => 
'CREATE SEQUENCE "Categories_sequence"'||wwv_flow.LF||
'MINVALUE 1'||wwv_flow.LF||
'INCREMENT BY 1'||wwv_flow.LF||
'START WITH 1'||wwv_flow.LF||
'CACHE 13'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081822','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5323858384149168
 ,p_command => 
'CREATE SEQUENCE "Categories_sequence"'||wwv_flow.LF||
'MINVALUE 1'||wwv_flow.LF||
'INCREMENT BY 1'||wwv_flow.LF||
'START WITH 1'||wwv_flow.LF||
'CACHE 13'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081822','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5324365724167629
 ,p_command => 
'create sequence "Sequencia_Categorias"'||wwv_flow.LF||
'start with 1'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'maxvalue 1000000000000000'||wwv_flow.LF||
'minvalue 1'||wwv_flow.LF||
'cache 13'||wwv_flow.LF||
'nocycle'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081825','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5324890235181001
 ,p_command => 
'alter sequence "Sequencia_Categorias"'||wwv_flow.LF||
'minvalue 1'||wwv_flow.LF||
'maxvalue 1000000000000000'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'nocycle'||wwv_flow.LF||
'cache 14'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081827','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5324968153184267
 ,p_command => 
'drop SEQUENCE "LIB_BOOKS_SEQ"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081828','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325071324184725
 ,p_command => 
'drop SEQUENCE "LIB_BOOK_CATEGORIES_SEQ"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081828','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325119006192301
 ,p_command => 
'drop SEQUENCE "Books_sequence"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081829','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325213303192872
 ,p_command => 
'drop SEQUENCE "Categories_sequence"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081829','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325357589193587
 ,p_command => 
'CREATE SEQUENCE   "LIB_AUTHORS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE'||wwv_flow.LF||
'/'||wwv_flow.LF||
' CREATE SEQUENCE   "LIB_BOOKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE'||wwv_flow.LF||
'/'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325486185194637
 ,p_command => 
'CREATE SEQUENCE   "LIB_AUTHORS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;'||wwv_flow.LF||
'/'||wwv_flow.LF||
' CREATE SEQUENCE   "LIB_BOOKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;'||wwv_flow.LF||
'/'
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325595526195378
 ,p_command => 
'CREATE SEQUENCE   "LIB_AUTHORS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE SEQUENCE   "LIB_BOOKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;'||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325619360195849
 ,p_command => 
'CREATE SEQUENCE   "LIB_AUTHORS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325733544196558
 ,p_command => 
'CREATE SEQUENCE   "LIB_BOOKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5325830925202007
 ,p_command => 
'drop SEQUENCE "Sequencia_Categorias"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5326327323226220
 ,p_command => 
'create sequence "SEQUENCIA_CATEGORIAS"'||wwv_flow.LF||
'start with 14'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'maxvalue 99999999999999999999999999999'||wwv_flow.LF||
'minvalue 1'||wwv_flow.LF||
'cache 14'||wwv_flow.LF||
'cycle'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081835','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5327049886256286
 ,p_command => 
'drop SEQUENCE "SEQUENCIA_CATEGORIAS"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081840','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5327153360259446
 ,p_command => 
'create sequence "SEQUENCIA_CATEGORIAS"'||wwv_flow.LF||
'start with 14'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'maxvalue 9999999999999999999999999999999'||wwv_flow.LF||
'minvalue 14'||wwv_flow.LF||
'cache 14'||wwv_flow.LF||
'nocycle'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081841','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5327899914297802
 ,p_command => 
'create sequence "LIB_BOOK_CATEGORIES_SEQ"'||wwv_flow.LF||
'start with 1'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'maxvalue 999999999999999999999999999999999999999'||wwv_flow.LF||
'minvalue 1'||wwv_flow.LF||
'cache 13'||wwv_flow.LF||
'cycle'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081847','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5328078247356378
 ,p_command => 
'alter sequence "LIB_BOOK_CATEGORIES_SEQ"'||wwv_flow.LF||
'minvalue 1'||wwv_flow.LF||
'maxvalue 9999999999999999999999999999'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'nocycle'||wwv_flow.LF||
'cache 13'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081857','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5328179514357727
 ,p_command => 
'alter sequence "LIB_BOOK_CATEGORIES_SEQ"'||wwv_flow.LF||
'minvalue 1'||wwv_flow.LF||
'maxvalue 9999999999999999999999999999'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'nocycle'||wwv_flow.LF||
'cache 13'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081857','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5328201705361300
 ,p_command => 
'drop SEQUENCE "SEQUENCIA_CATEGORIAS"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081857','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5328782029416334
 ,p_command => 
'alter sequence "LIB_BOOK_CATEGORIES_SEQ"'||wwv_flow.LF||
'minvalue 1'||wwv_flow.LF||
'maxvalue 9999999999999999999999999999'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'cycle'||wwv_flow.LF||
'cache 14'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012081907','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5330332806027842
 ,p_command => 
'create sequence "SEQUENCIA_CATEGORIAS"'||wwv_flow.LF||
'start with 15'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'maxvalue 9999999999999999999999999999999'||wwv_flow.LF||
'minvalue 15'||wwv_flow.LF||
'cache 20'||wwv_flow.LF||
'nocycle'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012082029','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5331210694062678
 ,p_command => 
'create sequence "SEQUENCIA_AUTORES"'||wwv_flow.LF||
'start with 8'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'maxvalue 9999999999999999999999999999999'||wwv_flow.LF||
'minvalue 8'||wwv_flow.LF||
'nocache'||wwv_flow.LF||
'nocycle'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012082035','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 5331326336065644
 ,p_command => 
'create sequence "SEQUENCIA_LIBROS"'||wwv_flow.LF||
'start with 8'||wwv_flow.LF||
'increment by 1'||wwv_flow.LF||
'maxvalue 9999999999999999999999999999999'||wwv_flow.LF||
'minvalue 8'||wwv_flow.LF||
'nocache'||wwv_flow.LF||
'nocycle'||wwv_flow.LF||
'noorder'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADMIN'
    ,p_created_on => to_date('202012082035','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'CURSOAPEX');
end;
/
----------------
--user access log
--
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012070630','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012070631','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012071606','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012071613','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012071644','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012071752','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012071902','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012081819','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012081907','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012082027','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012090605','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012090613','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012090625','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Autenticación de Application Express',
    p_app => 102,
    p_owner => 'CURSOAPEX',
    p_access_date => to_date('202012091855','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012070613','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 5,
    p_custom_status_text => 'Credenciales de conexión no válidas');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012070613','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012070619','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012071605','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012071612','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012071752','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012071810','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012081807','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012081906','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012082027','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 4,
    p_custom_status_text => 'Credenciales de conexión no válidas');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012082027','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012090601','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012090709','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012091845','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 4,
    p_custom_status_text => 'Credenciales de conexión no válidas');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012091845','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('202012091855','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...news
--
begin
null;
end;
/
--
prompt ...links
--
begin
null;
end;
/
--
prompt ...bugs
--
begin
null;
end;
/
--
prompt ...events
--
begin
null;
end;
/
--
prompt ...feature types
--
begin
null;
end;
/
--
prompt ...features
--
begin
null;
end;
/
--
prompt ...feature map
--
begin
null;
end;
/
--
prompt ...tasks
--
begin
null;
end;
/
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...task defaults
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'CURSOAPEX';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA CURSOAPEX - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_190100
-- Exported 18:57 Miércoles Diciembre 9, 2020 by: ADMIN
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 18:57 Miércoles Diciembre 9, 2020 by: ADMIN
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'CURSOAPEX-PROYECTO';
 
end;
/

begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
