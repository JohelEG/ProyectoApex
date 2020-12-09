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
--   Date and Time:   07:21 Miércoles Diciembre 9, 2020
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
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
