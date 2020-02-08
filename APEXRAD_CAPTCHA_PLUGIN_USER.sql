CREATE OR REPLACE PACKAGE APEXRAD_CAPTCHA_PLUGIN_HTML IS
/*-----------------------------------
-- Author: Saeed Hassanpour-Paya Shetaban Andishe(APEXRAD)
-- Date:  2020-JAN-25
*/-----------------------------------
procedure items(p_image varchar2,p_item apex_plugin.t_item, p_item_name varchar2);
END APEXRAD_CAPTCHA_PLUGIN_HTML;
/
CREATE OR REPLACE PACKAGE BODY APEXRAD_CAPTCHA_PLUGIN_HTML IS

procedure items(p_image varchar2,p_item apex_plugin.t_item, p_item_name varchar2)
IS

BEGIN
  /*-----------------------------------*/
  -- Container which will hold the APEXRAD Captcha widget
  htp.p('<table cellspacing="0" cellpadding="0" border="0" style="text-align: center;">');
  htp.p('<tr>');
  htp.p('<td style="background-color: white; border-radius: 10px;line-height: 1.2rem;"> 
        <img src="data:image/png;base64,'||p_image||'"/></td>');
  htp.p('</tr>');
  htp.p('<tr><td style="padding-top: 5px; padding-bottom: 5px;">');
  htp.p('<a href="f?p='||nv('APP_ID')||':'||nv('APP_PAGE_ID')||':'||sys_context ('APEX$SESSION', 'APP_SESSION')||'"><i class="flip-me flip-default fa fa-refresh"></i>'||' تصویر‌امنیتی‌جدید'||'</a>');
  htp.p('</tr></td>');       
  htp.p('</table>');
  htp.p('<div class="t-Form-itemWrapper"  id="' || p_item.name || '_CAPTCHA_CONTAINER_VALUE" >');
  htp.p('<input type="text" id="'||p_item.name ||'"  name="'||p_item_name||'"  autocomplete="off"  
  class="text_field apex-item-text apex-item-has-icon" '||p_item.element_css_classes||'" '|| p_item.element_attributes||' placeholder="'||p_item.placeholder||'" required="" style=" text-align: center;" size="'||p_item.element_width||'" 
  maxlength="'||p_item.element_max_length||'" onkeypress="return apex.submit({request:'''||p_item.name||''',submitIfEnter:event})">');
  htp.p('</div>');
  htp.p('<div class="visuallyhidden" id="apexr-captchauid">');
  htp.p(apex_item.hidden(p_idx => 1,p_value => apex_json.get_varchar2(p_path => 'uid')));
  htp.p('</div>');

END items;

END APEXRAD_CAPTCHA_PLUGIN_HTML;
/

CREATE OR REPLACE PACKAGE APEXRAD_CAPTCHA_PLUGIN IS
/*-----------------------------------
-- Author: Saeed Hassanpour-Paya Shetaban Andishe(APEXRAD)
-- Date:  2020-JAN-25
*/-----------------------------------
procedure render (
                p_item                in apex_plugin.t_item,
                p_plugin              in apex_plugin.t_plugin,
                p_param               in apex_plugin.t_item_render_param,
                p_result              in out nocopy apex_plugin.t_item_render_result); 
procedure validate (
                    p_item   in            apex_plugin.t_item,
                    p_plugin in            apex_plugin.t_plugin,
                    p_param  in            apex_plugin.t_item_validation_param,
                    p_result in out nocopy apex_plugin.t_item_validation_result);
END APEXRAD_CAPTCHA_PLUGIN;
/
CREATE OR REPLACE PACKAGE BODY APEXRAD_CAPTCHA_PLUGIN wrapped 
0
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
3
b
9200000
1
4
0 
78
2 :e:
1PACKAGE:
1BODY:
1APEXRAD_CAPTCHA_PLUGIN:
1RENDER:
1P_ITEM:
1APEX_PLUGIN:
1T_ITEM:
1P_PLUGIN:
1T_PLUGIN:
1P_PARAM:
1T_ITEM_RENDER_PARAM:
1P_RESULT:
1OUT:
1NOCOPY:
1T_ITEM_RENDER_RESULT:
1L_ITEM_NAME:
1VARCHAR2:
1200:
1L_CAPTCHA_URL:
1ATTRIBUTE_01:
1TYPE:
1L_LANG:
1ATTRIBUTE_02:
1L_EXPIRETIME:
1ATTRIBUTE_03:
1L_LICENSEKEY:
1ATTRIBUTE_04:
1L_WALLET_PATH:
1ATTRIBUTE_06:
1L_WALLET_PWD:
1ATTRIBUTE_07:
1L_REST_RESULT:
1CLOB:
1L_IMAGE:
132765:
1L_LANG_IMAGE:
110:
1IS NULL:
1RAISE_APPLICATION_ERROR:
1-:
120001:
1The attributes of APEXRADCaptcha plugin are empty:
1APEX_CSS:
1ADD_FILE:
1P_NAME:
1apexradCaptcha:
1P_DIRECTORY:
1FILE_PREFIX:
1GET_INPUT_NAME_FOR_PAGE_ITEM:
1P_IS_MULTI_VALUE:
1FALSE:
1=:
1S:
1COALESCE:
1UPPER:
1APEX_UTIL:
1GET_SESSION_LANG:
1FA:
1APEX_WEB_SERVICE:
1G_REQUEST_HEADERS:
11:
1NAME:
1lang:
1VALUE:
12:
1remoteip:
1OWA_UTIL:
1GET_CGI_ENV:
1REMOTE_ADDR:
13:
1license:
14:
1expire:
1WWV_FLOW_UTILITIES:
1CLOB_TO_VARCHAR2:
1MAKE_REST_REQUEST:
1P_URL:
1P_HTTP_METHOD:
1POST:
1P_WALLET_PATH:
1P_WALLET_PWD:
1DELETE:
1G_STATUS_CODE:
1APEX_JSON:
1PARSE:
1GET_VARCHAR2:
1P_PATH:
1success:
1false:
120999:
1message:
1image:
1APEXRAD Captcha HTTPS request status :: :
1||:
1APEXRAD_CAPTCHA_PLUGIN_HTML:
1ITEMS:
1P_IMAGE:
1P_ITEM_NAME:
1IS_NAVIGABLE:
1APEX_PLUGIN_UTIL:
1DEBUG_PAGE_ITEM:
1TRUE:
1VALIDATE:
1T_ITEM_VALIDATION_PARAM:
1T_ITEM_VALIDATION_RESULT:
1L_VALIDATION_URL:
1ATTRIBUTE_05:
1L_CODE:
1NUMBER:
1L_PARM_NAME:
1APEX_APPLICATION_GLOBAL:
1VC_ARR2:
1L_PARM_VALUE:
1MESSAGE:
1مقدار کد امنیتی را وارد کنید:
1The attributes of plugin are empty:
1uid:
1APEX_APPLICATION:
1G_F01:
1code:
0

0
0
327
2
0 :2 a0 97 9a 8f :2 a0 6b b0
3d 8f :2 a0 6b b0 3d 8f :2 a0
6b b0 3d 90 :4 a0 6b b0 3f
b4 55 6a a3 a0 51 a5 1c
81 b0 a3 :2 a0 6b :2 a0 f 1c
:2 a0 6b 81 b0 a3 :2 a0 6b :2 a0
f 1c :2 a0 6b 81 b0 a3 :2 a0
6b :2 a0 f 1c :2 a0 6b 81 b0
a3 :2 a0 6b :2 a0 f 1c :2 a0 6b
81 b0 a3 :2 a0 6b :2 a0 f 1c
:2 a0 6b 81 b0 a3 :2 a0 6b :2 a0
f 1c :2 a0 6b 81 b0 a3 a0
1c 81 b0 a3 a0 51 a5 1c
81 b0 a3 a0 51 a5 1c 81
b0 a0 7e b4 2e a0 7e b4
2e 52 10 a0 7e b4 2e 52
10 a0 7e b4 2e 52 10 a0
7e 51 b4 2e 6e a5 57 b7
19 3c :2 a0 6b a0 6e e :3 a0
6b e a5 57 :3 a0 6b :2 a0 e
a5 b d a0 7e 6e b4 2e
:5 a0 6b a5 b 6e a5 b d
b7 :2 a0 d b7 :2 19 3c :2 a0 6b
51 a5 b a0 6b 6e d :2 a0
6b 51 a5 b a0 6b a0 d
:2 a0 6b 51 a5 b a0 6b 6e
d :2 a0 6b 51 a5 b a0 6b
:2 a0 6b 6e a5 b d :2 a0 6b
51 a5 b a0 6b 6e d :2 a0
6b 51 a5 b a0 6b a0 d
:2 a0 6b 51 a5 b a0 6b 6e
d :2 a0 6b 51 a5 b a0 6b
a0 d :3 a0 6b :2 a0 6b :2 a0 e
a0 6e e :2 a0 e :2 a0 e a5
b a5 b d :2 a0 6b a0 6b
57 b3 :2 a0 6b 7e 6e b4 2e
:2 a0 6b a0 a5 57 :2 a0 6b a0
6e e a5 b 7e 6e b4 2e
a0 7e 51 b4 2e :2 a0 6b a0
6e e a5 b a5 57 b7 :3 a0
6b a0 6e e a5 b d b7
:2 19 3c b7 a0 7e 51 b4 2e
6e 7e :2 a0 6b b4 2e a5 57
b7 :2 19 3c :2 a0 6b :2 a0 e :2 a0
e :2 a0 e a5 57 :2 a0 6b a0
d :2 a0 6b :4 a0 6b :2 a0 a5 57
b7 a4 a0 b1 11 68 4f 9a
8f :2 a0 6b b0 3d 8f :2 a0 6b
b0 3d 8f :2 a0 6b b0 3d 90
:4 a0 6b b0 3f b4 55 6a a3
:2 a0 6b :2 a0 f 1c :2 a0 6b 81
b0 a3 :2 a0 6b :2 a0 f 1c :2 a0
6b 81 b0 a3 :2 a0 6b :2 a0 f
1c :2 a0 6b 81 b0 a3 :2 a0 6b
:2 a0 f 1c :2 a0 6b 81 b0 a3
a0 1c 81 b0 a3 a0 1c 81
b0 a3 :2 a0 6b 1c 81 b0 a3
:2 a0 6b 1c 81 b0 :2 a0 6b 7e
b4 2e :2 a0 6b 6e d b7 19
3c a0 7e b4 2e a0 7e b4
2e 52 10 a0 7e 51 b4 2e
6e a5 57 b7 19 3c :2 a0 6b
51 a5 b a0 6b 6e d :2 a0
6b 51 a5 b a0 6b :2 a0 6b
6e a5 b d :2 a0 6b 51 a5
b a0 6b 6e d :2 a0 6b 51
a5 b a0 6b a0 d a0 51
a5 b 6e d a0 51 a5 b
:2 a0 6b 51 a5 b d a0 51
a5 b 6e d a0 51 a5 b
:2 a0 6b d :3 a0 6b :2 a0 6b :2 a0
7e :2 a0 6b 51 a5 b b4 2e
7e 6e b4 2e 7e :2 a0 6b b4
2e e a0 6e e :2 a0 e :2 a0
e a5 b a5 b d :2 a0 6b
a0 6b 57 b3 :2 a0 6b 7e 6e
b4 2e :2 a0 6b a0 a5 57 :2 a0
6b a0 6e e a5 b 7e 6e
b4 2e :2 a0 6b :2 a0 6b a0 6e
e a5 b d b7 :2 a0 6b 4d
d b7 :2 19 3c b7 :2 a0 6b 6e
7e :2 a0 6b b4 2e d b7 :2 19
3c :2 a0 6b :4 a0 6b :2 a0 a5 57
b7 a4 a0 b1 11 68 4f b1
b7 a4 11 a0 b1 56 4f 1d
17 b5 
327
2
0 3 7 b 15 38 2d 31
35 2c 40 51 49 4d 29 48
59 6a 62 66 45 61 72 8b
7b 7f 83 87 5e 7a 92 77
97 9b b8 a3 a7 aa ab b3
a2 f0 c3 c7 9f cb cf d3
d8 e0 e4 e8 eb c2 128 fb
ff bf 103 107 10b 110 118 11c
120 123 fa 160 133 137 f7 13b
13f 143 148 150 154 158 15b 132
198 16b 16f 12f 173 177 17b 180
188 18c 190 193 16a 1d0 1a3 1a7
167 1ab 1af 1b3 1b8 1c0 1c4 1c8
1cb 1a2 208 1db 1df 19f 1e3 1e7
1eb 1f0 1f8 1fc 200 203 1da 224
213 217 21f 1d7 240 22b 22f 232
233 23b 212 25d 24b 20f 24f 250
258 24a 264 247 268 269 26e 272
275 276 1 27b 280 284 287 288
1 28d 292 296 299 29a 1 29f
2a4 2a8 2ab 2ae 2af 2b4 2b9 2ba
2bf 2c1 2c5 2c8 2cc 2d0 2d3 2d7
2dc 2de 2e2 2e6 2ea 2ed 2ef 2f0
2f5 2f9 2fd 301 304 308 30c 30e
30f 311 315 319 31c 321 322 327
32b 32f 333 337 33b 33e 33f 341
346 347 349 34d 34f 353 357 35b
35d 361 365 368 36c 370 373 376
377 379 37d 380 385 389 38d 391
394 397 398 39a 39e 3a1 3a5 3a9
3ad 3b1 3b4 3b7 3b8 3ba 3be 3c1
3c6 3ca 3ce 3d2 3d5 3d8 3d9 3db
3df 3e2 3e6 3ea 3ed 3f2 3f3 3f5
3f9 3fd 401 404 407 408 40a 40e
411 416 41a 41e 422 425 428 429
42b 42f 432 436 43a 43e 442 445
448 449 44b 44f 452 457 45b 45f
463 466 469 46a 46c 470 473 477
47b 47f 483 487 48a 48e 492 495
499 49d 49f 4a3 4a8 4aa 4ae 4b2
4b4 4b8 4bc 4be 4bf 4c1 4c2 4c4
4c8 4cc 4d0 4d3 4d7 4da 4df 4e0
4e4 4e8 4eb 4ee 4f3 4f4 4f9 4fd
501 504 508 509 50e 512 516 519
51d 522 524 525 527 52a 52f 530
535 539 53c 53f 540 545 549 54d
550 554 559 55b 55c 55e 55f 564
566 56a 56e 572 575 579 57e 580
581 583 587 589 58d 591 594 596
59a 59d 5a0 5a1 5a6 5ab 5ae 5b2
5b6 5b9 5ba 5bf 5c0 5c5 5c7 5cb
5cf 5d2 5d6 5da 5dd 5e1 5e5 5e7
5eb 5ef 5f1 5f5 5f9 5fb 5fc 601
605 609 60c 610 614 618 61c 61f
623 627 62b 62f 632 636 63a 63b
640 642 646 64a 64c 658 65c 65e
681 676 67a 67e 675 689 69a 692
696 672 691 6a2 6b3 6ab 6af 68e
6aa 6bb 6d4 6c4 6c8 6cc 6d0 6a7
6c3 6db 6c0 6e0 6e4 71c 6ec 6f0
6f4 6f7 6fb 6ff 704 70c 710 714
717 6eb 754 727 72b 6e8 72f 733
737 73c 744 748 74c 74f 726 78c
75f 763 723 767 76b 76f 774 77c
780 784 787 75e 7c4 797 79b 75b
79f 7a3 7a7 7ac 7b4 7b8 7bc 7bf
796 7e0 7cf 7d3 7db 793 7f8 7e7
7eb 7f3 7ce 818 803 807 7cb 80b
813 802 838 823 827 7ff 82b 833
822 83f 843 81f 847 84a 84b 850
854 858 85b 860 864 866 86a 86d
871 874 875 87a 87e 881 882 1
887 88c 890 893 896 897 89c 8a1
8a2 8a7 8a9 8ad 8b0 8b4 8b8 8bb
8be 8bf 8c1 8c5 8c8 8cd 8d1 8d5
8d9 8dc 8df 8e0 8e2 8e6 8e9 8ed
8f1 8f4 8f9 8fa 8fc 900 904 908
90b 90e 90f 911 915 918 91d 921
925 929 92c 92f 930 932 936 939
93d 941 945 948 949 94b 950 954
958 95b 95c 95e 962 966 969 96c
96d 96f 973 977 97a 97b 97d 982
986 98a 98d 98e 990 994 998 99b
99f 9a3 9a7 9ab 9ae 9b2 9b6 9b9
9bd 9c1 9c4 9c8 9cc 9cf 9d2 9d3
9d5 9d6 9db 9de 9e3 9e4 9e9 9ec
9f0 9f4 9f7 9f8 9fd 9ff a03 a08
a0a a0e a12 a14 a18 a1c a1e a1f
a21 a22 a24 a28 a2c a30 a33 a37
a3a a3f a40 a44 a48 a4b a4e a53
a54 a59 a5d a61 a64 a68 a69 a6e
a72 a76 a79 a7d a82 a84 a85 a87
a8a a8f a90 a95 a99 a9d aa0 aa4
aa8 aab aaf ab4 ab6 ab7 ab9 abd
abf ac3 ac7 aca acb acf ad1 ad5
ad9 adc ade ae2 ae6 ae9 aee af1
af5 af9 afc afd b02 b06 b08 b0c
b10 b13 b17 b1b b1e b22 b26 b2a
b2e b31 b35 b39 b3a b3f b41 b45
b49 b4b b57 b5b b5d b5f b61 b65
b71 b75 b77 b7a b7c b7d b86 
327
2
0 1 9 e b 11 1f 2b
1f :3 11 1f 2b 1f :3 11 1f 2b
1f :3 11 1f 23 2a 36 2a :2 11
12 :2 1 3 15 1e 1d :2 15 :2 3
15 1e 15 :2 2b :2 15 32 :2 3b 15
:2 3 15 1e 15 :2 2b :2 15 32 :2 3b
15 :2 3 15 1e 15 :2 2b :2 15 32
:2 3b 15 :2 3 15 1e 15 :2 2b :2 15
32 :2 3b 15 :2 3 15 1e 15 :2 2b
:2 15 32 :2 3b 15 :2 3 15 1e 15
:2 2b :2 15 32 :2 3b 15 :2 3 :3 15 :2 3
15 1e 1d :2 15 :2 3 15 1e 1d
:2 15 3 :4 8 :4 21 :2 8 :4 33 :2 8 :4 4b
:2 8 5 1d 1e :2 1d 25 :2 5 60
:3 5 :2 e 1b 25 :2 1b 2a :2 33 1b
:3 5 14 :2 20 3e 52 3e :2 14 5
8 f 11 :2 f 8 18 21 27
:2 31 :2 21 43 :2 18 8 15 8 19
8 :5 5 :2 16 28 :2 5 :2 2b 34 :2 5
:2 16 28 :2 5 :2 2b 35 :2 5 :2 16 28
:2 5 :2 2b 34 :2 5 :2 16 28 :2 5 :2 2b
35 :2 3e 4a :2 35 :2 5 :2 16 28 :2 5
:2 2b 34 :2 5 :2 16 28 :2 5 :2 2b 35
:2 5 :2 16 28 :2 5 :2 2b 34 :2 5 :2 16
28 :2 5 :2 2b 35 :2 5 16 :2 29 19
:2 2a 24 2d :2 24 35 :2 24 35 :2 24
35 24 :2 19 :2 16 :2 5 :2 16 :2 28 :2 5
8 :2 19 27 29 :2 27 9 :2 13 19
:2 9 c :2 16 23 2d 23 :2 c 38
3a :2 38 c 24 25 :2 24 2c :2 36
43 4d 43 :2 2c :2 c 42 d 18
:2 22 2f 39 2f :2 18 d :4 9 2f
9 21 22 :2 21 29 53 56 :2 67
:2 29 :2 9 :4 5 3 :2 1f 25 30 25
38 42 38 4a 58 4a :3 3 :2 c
1c :2 3 :2 14 24 2e 37 :2 3f 46
4c :2 3 :2 1 5 :4 1 b 15 2c
38 2c :3 15 2c 38 2c :3 15 2c
38 2c :3 15 21 25 2c 38 2c
:2 15 14 :2 1 5 17 20 17 :2 2d
:2 17 34 :2 3d 17 :2 5 17 20 17
:2 2d :2 17 34 :2 3d 17 :2 5 17 20
17 :2 2d :2 17 34 :2 3d 17 :2 5 17
20 17 :2 2d :2 17 34 :2 3d 17 :2 5
:3 17 :2 5 :3 17 :2 5 17 2f :3 17 :2 5
17 2f :3 17 5 8 :2 10 :3 8 7
:2 10 1b 7 1e :2 5 :4 8 :4 24 :2 8
9 21 22 :2 21 29 :2 9 39 :3 5
:2 16 28 :2 5 :2 2b 34 :2 5 :2 16 28
:2 5 :2 2b 34 :2 3d 49 :2 34 :2 5 :2 16
28 :2 5 :2 2b 34 :2 5 :2 16 28 :2 5
:2 2b 35 :2 5 12 :2 5 18 :2 5 12
:2 5 18 :2 29 2f :2 18 :2 5 12 :2 5
18 :2 5 12 :2 5 18 :2 20 :2 5 16
:2 29 19 :2 2a 24 2d 3d 3f :2 50
56 :2 3f :2 2d 58 5a :2 2d 5d 5f
:2 67 :2 2d :2 24 35 :2 24 35 :2 24 35
24 :2 19 :2 16 :2 5 :2 16 :2 28 :2 5 8
:2 19 27 29 :2 27 9 :2 13 19 :2 9
c :2 16 23 2d 23 :2 c 38 3a
:2 38 c :2 15 20 :2 2a 37 41 37
:2 20 c 42 c :2 15 20 c :4 9
2f 9 :2 12 1d 47 4a :2 5b :2 1d
9 :4 5 3 :2 14 24 2e 37 :2 3f
46 4c :2 3 :2 1 5 :8 1 5 :6 1

327
4
0 :3 1 3 :6 4
:6 5 :6 6 :8 7 :3 3
:7 a :d b :d c :d d
:d e :d f :d 10 :5 11
:7 12 :7 13 :16 17 :8 18
:3 17 :3 1c :3 1d :5 1e
:2 1c :a 21 :5 23 :c 24
23 :3 26 25 :3 23
:a 2a :a 2b :a 2c :f 2d
:a 2e :a 2f :a 30 :a 31
:4 33 :3 34 :3 35 :3 36
:3 37 :3 38 :2 34 :3 33
:7 3c :7 3f :6 40 :c 42
:f 43 42 :a 45 44
:3 42 3f :e 49 48
:3 3f :e 4d :5 50 :c 53
:2 15 55 :4 3 5a
:6 5b :6 5c :6 5d :8 5e
:3 5a :d 61 :d 62 :d 63
:d 64 :5 65 :5 66 :7 67
:7 68 :6 6c :5 6d :3 6c
:a 70 :8 71 :3 70 :a 75
:f 76 :a 77 :a 78 :6 7a
:b 7b :6 7c :8 7d :4 7f
:3 80 :16 81 :3 82 :3 86
:3 87 :2 80 :3 7f :7 8a
:7 8d :6 8f :c 90 :c 91
90 :5 93 92 :3 90
8d :b 97 96 :3 8d
:c 9b :2 6a 9d :4 5a
:4 3 9f :6 1 
b88
4
:3 0 1 :3 0 2
:3 0 3 :6 0 1
:2 0 4 :a 0 1bd
2 :7 0 c d
0 3 6 :3 0
7 :2 0 4 6
7 0 5 :7 0
9 8 :3 0 12
13 0 5 6
:3 0 9 :2 0 4
8 :7 0 f e
:3 0 1a 1b 0
7 6 :3 0 b
:2 0 4 a :7 0
15 14 :3 0 b
:2 0 9 d :3 0
e :3 0 6 :3 0
f :2 0 4 c
:5 0 1 1d 1c
:3 0 1f :2 0 1bd
4 20 :2 0 2a
2b 0 12 11
:3 0 12 :2 0 10
23 25 :6 0 28
26 0 1bb 0
10 :6 0 37 38
0 14 8 :3 0
14 :2 0 4 15
:3 0 15 :2 0 1
2c 2e :3 0 2f
:7 0 8 :3 0 14
:3 0 31 32 0
35 30 33 1bb
0 13 :6 0 44
45 0 16 8
:3 0 17 :2 0 4
15 :3 0 15 :2 0
1 39 3b :3 0
3c :7 0 8 :3 0
17 :3 0 3e 3f
0 42 3d 40
1bb 0 16 :6 0
51 52 0 18
8 :3 0 19 :2 0
4 15 :3 0 15
:2 0 1 46 48
:3 0 49 :7 0 8
:3 0 19 :3 0 4b
4c 0 4f 4a
4d 1bb 0 18
:6 0 5e 5f 0
1a 8 :3 0 1b
:2 0 4 15 :3 0
15 :2 0 1 53
55 :3 0 56 :7 0
8 :3 0 1b :3 0
58 59 0 5c
57 5a 1bb 0
1a :6 0 6b 6c
0 1c 8 :3 0
1d :2 0 4 15
:3 0 15 :2 0 1
60 62 :3 0 63
:7 0 8 :3 0 1d
:3 0 65 66 0
69 64 67 1bb
0 1c :6 0 20
20f 0 1e 8
:3 0 1f :2 0 4
15 :3 0 15 :2 0
1 6d 6f :3 0
70 :7 0 8 :3 0
1f :3 0 72 73
0 76 71 74
1bb 0 1e :6 0
25 :2 0 24 21
:3 0 78 :7 0 7b
79 0 1bb 0
20 :6 0 11 :3 0
23 :2 0 22 7d
7f :6 0 82 80
0 1bb 0 22
:6 0 26 :2 0 28
11 :3 0 26 84
86 :6 0 89 87
0 1bb 0 24
:6 0 13 :3 0 2a
8b 8c :3 0 16
:3 0 26 :2 0 2c
8f 90 :3 0 8d
92 91 :2 0 18
:3 0 26 :2 0 2e
95 96 :3 0 93
98 97 :2 0 1a
:3 0 26 :2 0 30
9b 9c :3 0 99
9e 9d :2 0 27
:3 0 28 :2 0 29
:2 0 32 a1 a3
:3 0 2a :4 0 34
a0 a6 :2 0 a8
37 a9 9f a8
0 aa 39 0
1b8 2b :3 0 2c
:3 0 ab ac 0
2d :3 0 2e :4 0
ae af 2f :3 0
8 :3 0 30 :3 0
b2 b3 0 b1
b4 3b ad b6
:2 0 1b8 10 :3 0
6 :3 0 31 :3 0
b9 ba 0 32
:3 0 33 :3 0 bc
bd 3e bb bf
b8 c0 0 1b8
16 :3 0 34 :2 0
35 :4 0 42 c3
c5 :3 0 24 :3 0
36 :3 0 37 :3 0
38 :3 0 39 :3 0
ca cb 0 45
c9 cd 3a :4 0
47 c8 d0 c7
d1 0 d3 4a
d8 24 :3 0 16
:3 0 d4 d5 0
d7 4c d9 c6
d3 0 da 0
d7 0 da 4e
0 1b8 3b :3 0
3c :3 0 db dc
0 3d :2 0 51
dd df 3e :3 0
e0 e1 0 3f
:4 0 e2 e3 0
1b8 3b :3 0 3c
:3 0 e5 e6 0
3d :2 0 53 e7
e9 40 :3 0 ea
eb 0 24 :3 0
ec ed 0 1b8
3b :3 0 3c :3 0
ef f0 0 41
:2 0 55 f1 f3
3e :3 0 f4 f5
0 42 :4 0 f6
f7 0 1b8 3b
:3 0 3c :3 0 f9
fa 0 41 :2 0
57 fb fd 40
:3 0 fe ff 0
43 :3 0 44 :3 0
101 102 0 45
:4 0 59 103 105
100 106 0 1b8
3b :3 0 3c :3 0
108 109 0 46
:2 0 5b 10a 10c
3e :3 0 10d 10e
0 47 :4 0 10f
110 0 1b8 3b
:3 0 3c :3 0 112
113 0 46 :2 0
5d 114 116 40
:3 0 117 118 0
1a :3 0 119 11a
0 1b8 3b :3 0
3c :3 0 11c 11d
0 48 :2 0 5f
11e 120 3e :3 0
121 122 0 49
:4 0 123 124 0
1b8 3b :3 0 3c
:3 0 126 127 0
48 :2 0 61 128
12a 40 :3 0 12b
12c 0 18 :3 0
12d 12e 0 1b8
20 :3 0 4a :3 0
4b :3 0 131 132
0 3b :3 0 4c
:3 0 134 135 0
4d :3 0 13 :3 0
137 138 4e :3 0
4f :4 0 13a 13b
50 :3 0 1c :3 0
13d 13e 51 :3 0
1e :3 0 140 141
63 136 143 68
133 145 130 146
0 1b8 3b :3 0
3c :3 0 148 149
0 52 :3 0 14a
14b 0 14c 14e
:2 0 1b8 0 3b
:3 0 53 :3 0 14f
150 0 34 :2 0
12 :4 0 6c 152
154 :3 0 54 :3 0
55 :3 0 156 157
0 20 :3 0 6f
158 15a :2 0 186
54 :3 0 56 :3 0
15c 15d 0 57
:3 0 58 :4 0 15f
160 71 15e 162
34 :2 0 59 :4 0
75 164 166 :3 0
27 :3 0 28 :2 0
5a :2 0 78 169
16b :3 0 54 :3 0
56 :3 0 16d 16e
0 57 :3 0 5b
:4 0 170 171 7a
16f 173 7c 168
175 :2 0 177 7f
183 22 :3 0 54
:3 0 56 :3 0 179
17a 0 57 :3 0
5c :4 0 17c 17d
81 17b 17f 178
180 0 182 83
184 167 177 0
185 0 182 0
185 85 0 186
88 196 27 :3 0
28 :2 0 29 :2 0
8b 188 18a :3 0
5d :4 0 5e :2 0
3b :3 0 53 :3 0
18e 18f 0 8d
18d 191 :3 0 90
187 193 :2 0 195
93 197 155 186
0 198 0 195
0 198 95 0
1b8 5f :3 0 60
:3 0 199 19a 0
61 :3 0 22 :3 0
19c 19d 5 :3 0
5 :3 0 19f 1a0
62 :3 0 10 :3 0
1a2 1a3 98 19b
1a5 :2 0 1b8 c
:3 0 63 :3 0 1a7
1a8 0 33 :3 0
1a9 1aa 0 1b8
64 :3 0 65 :3 0
1ac 1ad 0 8
:3 0 5 :3 0 a
:3 0 40 :3 0 1b1
1b2 0 66 :3 0
33 :3 0 9c 1ae
1b6 :2 0 1b8 a2
1bc :3 0 1bc 4
:3 0 b5 1bc 1bb
1b8 1b9 :6 0 1bd
1 0 4 20
1bc 321 :2 0 67
:a 0 31a 3 :7 0
1c7 1c8 0 c0
6 :3 0 7 :2 0
4 1c1 1c2 0
5 :7 0 1c4 1c3
:3 0 1cd 1ce 0
c2 6 :3 0 9
:2 0 4 8 :7 0
1ca 1c9 :3 0 1d5
1d6 0 c4 6
:3 0 68 :2 0 4
a :7 0 1d0 1cf
:3 0 c8 :2 0 c6
d :3 0 e :3 0
6 :3 0 69 :2 0
4 c :5 0 1
1d8 1d7 :3 0 1da
:2 0 31a 1bf 1db
:2 0 1eb 1ec 0
cd 8 :3 0 1b
:2 0 4 1de 1df
0 15 :3 0 15
:2 0 1 1e0 1e2
:3 0 1e3 :7 0 8
:3 0 1b :3 0 1e5
1e6 0 1e9 1e4
1e7 318 0 1a
:6 0 1f8 1f9 0
cf 8 :3 0 6b
:2 0 4 15 :3 0
15 :2 0 1 1ed
1ef :3 0 1f0 :7 0
8 :3 0 6b :3 0
1f2 1f3 0 1f6
1f1 1f4 318 0
6a :6 0 205 206
0 d1 8 :3 0
1d :2 0 4 15
:3 0 15 :2 0 1
1fa 1fc :3 0 1fd
:7 0 8 :3 0 1d
:3 0 1ff 200 0
203 1fe 201 318
0 1c :6 0 d5
7cb 0 d3 8
:3 0 1f :2 0 4
15 :3 0 15 :2 0
1 207 209 :3 0
20a :7 0 8 :3 0
1f :3 0 20c 20d
0 210 20b 20e
318 0 1e :6 0
21c 21d 0 d7
21 :3 0 212 :7 0
215 213 0 318
0 20 :6 0 6d
:3 0 217 :7 0 21a
218 0 318 0
6c :6 0 223 224
0 d9 6f :3 0
70 :2 0 4 21e
:7 0 221 21f 0
318 0 6e :6 0
229 22a 0 db
6f :3 0 70 :2 0
4 225 :7 0 228
226 0 318 0
71 :6 0 a :3 0
40 :3 0 26 :2 0
dd 22c 22d :3 0
c :3 0 72 :3 0
22f 230 0 73
:4 0 231 232 0
234 df 235 22e
234 0 236 e1
0 315 6a :3 0
26 :2 0 e3 238
239 :3 0 1a :3 0
26 :2 0 e5 23c
23d :3 0 23a 23f
23e :2 0 27 :3 0
28 :2 0 29 :2 0
e7 242 244 :3 0
74 :4 0 e9 241
247 :2 0 249 ec
24a 240 249 0
24b ee 0 315
3b :3 0 3c :3 0
24c 24d 0 3d
:2 0 f0 24e 250
3e :3 0 251 252
0 42 :4 0 253
254 0 315 3b
:3 0 3c :3 0 256
257 0 3d :2 0
f2 258 25a 40
:3 0 25b 25c 0
43 :3 0 44 :3 0
25e 25f 0 45
:4 0 f4 260 262
25d 263 0 315
3b :3 0 3c :3 0
265 266 0 41
:2 0 f6 267 269
3e :3 0 26a 26b
0 47 :4 0 26c
26d 0 315 3b
:3 0 3c :3 0 26f
270 0 41 :2 0
f8 271 273 40
:3 0 274 275 0
1a :3 0 276 277
0 315 6e :3 0
3d :2 0 fa 279
27b 75 :4 0 27c
27d 0 315 71
:3 0 3d :2 0 fc
27f 281 76 :3 0
77 :3 0 283 284
0 3d :2 0 fe
285 287 282 288
0 315 6e :3 0
41 :2 0 100 28a
28c 78 :4 0 28d
28e 0 315 71
:3 0 41 :2 0 102
290 292 a :3 0
40 :3 0 294 295
0 293 296 0
315 20 :3 0 4a
:3 0 4b :3 0 299
29a 0 3b :3 0
4c :3 0 29c 29d
0 4d :3 0 6a
:3 0 5e :2 0 76
:3 0 77 :3 0 2a2
2a3 0 3d :2 0
104 2a4 2a6 106
2a1 2a8 :3 0 5e
:2 0 28 :4 0 109
2aa 2ac :3 0 5e
:2 0 a :3 0 40
:3 0 2af 2b0 0
10c 2ae 2b2 :3 0
29f 2b3 4e :3 0
4f :4 0 2b5 2b6
50 :3 0 1c :3 0
2b8 2b9 51 :3 0
1e :3 0 2bb 2bc
10f 29e 2be 114
29b 2c0 298 2c1
0 315 3b :3 0
3c :3 0 2c3 2c4
0 52 :3 0 2c5
2c6 0 2c7 2c9
:2 0 315 0 3b
:3 0 53 :3 0 2ca
2cb 0 34 :2 0
12 :4 0 118 2cd
2cf :3 0 54 :3 0
55 :3 0 2d1 2d2
0 20 :3 0 11b
2d3 2d5 :2 0 2f9
54 :3 0 56 :3 0
2d7 2d8 0 57
:3 0 58 :4 0 2da
2db 11d 2d9 2dd
34 :2 0 59 :4 0
121 2df 2e1 :3 0
c :3 0 72 :3 0
2e3 2e4 0 54
:3 0 56 :3 0 2e6
2e7 0 57 :3 0
5b :4 0 2e9 2ea
124 2e8 2ec 2e5
2ed 0 2ef 126
2f6 c :3 0 72
:3 0 2f0 2f1 :2 0
2f2 2f3 0 2f5
128 2f7 2e2 2ef
0 2f8 0 2f5
0 2f8 12a 0
2f9 12d 306 c
:3 0 72 :3 0 2fa
2fb 0 5d :4 0
5e :2 0 3b :3 0
53 :3 0 2ff 300
0 130 2fe 302
:3 0 2fc 303 0
305 133 307 2d0
2f9 0 308 0
305 0 308 135
0 315 64 :3 0
65 :3 0 309 30a
0 8 :3 0 5
:3 0 a :3 0 40
:3 0 30e 30f 0
66 :3 0 33 :3 0
138 30b 313 :2 0
315 13e 319 :3 0
319 67 :3 0 14d
319 318 315 316
:6 0 31a 1 0
1bf 1db 319 321
:3 0 31f 0 31f
:3 0 31f 321 31d
31e :6 0 322 :2 0
3 :3 0 156 0
3 31f 325 :3 0
324 322 326 :8 0

159
4
:3 0 1 5 1
b 1 11 1
17 4 a 10
16 1e 1 24
1 22 1 29
1 36 1 43
1 50 1 5d
1 6a 1 77
1 7e 1 7c
1 85 1 83
1 8a 1 8e
1 94 1 9a
1 a2 2 a4
a5 1 a7 1
a9 2 b0 b5
1 be 1 c4
2 c2 c4 1
cc 2 ce cf
1 d2 1 d6
2 d8 d9 1
de 1 e8 1
f2 1 fc 1
104 1 10b 1
115 1 11f 1
129 4 139 13c
13f 142 1 144
1 153 2 151
153 1 159 1
161 1 165 2
163 165 1 16a
1 172 2 16c
174 1 176 1
17e 1 181 2
183 184 2 15b
185 1 189 2
18c 190 2 18b
192 1 194 2
196 197 3 19e
1a1 1a4 5 1af
1b0 1b3 1b4 1b5
12 aa b7 c1
da e4 ee f8
107 111 11b 125
12f 147 14d 198
1a6 1ab 1b7 a
27 34 41 4e
5b 68 75 7a
81 88 1 1c0
1 1c6 1 1cc
1 1d2 4 1c5
1cb 1d1 1d9 1
1dd 1 1ea 1
1f7 1 204 1
211 1 216 1
21b 1 222 1
22b 1 233 1
235 1 237 1
23b 1 243 2
245 246 1 248
1 24a 1 24f
1 259 1 261
1 268 1 272
1 27a 1 280
1 286 1 28b
1 291 1 2a5
2 2a0 2a7 2
2a9 2ab 2 2ad
2b1 4 2b4 2b7
2ba 2bd 1 2bf
1 2ce 2 2cc
2ce 1 2d4 1
2dc 1 2e0 2
2de 2e0 1 2eb
1 2ee 1 2f4
2 2f6 2f7 2
2d6 2f8 2 2fd
301 1 304 2
306 307 5 30c
30d 310 311 312
e 236 24b 255
264 26e 278 27e
289 28f 297 2c2
2c8 308 314 8
1e8 1f5 202 20f
214 219 220 227
2 1bd 31a 
1
4
0 
325
0
1
14
3
1d
0 1 1 0 0 0 0 0
0 0 0 0 0 0 0 0
0 0 0 0 
211 3 0
77 2 0
21b 3 0
83 2 0
216 3 0
1bf 1 3
43 2 0
22 2 0
3 0 1
1c0 3 0
5 2 0
1dd 3 0
50 2 0
222 3 0
4 1 2
36 2 0
29 2 0
7c 2 0
1f7 3 0
5d 2 0
204 3 0
6a 2 0
1c6 3 0
b 2 0
1d2 3 0
17 2 0
1cc 3 0
11 2 0
1ea 3 0
0

/
