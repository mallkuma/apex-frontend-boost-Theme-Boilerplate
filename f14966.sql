set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>1703624844661254
,p_default_application_id=>14966
,p_default_owner=>'HR'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 14966 - apex-frontend-boost Boilerplate (Standard)
--
-- Application Export:
--   Application:     14966
--   Name:            apex-frontend-boost Boilerplate (Standard)
--   Date and Time:   11:58 Monday March 28, 2016
--   Exported By:     DIYAGDEV
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     103895512254889
--

-- Application Statistics:
--   Pages:                      1
--   Shared Components:
--     Logic:
--       Processes:              1
--       Build Options:          1
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 2
--         Region:               1
--         Label:                1
--         List:                 1
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               1
--         Report:               2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,14966)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'apex-frontend-boost Boilerplate (Standard)')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'14966')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt=>'2EF51444DD573C61805687582DBA41A50C9B6F3E0E729BBA5361E6D3771F386B'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(7010783538257946045)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Theme Boilerplate'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_last_updated_by=>'DIYAGDEV'
,p_last_upd_yyyymmddhh24miss=>'20160328115713'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>482
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7011354366986433263)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7011354849138433271)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Option 1'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7011355143896433271)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Option 2'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7011355440436433272)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Option 3'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7011952350835422319)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7011952553795422320)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Option 1'
,p_list_item_link_target=>'#'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7011952838925422323)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Option 2'
,p_list_item_link_target=>'#'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7011953167579422323)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Logout'
,p_list_item_link_target=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6850684578238583187)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(6850684650818583187)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7010772443687946015)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(1727628185669531)
,p_process_sequence=>-999
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OOS APEX Front-End Boost Config'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_cookie owa_cookie.cookie;',
'begin',
'    l_cookie := owa_cookie.get(''oos-apex-frontend-boost-app-images'');',
'',
'    if l_cookie.vals.count > 0 then',
'        apex_application.g_flow_images := l_cookie.vals(1);',
'    end if;',
'end;'))
,p_required_patch=>wwv_flow_api.id(1727149931657396)
);
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(7010784652318946050)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1899757496375505404)
,p_theme_id=>102
,p_name=>'Page - Modal'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="APEX Theme Boilerplate">',
'    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>',
'    ',
'    <!-- Mandatory APEX CSS Stuff -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Your CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #TEMPLATE_CSS#',
'    #APPLICATION_CSS#',
'    ',
'    <!-- Additionnal CSS (that needs a good reason to use) -->',
'    #PAGE_CSS#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<div class="modal #PAGE_CSS_CLASSES#">',
'    <div class="modal-content">',
'        #SUCCESS_MESSAGE#',
'        #NOTIFICATION_MESSAGE#',
'        #BODY#',
'    </div>',
'    <div class="modal-footer">',
'        #REGION_POSITION_08#',
'    </div>',
'</div>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal JS (that needs a good reason to use) -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div>#MESSAGE#</div>'
,p_notification_message=>'<div>#MESSAGE#</div>'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'    #CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1899757916954505411)
,p_page_template_id=>wwv_flow_api.id(1899757496375505404)
,p_name=>'Modal Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1899758861715505632)
,p_theme_id=>102
,p_name=>'Page - Standard'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="APEX Theme Boilerplate">',
'    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>',
'    ',
'    <!-- Mandatory APEX CSS Stuff -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Your CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #TEMPLATE_CSS#',
'    #APPLICATION_CSS#',
'    ',
'    <!-- Additionnal CSS (that needs a good reason to use) -->',
'    #PAGE_CSS#',
'</head>',
'<body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'',
'<!-- Header -->',
'<header>',
'    #NAVIGATION_BAR#',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</header>',
'',
'<!-- Main Content -->',
'<main>',
'    #GLOBAL_NOTIFICATION#',
'    #SUCCESS_MESSAGE#',
'    #NOTIFICATION_MESSAGE#',
'    #BODY#',
'</main>',
'',
'<!-- Footer -->',
'<footer>',
'    #REGION_POSITION_08#',
'</footer>',
'',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal JS that needs a good reason to use -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div>#MESSAGE#</div>'
,p_notification_message=>'<div>#MESSAGE#</div>'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#">',
'    #CONTENT#',
'</div>'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1899759281976505633)
,p_page_template_id=>wwv_flow_api.id(1899758861715505632)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1899761301078505634)
,p_page_template_id=>wwv_flow_api.id(1899758861715505632)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1899931179144598245)
,p_template_name=>'Button - Standard'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#><i class="#ICON_CSS_CLASSES#"></i>#LABEL#</a>',
''))
,p_translate_this_template=>'N'
,p_theme_class_id=>6
,p_theme_id=>102
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1899753390657497725)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    #TITLE#',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</div>'))
,p_page_plug_template_name=>'Region - Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1899822190675531722)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'List - Standard'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>' <ul id="#LIST_ID#" class="#COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>' '
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1899772206861509255)
,p_row_template_name=>'Report - Standard - Column'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<table id="report_#REGION_STATIC_ID#" class="#COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'<tfoot>',
'    <div>#EXTERNAL_LINK##CSV_LINK#</div>',
'</tfoot>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
'<tr>'))
,p_column_heading_template=>'<th id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="instructiontext">#TEXT#</span>'
,p_next_page_template=>'<a href="#LINK#">next</a>'
,p_previous_page_template=>'<a href="#LINK#">previous</a>'
,p_next_set_template=>'<a href="#LINK#">next set</a>'
,p_previous_set_template=>'<a href="#LINK#">previous set</a>'
,p_theme_id=>102
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(1899772206861509255)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1899798397048522397)
,p_row_template_name=>'Report - Standard - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#COMPONENT_CSS_CLASSES#">',
'    #1##2##3##4##5#',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>102
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1899820521338527078)
,p_template_name=>'Label - Standard'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="#ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>102
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(1899934176128606901)
,p_name=>'Breadcrumb - Standard'
,p_before_first=>'<div class="#COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'#NAME#'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_after_last=>'</div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>102
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(1899935306420610919)
,p_page_name=>'Popup - Standard'
,p_theme_id=>102
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(1899897513878622174)
,p_cal_template_name=>'Calendar - Standard'
,p_day_of_week_format=>'<th>#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="">',
' <tr>',
'   <td align="center" style="font-weight:bold;">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="1" cellpadding="1" cellspacing="1" summary="0">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div>#DD#</div><br />'
,p_day_open_format=>'<td valign="top">'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" bgcolor="#d3d3d3">'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>'<td valign="top">'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>#DD#</div>'
,p_nonday_open_format=>'<td valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_theme_id=>102
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(1899681707909436093)
,p_theme_id=>102
,p_theme_name=>'Theme Boilerplate'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1899758861715505632)
,p_default_dialog_template=>wwv_flow_api.id(1899757496375505404)
,p_default_button_template=>wwv_flow_api.id(1899931179144598245)
,p_default_region_template=>wwv_flow_api.id(1899753390657497725)
,p_default_chart_template=>wwv_flow_api.id(1899753390657497725)
,p_default_form_template=>wwv_flow_api.id(1899753390657497725)
,p_default_reportr_template=>wwv_flow_api.id(1899753390657497725)
,p_default_tabform_template=>wwv_flow_api.id(1899753390657497725)
,p_default_wizard_template=>wwv_flow_api.id(1899753390657497725)
,p_default_menur_template=>wwv_flow_api.id(1899753390657497725)
,p_default_listr_template=>wwv_flow_api.id(1899753390657497725)
,p_default_irr_template=>wwv_flow_api.id(1899753390657497725)
,p_default_report_template=>wwv_flow_api.id(1899772206861509255)
,p_default_label_template=>wwv_flow_api.id(1899820521338527078)
,p_default_menu_template=>wwv_flow_api.id(1899934176128606901)
,p_default_calendar_template=>wwv_flow_api.id(1899897513878622174)
,p_default_list_template=>wwv_flow_api.id(1899822190675531722)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(1899753390657497725)
,p_default_dialogr_template=>wwv_flow_api.id(1899753390657497725)
,p_default_option_label=>wwv_flow_api.id(1899820521338527078)
,p_default_required_label=>wwv_flow_api.id(1899820521338527078)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(102),'')
,p_icon_library=>'FONTAWESOME'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1899764240407497797)
,p_theme_id=>102
,p_name=>'SECTION_HEADER_SIZE'
,p_display_name=>'Section Header Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(5988176320684207858)
,p_theme_id=>101
,p_name=>'COLLAPSIBLE_BEHAVIOR'
,p_display_name=>'Collapsible Behavior'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6062070444315572618)
,p_theme_id=>101
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6138353677277378724)
,p_theme_id=>101
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6421218091102173262)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6853599404611694844)
,p_theme_id=>101
,p_name=>'SECTION_HEADER_SIZE'
,p_display_name=>'Section Header Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6856788325442744328)
,p_theme_id=>101
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6856806745357746088)
,p_theme_id=>101
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6856808835498752222)
,p_theme_id=>101
,p_name=>'WAVE_COLOR'
,p_display_name=>'Wave Color'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'None'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7548204452144958342)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7560341686077458315)
,p_theme_id=>101
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7560342465384462965)
,p_theme_id=>101
,p_name=>'BACKGROUND_MODIFIER'
,p_display_name=>'Background Modifier'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7560363175528474388)
,p_theme_id=>101
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1727149931657396)
,p_build_option_name=>'DEV_ONLY'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_build_option_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'APEX Front-End Boost isn''t meant to run in production. This build option is used to limit the scope of APEX Front-End Boost to the development environment only.',
'',
'When you copy/import this application in a different schema anything tagged with the DEV_ONLY BO will not be run. If you re-import back into a development environment you''ll need to manually change the status to Include.'))
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(7010783538257946045)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(7010783339025946042)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Responsive'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>102
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(7011354366986433263)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(1899822190675531722)
,p_nav_list_template_options=>'#DEFAULT#'
,p_content_delivery_network=>'GOOGLE'
,p_css_file_urls=>'#APP_IMAGES#css/app#MIN#.css'
,p_javascript_file_urls=>'#APP_IMAGES#js/app#MIN#.js'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(7011952350835422319)
,p_nav_bar_list_template_id=>wwv_flow_api.id(1899822190675531722)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(7010783339025946042)
,p_name=>'Global Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(1899758861715505632)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20150412222933'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
