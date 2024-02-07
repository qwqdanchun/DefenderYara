
rule Trojan_Win32_Fiya_D{
	meta:
		description = "Trojan:Win32/Fiya.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 6c 61 6e 6d 67 72 2e 64 6c 6c } //01 00  wlanmgr.dll
		$a_01_1 = {64 33 64 61 64 61 70 74 65 72 2e 64 6c 6c } //01 00  d3dadapter.dll
		$a_01_2 = {36 35 35 32 34 37 36 35 5f 36 37 33 2e 64 61 74 } //01 00  65524765_673.dat
		$a_01_3 = {25 73 5c 25 73 5c 50 61 72 61 6d 65 74 65 72 73 } //01 00  %s\%s\Parameters
		$a_01_4 = {26 61 3d 00 26 70 3d } //01 00 
		$a_01_5 = {47 6c 6f 62 61 6c 5c 57 6c 61 6e 5f 4d 61 6e 61 67 65 72 5f 49 6e 69 74 69 61 6c 69 7a 65 } //01 00  Global\Wlan_Manager_Initialize
		$a_01_6 = {47 6c 6f 62 61 6c 5c 44 33 44 41 64 61 70 74 65 72 5f 53 65 72 76 69 63 65 45 76 65 6e 74 } //01 00  Global\D3DAdapter_ServiceEvent
		$a_01_7 = {25 73 25 63 25 73 25 73 25 63 25 63 25 73 25 73 25 63 25 73 25 63 25 63 25 63 25 73 25 73 25 73 25 73 25 63 25 63 25 73 25 63 25 73 25 73 } //01 00  %s%c%s%s%c%c%s%s%c%s%c%c%c%s%s%s%s%c%c%s%c%s%s
		$a_01_8 = {48 25 63 25 73 51 75 25 63 25 73 49 6e 25 63 6f 25 63 } //00 00  H%c%sQu%c%sIn%co%c
		$a_00_9 = {7e 15 00 00 } //bf 83 
	condition:
		any of ($a_*)
 
}