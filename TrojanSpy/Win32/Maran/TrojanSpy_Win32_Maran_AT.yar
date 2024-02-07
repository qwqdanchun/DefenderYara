
rule TrojanSpy_Win32_Maran_AT{
	meta:
		description = "TrojanSpy:Win32/Maran.AT,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 31 3a 4c 61 6e 64 73 6f 66 41 64 65 6e 28 } //01 00  L1:LandsofAden(
		$a_01_1 = {3b 75 73 65 72 3a } //01 00  ;user:
		$a_01_2 = {3b 70 61 73 73 3a } //01 00  ;pass:
		$a_01_3 = {51 51 51 51 51 53 56 57 } //01 00  QQQQQSVW
		$a_00_4 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //01 00  SOFTWARE\Borland\Delphi\RTL
		$a_00_5 = {41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 20 7a 68 2d 63 6e } //01 00  Accept-Language: zh-cn
		$a_00_6 = {41 63 63 65 70 74 3a 20 69 6d 61 67 65 2f 67 69 66 2c 20 69 6d 61 67 65 2f 78 2d 78 62 69 74 6d 61 70 2c 20 69 6d 61 67 65 2f 6a 70 65 67 2c 20 69 6d 61 67 65 2f 70 6a 70 65 67 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 73 68 6f 63 6b 77 61 76 65 2d 66 6c 61 73 68 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 76 6e 64 2e 6d 73 2d 70 6f 77 65 72 70 6f 69 6e 74 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 76 6e 64 2e 6d 73 2d 65 78 63 65 6c 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 6d 73 77 6f 72 64 2c 20 2a 2f 2a } //01 00  Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/x-shockwave-flash, application/vnd.ms-powerpoint, application/vnd.ms-excel, application/msword, */*
		$a_03_7 = {ff ff ff ff 0a 00 00 00 3b 90 01 04 70 61 73 73 3a 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}