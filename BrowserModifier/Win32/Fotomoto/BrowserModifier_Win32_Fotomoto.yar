
rule BrowserModifier_Win32_Fotomoto{
	meta:
		description = "BrowserModifier:Win32/Fotomoto,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 00 32 00 73 00 65 00 61 00 72 00 63 00 68 00 } //01 00  b2search
		$a_01_1 = {66 6f 74 6f 6d 6f 74 6f 2e 44 4c 4c } //01 00  fotomoto.DLL
		$a_01_2 = {61 00 64 00 5f 00 6b 00 65 00 79 00 77 00 6f 00 72 00 64 00 73 00 5f 00 70 00 6f 00 73 00 74 00 5f 00 6e 00 65 00 78 00 74 00 5f 00 74 00 69 00 6d 00 65 00 } //01 00  ad_keywords_post_next_time
		$a_01_3 = {61 00 64 00 5f 00 6b 00 65 00 79 00 77 00 6f 00 72 00 64 00 73 00 5f 00 70 00 6f 00 73 00 74 00 } //01 00  ad_keywords_post
		$a_01_4 = {61 00 64 00 5f 00 6b 00 65 00 79 00 77 00 6f 00 72 00 64 00 73 00 5f 00 70 00 6f 00 73 00 74 00 65 00 64 00 } //01 00  ad_keywords_posted
		$a_01_5 = {61 00 64 00 5f 00 6b 00 65 00 79 00 77 00 6f 00 72 00 64 00 73 00 5f 00 69 00 6e 00 74 00 65 00 72 00 65 00 73 00 74 00 65 00 64 00 } //01 00  ad_keywords_interested
		$a_01_6 = {63 00 6f 00 75 00 6e 00 74 00 65 00 72 00 5f 00 73 00 68 00 6f 00 70 00 70 00 69 00 6e 00 67 00 5f 00 70 00 6f 00 70 00 75 00 70 00 } //01 00  counter_shopping_popup
		$a_01_7 = {73 00 68 00 6f 00 70 00 70 00 69 00 6e 00 67 00 5f 00 70 00 6f 00 70 00 5f 00 69 00 6e 00 74 00 65 00 72 00 76 00 61 00 6c 00 } //00 00  shopping_pop_interval
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Fotomoto_2{
	meta:
		description = "BrowserModifier:Win32/Fotomoto,SIGNATURE_TYPE_PEHSTR_EXT,16 00 10 00 12 00 00 03 00 "
		
	strings :
		$a_01_0 = {62 00 32 00 73 00 65 00 61 00 72 00 63 00 68 00 } //03 00  b2search
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 70 00 76 00 66 00 65 00 65 00 64 00 2e 00 6d 00 65 00 64 00 69 00 61 00 74 00 72 00 61 00 66 00 66 00 69 00 63 00 2e 00 63 00 6f 00 6d 00 2f 00 66 00 65 00 65 00 64 00 2e 00 70 00 68 00 70 00 3f 00 61 00 63 00 3d 00 25 00 73 00 26 00 6b 00 77 00 3d 00 25 00 73 00 26 00 75 00 72 00 6c 00 3d 00 25 00 73 00 26 00 69 00 70 00 3d 00 25 00 73 00 26 00 72 00 66 00 6f 00 3d 00 78 00 6d 00 6c 00 } //03 00  http://cpvfeed.mediatraffic.com/feed.php?ac=%s&kw=%s&url=%s&ip=%s&rfo=xml
		$a_81_2 = {25 54 45 4d 50 25 5c 61 75 70 64 2e 65 78 65 } //03 00  %TEMP%\aupd.exe
		$a_01_3 = {66 6f 74 6f 6d 6f 74 6f 2e 44 4c 4c } //01 00  fotomoto.DLL
		$a_01_4 = {65 00 7a 00 75 00 6c 00 61 00 5f 00 64 00 65 00 6e 00 69 00 65 00 64 00 73 00 69 00 74 00 65 00 73 00 } //01 00  ezula_deniedsites
		$a_01_5 = {65 00 7a 00 75 00 6c 00 61 00 5f 00 64 00 69 00 63 00 74 00 69 00 6f 00 6e 00 61 00 72 00 79 00 } //01 00  ezula_dictionary
		$a_01_6 = {65 00 7a 00 75 00 6c 00 61 00 5f 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 } //01 00  ezula_enabled
		$a_01_7 = {65 00 7a 00 75 00 6c 00 61 00 5f 00 6d 00 61 00 78 00 64 00 75 00 70 00 } //01 00  ezula_maxdup
		$a_01_8 = {65 00 7a 00 75 00 6c 00 61 00 5f 00 6d 00 61 00 78 00 68 00 69 00 6c 00 69 00 67 00 68 00 74 00 } //01 00  ezula_maxhilight
		$a_01_9 = {69 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 5f 00 61 00 66 00 66 00 69 00 6c 00 69 00 61 00 74 00 65 00 5f 00 69 00 64 00 } //01 00  internal_affiliate_id
		$a_01_10 = {6c 00 61 00 73 00 74 00 5f 00 65 00 7a 00 75 00 6c 00 61 00 5f 00 75 00 70 00 64 00 61 00 74 00 65 00 5f 00 49 00 44 00 } //01 00  last_ezula_update_ID
		$a_01_11 = {6c 00 61 00 73 00 74 00 5f 00 65 00 7a 00 75 00 6c 00 61 00 73 00 79 00 6e 00 63 00 } //01 00  last_ezulasync
		$a_01_12 = {6d 00 74 00 5f 00 6d 00 65 00 64 00 69 00 61 00 74 00 72 00 61 00 66 00 66 00 69 00 63 00 5f 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 } //01 00  mt_mediatraffic_enabled
		$a_01_13 = {6d 00 74 00 5f 00 70 00 6f 00 70 00 75 00 70 00 5f 00 63 00 6f 00 75 00 6e 00 74 00 65 00 72 00 5f 00 6e 00 6f 00 74 00 69 00 66 00 79 00 } //01 00  mt_popup_counter_notify
		$a_01_14 = {6e 00 65 00 78 00 74 00 5f 00 66 00 69 00 78 00 65 00 64 00 5f 00 63 00 74 00 78 00 5f 00 70 00 6f 00 70 00 75 00 70 00 5f 00 74 00 69 00 6d 00 65 00 } //01 00  next_fixed_ctx_popup_time
		$a_01_15 = {6e 00 65 00 78 00 74 00 5f 00 6d 00 74 00 5f 00 70 00 6f 00 70 00 75 00 70 00 5f 00 74 00 69 00 6d 00 65 00 } //01 00  next_mt_popup_time
		$a_01_16 = {72 00 61 00 6e 00 64 00 6f 00 6d 00 5f 00 63 00 6f 00 6e 00 74 00 65 00 78 00 74 00 5f 00 62 00 6c 00 61 00 63 00 6b 00 6c 00 69 00 73 00 74 00 } //01 00  random_context_blacklist
		$a_01_17 = {72 00 65 00 6c 00 61 00 74 00 65 00 64 00 5f 00 70 00 6f 00 70 00 75 00 70 00 73 00 5f 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 } //00 00  related_popups_enabled
	condition:
		any of ($a_*)
 
}