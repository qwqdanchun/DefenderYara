
rule PWS_Win32_Tibia_AL{
	meta:
		description = "PWS:Win32/Tibia.AL,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {c7 44 0b ff 26 76 3d 31 66 c7 44 18 04 2e 31 c6 44 18 06 00 89 1c 24 } //02 00 
		$a_00_1 = {48 6f 73 74 3a 20 4f 57 4e 54 49 42 49 41 2e 43 4f 4d } //01 00  Host: OWNTIBIA.COM
		$a_00_2 = {50 4f 53 54 20 2f 76 69 70 2f 64 6f 64 61 6a 2e 70 68 70 } //01 00  POST /vip/dodaj.php
		$a_01_3 = {75 73 65 72 5f 69 6e 66 6f 3d 00 26 61 63 63 5f 69 6e 66 6f 3d 00 26 63 68 61 72 5f 6c 69 73 74 3d 00 26 65 71 5f 6c 69 73 74 3d 00 } //01 00  獵牥楟普㵯☀捡彣湩潦=挦慨彲楬瑳=攦影楬瑳=
		$a_00_4 = {54 69 62 69 61 43 6c 69 65 6e 74 00 } //01 00  楔楢䍡楬湥t
		$a_00_5 = {6c 73 61 73 73 2e 65 78 65 00 36 35 00 72 75 6e 61 73 } //00 00 
	condition:
		any of ($a_*)
 
}