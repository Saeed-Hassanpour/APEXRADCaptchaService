prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>1681363194291772
,p_default_application_id=>206
,p_default_owner=>'TEST'
);
end;
/
prompt --application/shared_components/plugins/item_type/info_apexrad_captcha_service
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(44510586532791175)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'INFO.APEXRAD.CAPTCHA.SERVICE'
,p_display_name=>'APEXRAD Captcha Service'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_api_version=>2
,p_render_function=>'apexrad_captcha_plugin.render'
,p_validation_function=>'apexrad_captcha_plugin.validate'
,p_standard_attributes=>'VISIBLE:ELEMENT:WIDTH:PLACEHOLDER:ICON'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You must setup network ACL:',
'',
'On Oracle Database 11g or higher, you will need an ACL to allow access to external network services.',
'',
'1)Here is an 11g example of creating an ACL to allow the [APEX_xxxxxx] user to access "service.apexrad.info".',
'',
'CONN / AS SYSDBA',
'BEGIN',
'  DBMS_NETWORK_ACL_ADMIN.create_acl (',
'    acl          => ''APEXRADCaptcha.xml'', ',
'    description  => ''APEXRAD Captcha Service'',',
'    principal    => ''APEX_xxxxxx'',',
'    is_grant     => TRUE, ',
'    privilege    => ''connect'',',
'    start_date   => SYSTIMESTAMP,',
'    end_date     => NULL);',
'',
'  DBMS_NETWORK_ACL_ADMIN.assign_acl (',
'    acl         => ''APEXRADCaptcha.xml'',',
'    host        => ''service.apexrad.info'', ',
'    lower_port  => 443,',
'    upper_port  => 443); ',
'',
'  COMMIT;',
'END;',
'/',
'',
'',
'2) On Oracle Database 12c or higher uses the following approach:',
'',
'CONN / AS SYSDBA',
'BEGIN',
'  DBMS_NETWORK_ACL_ADMIN.append_host_ace (',
'    host       => ''service.apexrad.info'', ',
'    lower_port => 443,',
'    upper_port => 443,',
'    ace        => xs$ace_type(privilege_list => xs$name_list(''http''),',
'                              principal_name => ''APEX_xxxxxx'',',
'                              principal_type => xs_acl.ptype_db)); ',
'END;',
'/',
'',
'Tip:',
'HTTPS (SSL) Web Services',
'APEXRAD Captcha needs an HTTPS (SSL) connection, For you will need to an Oracle wallet to hold the trusted certificates. ',
'You can see how that is done here <https://oracle-base.com/articles/misc/utl_http-and-ssl>.',
'',
'The MAKE_REQUEST and MAKE_REST_REQUEST routines accept P_WALLET_PATH and P_WALLET_PWD parameters, ',
'allowing you to specify the wallet location and password.',
'',
'p_wallet_path => ''file:/home/oracle/wallet'',',
'p_wallet_pwd  => ''MyPassword1''',
'',
'This plugin allows you to enter wallet information as parameters. ',
'If the wallet information are not provided, then the plugin rely on the wallet information defined in the APEX Admin Instance Setup (Home>Manage Instance>Instance Settings)',
'',
'If your network requires a proxy server to access the Internet, ',
'then you need to it setup either on Oracle APEX instance level (Application>Edit Application Properties) or on application level (Home>Manage Instance>Security).'))
,p_version_identifier=>'1.0'
,p_about_url=>'https://apexrad.info/apexrad-captcha/'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Author: Saeed Hassanpour-Paya Shetaban Andishe(APEXRAD)',
'Date:   25-JAN-2020'))
,p_files_version=>2
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44510791061791208)
,p_plugin_id=>wwv_flow_api.id(44510586532791175)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Captcha URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'https://service.apexrad.info/ar/rest/api/captcha/'
,p_max_length=>1000
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44511199842791214)
,p_plugin_id=>wwv_flow_api.id(44510586532791175)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Language'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'FA'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(44511581757791216)
,p_plugin_attribute_id=>wwv_flow_api.id(44511199842791214)
,p_display_sequence=>10
,p_display_value=>'Persian'
,p_return_value=>'FA'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(44512031901791217)
,p_plugin_attribute_id=>wwv_flow_api.id(44511199842791214)
,p_display_sequence=>20
,p_display_value=>'English'
,p_return_value=>'EN'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(44631026144341970)
,p_plugin_attribute_id=>wwv_flow_api.id(44511199842791214)
,p_display_sequence=>30
,p_display_value=>'Session'
,p_return_value=>'S'
,p_help_text=>'This value uses from API(apex_util.get_session_lang)'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44512534128791218)
,p_plugin_id=>wwv_flow_api.id(44510586532791175)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Expire Time(Second)'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'60'
,p_max_length=>2
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_is_translatable=>false
,p_help_text=>'The time is Seconds.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44555372777434866)
,p_plugin_id=>wwv_flow_api.id(44510586532791175)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'license key'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44570535452262891)
,p_plugin_id=>wwv_flow_api.id(44510586532791175)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Validation URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'https://service.apexrad.info/ar/rest/api/captchaValidation/'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44577154354170749)
,p_plugin_id=>wwv_flow_api.id(44510586532791175)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Wallet Path'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>'file:D:\oracle\admin\<your_database_sid>\<your_wallet_directory_name>'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the path of your Oracle Wallet. for example:',
'The entered Wallet Path will overwrite any setup done in the APEX Administration Wallet setup described below:',
'-----------------------------------------------------------------------------------------------------',
'For a more secure setup:',
'-----------------------------------------------------------------------------------------------------',
'Connect to Apex as internal admin user,',
'Goto Home> Manage Instance> Instance Settings',
'set Wallet Path(sample) : file:D:\ORACLE\ADMIN\<your_database_sid>\WALLET(windows) or file:/ORACLE/ADMIN/<your_database_sid>/WALLET(linux)',
'set Wallet Password: <Wallet Password>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44577987798184943)
,p_plugin_id=>wwv_flow_api.id(44510586532791175)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Wallet Password'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'<Wallet Password>'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '692E666C69702D6D652E666C69702D64656661756C742E66612E66612D726566726573683A686F7665727B636F6C6F723A236666326435343B637572736F723A706F696E7465727D406B65796672616D657320726F746174657B66726F6D7B7472616E73';
wwv_flow_api.g_varchar2_table(2) := '666F726D3A726F74617465283064656729207363616C6528312E32297D746F7B7472616E73666F726D3A726F746174652833363064656729207363616C6528312E32297D7D2E66612D726566726573682E666C69702D6D653A686F7665727B616E696D61';
wwv_flow_api.g_varchar2_table(3) := '74696F6E2D6E616D653A726F746174653B616E696D6174696F6E2D6475726174696F6E3A32733B616E696D6174696F6E2D697465726174696F6E2D636F756E743A696E66696E6974653B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A';
wwv_flow_api.g_varchar2_table(4) := '6C696E6561727D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(44633914079528150)
,p_plugin_id=>wwv_flow_api.id(44510586532791175)
,p_file_name=>'apexradCaptcha.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
