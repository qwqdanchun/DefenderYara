
rule Trojan_BAT_Spacekito_B{
	meta:
		description = "Trojan:BAT/Spacekito.B,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 13 00 00 "
		
	strings :
		$a_01_0 = {49 6e 73 74 61 6c 6c 44 6c 6c 49 45 } //1 InstallDllIE
		$a_01_1 = {49 6e 73 74 61 6c 6c 46 46 } //1 InstallFF
		$a_01_2 = {49 73 41 63 74 69 76 65 4a 73 6f 6e 46 46 } //1 IsActiveJsonFF
		$a_01_3 = {73 00 72 00 76 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 } //1 srvProtectExtension
		$a_01_4 = {5c 00 66 00 69 00 6c 00 65 00 73 00 5c 00 63 00 72 00 78 00 49 00 44 00 } //1 \files\crxID
		$a_01_5 = {6d 00 61 00 63 00 3d 00 } //1 mac=
		$a_01_6 = {5c 00 66 00 69 00 6c 00 65 00 73 00 5c 00 70 00 6c 00 75 00 67 00 69 00 6e 00 2e 00 7a 00 69 00 70 00 } //1 \files\plugin.zip
		$a_01_7 = {42 00 61 00 73 00 65 00 46 00 6c 00 61 00 73 00 68 00 } //1 BaseFlash
		$a_01_8 = {2e 00 6d 00 61 00 78 00 5f 00 72 00 65 00 73 00 75 00 6d 00 65 00 64 00 5f 00 63 00 72 00 61 00 73 00 68 00 65 00 73 00 22 00 2c 00 20 00 31 00 30 00 29 00 3b 00 } //1 .max_resumed_crashes", 10);
		$a_00_9 = {20 00 77 00 68 00 65 00 72 00 65 00 20 00 69 00 64 00 20 00 6c 00 69 00 6b 00 65 00 20 00 27 00 } //1  where id like '
		$a_01_10 = {5f 61 70 70 6c 79 5f 66 66 00 5f 61 70 70 6c 79 5f 69 65 00 } //1 慟灰祬晟f慟灰祬楟e
		$a_03_11 = {2f 00 75 00 20 00 22 00 [0-06] 2f 00 73 00 20 00 22 00 } //1
		$a_01_12 = {75 00 70 00 64 00 61 00 74 00 65 00 53 00 72 00 76 00 5c 00 } //1 updateSrv\
		$a_01_13 = {46 00 46 00 20 00 76 00 65 00 72 00 69 00 66 00 79 00 20 00 3a 00 } //1 FF verify :
		$a_01_14 = {70 00 61 00 70 00 61 00 72 00 72 00 75 00 63 00 68 00 61 00 73 00 } //1 paparruchas
		$a_01_15 = {4f 00 6b 00 69 00 74 00 53 00 70 00 61 00 63 00 65 00 } //1 OkitSpace
		$a_01_16 = {26 00 73 00 76 00 65 00 72 00 3d 00 } //1 &sver=
		$a_01_17 = {6d 5f 55 73 65 72 5f 69 64 00 6d 5f 63 68 61 6e 6e 65 6c 5f 69 64 } //1 彭獕牥楟d彭档湡敮彬摩
		$a_01_18 = {5c 00 66 00 69 00 6c 00 65 00 73 00 5c 00 70 00 6c 00 75 00 67 00 69 00 6e 00 43 00 52 00 58 00 73 00 6d 00 2e 00 7a 00 69 00 70 00 } //1 \files\pluginCRXsm.zip
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_00_9  & 1)*1+(#a_01_10  & 1)*1+(#a_03_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1) >=10
 
}