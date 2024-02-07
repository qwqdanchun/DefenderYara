
rule Adware_Win32_DoubleD{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 00 22 00 20 00 73 00 6d 00 69 00 6c 00 65 00 79 00 3d 00 22 00 25 00 73 00 22 00 3e 00 3c 00 2f 00 41 00 3e 00 } //01 00  0" smiley="%s"></A>
		$a_01_1 = {69 00 6d 00 5f 00 73 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 69 00 6d 00 67 00 00 00 } //01 00 
		$a_01_2 = {41 00 64 00 5f 00 43 00 6f 00 64 00 65 00 00 00 } //01 00 
		$a_01_3 = {44 00 6f 00 75 00 62 00 6c 00 65 00 44 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_2{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6d 00 69 00 6c 00 65 00 79 00 41 00 70 00 70 00 20 00 48 00 65 00 6c 00 70 00 65 00 72 00 00 00 00 00 73 00 74 00 62 00 61 00 70 00 70 00 48 00 65 00 6c 00 70 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {53 6d 69 6c 65 79 48 6f 6f 6b 41 50 49 45 78 65 5c } //01 00  SmileyHookAPIExe\
		$a_01_2 = {48 00 6f 00 6f 00 6b 00 20 00 4d 00 53 00 4e 00 20 00 46 00 61 00 69 00 6c 00 65 00 64 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_3{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 39 00 37 00 42 00 45 00 37 00 41 00 38 00 2d 00 37 00 46 00 42 00 41 00 2d 00 34 00 39 00 46 00 41 00 2d 00 41 00 37 00 34 00 32 00 2d 00 42 00 43 00 46 00 42 00 35 00 44 00 41 00 41 00 30 00 45 00 44 00 35 00 7d 00 00 00 } //01 00 
		$a_01_1 = {3f 41 56 43 41 78 47 69 66 41 6e 69 6d 61 74 6f 72 4d 6f 64 75 6c 65 40 40 } //01 00  ?AVCAxGifAnimatorModule@@
		$a_01_2 = {41 78 47 69 66 41 6e 69 6d 61 74 6f 72 2e 44 4c 4c 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_4{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 6f 00 75 00 62 00 6c 00 65 00 44 00 20 00 41 00 64 00 76 00 65 00 72 00 74 00 69 00 73 00 69 00 6e 00 67 00 20 00 4c 00 69 00 6d 00 69 00 74 00 65 00 64 00 0a 00 } //01 00 
		$a_01_1 = {73 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 74 00 65 00 6c 00 6c 00 5f 00 66 00 72 00 69 00 65 00 6e 00 64 00 5f 00 75 00 72 00 6c 00 00 00 } //01 00 
		$a_01_2 = {73 00 74 00 62 00 61 00 73 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_3 = {53 6d 69 6c 65 79 43 6f 72 65 2e 64 6c 6c } //00 00  SmileyCore.dll
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_5{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 6f 6f 6b 41 6c 6c 50 72 6f 63 65 73 73 00 48 6f 6f 6b 4f 6e 65 50 72 6f 63 65 73 73 32 00 48 6f 6f 6b 4f 6e 65 50 72 6f 63 65 73 73 00 55 6e } //01 00  潈歯汁偬潲散獳䠀潯佫敮牐捯獥㉳䠀潯佫敮牐捯獥s湕
		$a_01_1 = {4c 6f 61 64 4d 79 44 6c 6c 20 25 73 20 66 61 69 6c 65 64 21 00 } //01 00 
		$a_01_2 = {48 6f 6f 6b 41 50 49 4e 54 2e 64 6c 6c 00 } //01 00 
		$a_03_3 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 90 02 04 73 76 63 68 6f 73 74 2e 65 78 65 90 02 04 6c 73 61 73 73 2e 65 78 65 90 02 04 73 65 72 76 69 63 65 73 2e 65 78 65 90 02 04 77 69 6e 6c 6f 67 6f 6e 2e 65 78 65 90 02 04 73 6d 73 73 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_6{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {49 00 4d 00 47 00 20 00 69 00 64 00 3d 00 22 00 25 00 73 00 22 00 20 00 73 00 72 00 63 00 3d 00 22 00 25 00 73 00 22 00 20 00 61 00 6c 00 74 00 3d 00 22 00 25 00 73 00 22 00 20 00 62 00 6f 00 72 00 64 00 65 00 72 00 3d 00 22 00 30 00 22 00 } //01 00  IMG id="%s" src="%s" alt="%s" border="0"
		$a_00_1 = {53 00 4d 00 44 00 4c 00 5f 00 4d 00 55 00 54 00 45 00 58 00 } //01 00  SMDL_MUTEX
		$a_00_2 = {69 00 6d 00 5f 00 73 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 69 00 6d 00 67 00 } //01 00  im_smiley_img
		$a_02_3 = {59 59 74 27 85 c0 ff 75 e4 ff 75 e8 ff 37 68 90 01 04 75 07 68 90 01 04 eb 05 68 90 01 04 68 90 01 04 e9 90 01 04 85 c0 75 14 ff 75 e8 ff 37 90 00 } //01 00 
		$a_02_4 = {ff 75 e8 ff 37 68 90 01 04 68 90 01 04 68 90 01 04 ff 75 e0 e8 90 01 04 83 c4 18 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_7{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_81_0 = {44 34 35 38 31 37 42 38 2d 33 45 41 44 2d 34 64 31 64 2d 38 46 43 41 2d 45 43 36 33 41 38 45 33 35 44 45 32 } //01 00  D45817B8-3EAD-4d1d-8FCA-EC63A8E35DE2
		$a_81_1 = {68 6f 74 76 69 64 65 6f 62 61 72 5f } //01 00  hotvideobar_
		$a_03_2 = {67 65 6e 65 72 61 6c 2e 75 73 65 72 61 67 65 6e 74 2e 65 78 74 72 61 90 02 05 68 6f 74 76 69 64 65 6f 62 61 72 90 00 } //01 00 
		$a_03_3 = {67 00 65 00 6e 00 65 00 72 00 61 00 6c 00 2e 00 75 00 73 00 65 00 72 00 61 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 74 00 72 00 61 00 90 02 05 68 00 6f 00 74 00 76 00 69 00 64 00 65 00 6f 00 62 00 61 00 72 00 90 00 } //01 00 
		$a_81_4 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 55 73 65 72 20 41 67 65 6e 74 5c 50 6f 73 74 20 50 6c 61 74 66 6f 72 6d } //00 00  CurrentVersion\Internet Settings\User Agent\Post Platform
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_8{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 21 00 00 32 00 "
		
	strings :
		$a_01_0 = {44 00 6f 00 75 00 62 00 6c 00 65 00 44 00 00 00 } //32 00 
		$a_01_1 = {35 00 36 00 31 00 37 00 45 00 43 00 41 00 39 00 2d 00 34 00 38 00 38 00 44 00 2d 00 34 00 42 00 41 00 32 00 2d 00 38 00 35 00 36 00 32 00 2d 00 39 00 37 00 31 00 30 00 42 00 39 00 41 00 42 00 37 00 38 00 44 00 32 00 7d 00 00 00 } //01 00 
		$a_01_2 = {73 00 74 00 62 00 64 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_3 = {2f 00 63 00 6f 00 6e 00 66 00 69 00 72 00 6d 00 50 00 69 00 78 00 65 00 6c 00 2e 00 64 00 6f 00 3f 00 70 00 2e 00 70 00 69 00 78 00 65 00 6c 00 54 00 79 00 70 00 65 00 3d 00 } //01 00  /confirmPixel.do?p.pixelType=
		$a_01_4 = {2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2f 00 63 00 64 00 6e 00 32 00 2f 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2e 00 78 00 6d 00 6c 00 } //01 00  /download/cdn2/CurrentVersion.xml
		$a_01_5 = {25 73 09 46 75 6e 43 65 6e 74 65 72 20 44 6f 77 6e 0a 0a 00 25 73 09 46 75 6e 43 65 6e 74 65 72 20 55 70 } //01 00 
		$a_01_6 = {61 00 64 00 62 00 61 00 72 00 5f 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 5f 00 73 00 65 00 61 00 72 00 63 00 68 00 5f 00 75 00 72 00 6c 00 00 00 } //01 00 
		$a_01_7 = {73 00 74 00 62 00 61 00 73 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 73 00 74 00 62 00 30 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_8 = {72 00 69 00 63 00 68 00 65 00 64 00 32 00 30 00 53 00 6d 00 69 00 6c 00 65 00 79 00 2e 00 64 00 6c 00 6c 00 00 00 } //01 00 
		$a_01_9 = {65 00 79 00 2e 00 64 00 6c 00 6c 00 00 00 00 00 6d 00 73 00 6e 00 6d 00 73 00 67 00 72 00 2e 00 65 00 78 00 65 00 00 00 72 00 69 00 63 00 68 00 65 00 64 00 32 00 30 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_10 = {64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 73 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 } //01 00  desktopsmiley_
		$a_01_11 = {25 00 73 00 5c 00 7a 00 7a 00 7a 00 5f 00 25 00 30 00 34 00 64 00 2d 00 25 00 30 00 34 00 64 00 2e 00 68 00 74 00 6d 00 } //01 00  %s\zzz_%04d-%04d.htm
		$a_01_12 = {46 00 61 00 69 00 6c 00 65 00 64 00 20 00 74 00 6f 00 20 00 53 00 74 00 61 00 72 00 74 00 20 00 53 00 6d 00 69 00 6c 00 65 00 79 00 20 00 44 00 69 00 61 00 6c 00 6f 00 67 00 00 00 } //01 00 
		$a_01_13 = {73 00 74 00 62 00 61 00 70 00 70 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_14 = {54 6f 6f 6c 62 61 72 20 44 6f 77 6e 6c 6f 61 64 65 72 00 } //01 00 
		$a_01_15 = {73 00 74 00 62 00 75 00 70 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_16 = {54 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 00 00 } //01 00 
		$a_01_17 = {25 73 26 70 2e 70 69 78 65 6c 54 79 70 65 3d 25 73 26 68 64 73 6e 3d 25 73 26 6d 3d 25 73 26 6c 6f 3d 25 73 26 69 69 3d 25 73 00 } //01 00 
		$a_01_18 = {73 00 73 00 5f 00 70 00 69 00 78 00 65 00 6c 00 5f 00 61 00 66 00 66 00 69 00 64 00 5f 00 65 00 6e 00 61 00 62 00 6c 00 65 00 00 00 } //01 00 
		$a_01_19 = {64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 73 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 28 00 5c 00 64 00 2b 00 29 00 5f 00 28 00 5c 00 64 00 2b 00 29 00 5f 00 28 00 5c 00 64 00 2b 00 29 00 5f 00 28 00 5c 00 64 00 2b 00 29 00 5f 00 28 00 5c 00 64 00 2b 00 29 00 } //01 00  desktopsmiley_(\d+)_(\d+)_(\d+)_(\d+)_(\d+)
		$a_01_20 = {73 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 70 00 69 00 78 00 65 00 6c 00 5f 00 } //01 00  smiley_pixel_
		$a_01_21 = {70 2e 70 69 78 65 6c 54 79 70 65 3d 25 73 26 61 3d 25 73 26 73 3d 25 73 26 70 2e 70 72 69 63 65 3d 25 73 26 70 2e 70 69 78 65 6c 3d 25 73 26 } //01 00  p.pixelType=%s&a=%s&s=%s&p.price=%s&p.pixel=%s&
		$a_01_22 = {43 00 44 00 42 00 46 00 42 00 34 00 37 00 42 00 2d 00 35 00 38 00 41 00 38 00 2d 00 34 00 31 00 31 00 31 00 2d 00 42 00 46 00 39 00 35 00 2d 00 30 00 36 00 31 00 37 00 38 00 44 00 43 00 45 00 33 00 32 00 36 00 44 00 7d 00 } //01 00  CDBFB47B-58A8-4111-BF95-06178DCE326D}
		$a_01_23 = {2e 3f 41 55 49 46 75 6e 52 65 64 69 72 65 63 74 6f 72 40 40 } //01 00  .?AUIFunRedirector@@
		$a_01_24 = {35 32 39 37 45 39 30 35 2d 31 44 46 42 2d 34 41 39 43 2d 39 38 37 31 2d 41 34 46 39 35 46 44 35 38 39 34 35 7d 00 } //01 00  ㈵㜹㥅㔰ㄭ䙄ⵂ䄴䌹㤭㜸ⴱ㑁㥆䘵㕄㤸㔴}
		$a_01_25 = {2e 3f 41 56 43 46 75 6e 4d 6f 64 75 6c 65 40 40 } //01 00  .?AVCFunModule@@
		$a_01_26 = {2f 00 43 00 61 00 6c 00 6c 00 42 00 79 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 3d 00 59 00 65 00 73 00 20 00 2f 00 73 00 20 00 25 00 73 00 } //01 00  /CallByUpdater=Yes /s %s
		$a_01_27 = {25 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 74 00 61 00 72 00 74 00 42 00 4d 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 64 00 6f 00 3f 00 70 00 61 00 3d 00 31 00 26 00 25 00 73 00 } //01 00  %s.com/startBMDownload.do?pa=1&%s
		$a_01_28 = {2f 00 62 00 79 00 70 00 61 00 73 00 73 00 3d 00 00 00 00 00 2e 00 78 00 6d 00 6c 00 00 00 00 00 2f 00 75 00 72 00 6c 00 3d 00 } //01 00 
		$a_01_29 = {3f 47 65 74 50 69 78 65 6c 41 66 66 69 64 40 } //01 00  ?GetPixelAffid@
		$a_01_30 = {3f 47 65 74 41 64 73 55 52 4c 40 } //01 00  ?GetAdsURL@
		$a_01_31 = {4c 00 43 00 41 00 43 00 6f 00 6d 00 6d 00 6f 00 6e 00 2e 00 64 00 6c 00 6c 00 } //01 00  LCACommon.dll
		$a_01_32 = {4c 00 69 00 76 00 65 00 20 00 43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 20 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 72 00 } //00 00  Live Content Advancer
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_9{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 35 36 31 37 45 43 41 39 2d 34 38 38 44 2d 34 42 41 32 2d 38 35 36 32 2d 39 37 31 30 42 39 41 42 37 38 44 32 7d } //01 00  {5617ECA9-488D-4BA2-8562-9710B9AB78D2}
		$a_01_1 = {64 65 73 6b 74 6f 70 73 6d 69 6c 65 79 5f } //01 00  desktopsmiley_
		$a_01_2 = {73 74 62 75 70 2e 65 78 65 } //01 00  stbup.exe
		$a_01_3 = {25 73 5c 25 73 20 2f 70 72 65 75 70 64 61 74 65 } //01 00  %s\%s /preupdate
		$a_01_4 = {64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 73 00 6d 00 69 00 6c 00 65 00 79 00 2e 00 73 00 74 00 61 00 72 00 74 00 6f 00 6e 00 63 00 65 00 } //01 00  desktopsmiley.startonce
		$a_01_5 = {67 00 65 00 6e 00 65 00 72 00 61 00 6c 00 2e 00 75 00 73 00 65 00 72 00 61 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 74 00 72 00 61 00 2e 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 73 00 6d 00 69 00 6c 00 65 00 79 00 } //00 00  general.useragent.extra.desktopsmiley
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_10{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 00 35 00 36 00 31 00 37 00 45 00 43 00 41 00 39 00 2d 00 34 00 38 00 38 00 44 00 2d 00 34 00 42 00 41 00 32 00 2d 00 38 00 35 00 36 00 32 00 2d 00 39 00 37 00 31 00 30 00 42 00 39 00 41 00 42 00 37 00 38 00 44 00 32 00 7d 00 } //01 00  {5617ECA9-488D-4BA2-8562-9710B9AB78D2}
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 73 00 6d 00 69 00 6c 00 65 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 74 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 2f 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 73 00 6d 00 69 00 6c 00 65 00 79 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2f 00 } //01 00  http://www.desktopsmiley.com/toolbar/desktopsmiley/download/
		$a_01_2 = {73 00 74 00 62 00 64 00 6c 00 2e 00 65 00 78 00 65 00 00 00 20 00 2f 00 62 00 79 00 70 00 61 00 73 00 73 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_DoubleD_11{
	meta:
		description = "Adware:Win32/DoubleD,SIGNATURE_TYPE_PEHSTR,2a 00 2a 00 0e 00 00 0a 00 "
		
	strings :
		$a_01_0 = {3c 00 41 00 20 00 68 00 72 00 65 00 66 00 3d 00 22 00 25 00 73 00 22 00 3e 00 3c 00 49 00 4d 00 47 00 20 00 69 00 64 00 3d 00 22 00 25 00 73 00 22 00 20 00 73 00 72 00 63 00 3d 00 22 00 25 00 73 00 22 00 20 00 61 00 6c 00 74 00 3d 00 22 00 25 00 73 00 22 00 20 00 62 00 6f 00 72 00 64 00 65 00 72 00 3d 00 22 00 30 00 22 00 3e 00 } //0a 00  <A href="%s"><IMG id="%s" src="%s" alt="%s" border="0">
		$a_01_1 = {53 00 4d 00 44 00 4c 00 5f 00 4d 00 55 00 54 00 45 00 58 00 } //0a 00  SMDL_MUTEX
		$a_01_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5f 00 53 00 65 00 72 00 76 00 65 00 72 00 } //0a 00  Internet Explorer_Server
		$a_01_3 = {7b 00 35 00 36 00 31 00 37 00 45 00 43 00 41 00 39 00 2d 00 34 00 38 00 38 00 44 00 2d 00 34 00 42 00 41 00 32 00 2d 00 38 00 35 00 36 00 32 00 2d 00 39 00 37 00 31 00 30 00 42 00 39 00 41 00 42 00 37 00 38 00 44 00 32 00 7d 00 } //05 00  {5617ECA9-488D-4BA2-8562-9710B9AB78D2}
		$a_01_4 = {28 00 49 00 4d 00 20 00 77 00 69 00 74 00 68 00 20 00 2e 00 2a 00 3f 00 20 00 66 00 72 00 6f 00 6d 00 20 00 2e 00 2a 00 3f 00 29 00 } //01 00  (IM with .*? from .*?)
		$a_01_5 = {4d 00 6f 00 64 00 75 00 6c 00 65 00 5f 00 53 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 54 00 65 00 6c 00 6c 00 41 00 46 00 72 00 69 00 65 00 6e 00 64 00 2e 00 6d 00 78 00 } //01 00  Module_Smiley_TellAFriend.mx
		$a_01_6 = {64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 73 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 } //01 00  desktopsmiley_
		$a_01_7 = {4f 00 45 00 5f 00 45 00 6e 00 76 00 65 00 6c 00 6f 00 70 00 65 00 } //01 00  OE_Envelope
		$a_01_8 = {54 00 42 00 42 00 74 00 6e 00 53 00 6d 00 69 00 6c 00 65 00 79 00 32 00 30 00 2e 00 62 00 6d 00 70 00 } //01 00  TBBtnSmiley20.bmp
		$a_01_9 = {69 00 6d 00 5f 00 73 00 6d 00 69 00 6c 00 65 00 79 00 5f 00 5f 00 61 00 64 00 76 00 5f 00 69 00 6d 00 67 00 } //01 00  im_smiley__adv_img
		$a_01_10 = {4d 00 53 00 42 00 4c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 43 00 6c 00 61 00 73 00 73 00 } //01 00  MSBLWindowClass
		$a_01_11 = {41 00 6f 00 6c 00 48 00 44 00 6c 00 6c 00 4d 00 73 00 67 00 57 00 69 00 6e 00 } //05 00  AolHDllMsgWin
		$a_01_12 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 4f 00 4c 00 5c 00 41 00 49 00 4d 00 5c 00 36 00 } //01 00  SOFTWARE\AOL\AIM\6
		$a_01_13 = {59 00 49 00 4d 00 49 00 6e 00 70 00 75 00 74 00 57 00 69 00 6e 00 64 00 6f 00 77 00 } //00 00  YIMInputWindow
	condition:
		any of ($a_*)
 
}