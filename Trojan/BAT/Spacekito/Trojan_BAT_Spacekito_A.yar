
rule Trojan_BAT_Spacekito_A{
	meta:
		description = "Trojan:BAT/Spacekito.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0f 00 00 "
		
	strings :
		$a_01_0 = {49 6e 73 74 61 6c 6c 44 6c 6c 49 45 } //1 InstallDllIE
		$a_01_1 = {49 6e 73 74 61 6c 6c 46 46 } //1 InstallFF
		$a_01_2 = {49 6e 73 74 61 6c 6c 63 68 72 6f 6d 65 } //1 Installchrome
		$a_01_3 = {73 00 72 00 76 00 50 00 6c 00 67 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 } //1 srvPlgProtect
		$a_03_4 = {2e 00 7a 00 69 00 70 00 ?? ?? 5f 00 6f 00 6c 00 64 00 } //1
		$a_01_5 = {6d 00 61 00 63 00 3d 00 } //1 mac=
		$a_01_6 = {5c 00 66 00 69 00 6c 00 65 00 73 00 5c 00 70 00 6c 00 75 00 67 00 69 00 6e 00 2e 00 7a 00 69 00 70 00 } //1 \files\plugin.zip
		$a_03_7 = {4f 00 4b 00 69 00 74 00 53 00 70 00 61 00 63 00 65 00 ?? ?? 70 00 61 00 70 00 61 00 72 00 72 00 75 00 63 00 68 00 61 00 73 00 } //1
		$a_01_8 = {2e 00 6d 00 61 00 78 00 5f 00 72 00 65 00 73 00 75 00 6d 00 65 00 64 00 5f 00 63 00 72 00 61 00 73 00 68 00 65 00 73 00 22 00 2c 00 20 00 31 00 30 00 29 00 3b 00 } //1 .max_resumed_crashes", 10);
		$a_01_9 = {50 6c 75 67 69 6e 50 72 6f 74 65 63 74 } //1 PluginProtect
		$a_01_10 = {77 00 68 00 65 00 72 00 65 00 20 00 69 00 64 00 20 00 6c 00 69 00 6b 00 65 00 20 00 27 00 4f 00 4b 00 69 00 74 00 53 00 70 00 61 00 63 00 65 00 25 00 27 00 3b 00 } //1 where id like 'OKitSpace%';
		$a_01_11 = {5c 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 7b 00 33 00 35 00 34 00 33 00 36 00 31 00 39 00 43 00 2d 00 44 00 35 00 36 00 33 00 2d 00 34 00 33 00 46 00 37 00 2d 00 39 00 35 00 45 00 41 00 2d 00 34 00 44 00 41 00 37 00 45 00 31 00 43 00 43 00 33 00 39 00 36 00 41 00 7d 00 } //1 \Settings\{3543619C-D563-43F7-95EA-4DA7E1CC396A}
		$a_03_12 = {22 00 6e 00 61 00 6d 00 65 00 22 00 3a 00 [0-02] 22 00 4f 00 4b 00 69 00 74 00 53 00 70 00 61 00 63 00 65 00 22 00 2c 00 } //1
		$a_01_13 = {6d 5f 50 6c 75 67 69 6e 55 52 4c 00 } //1 彭汐杵湩剕L
		$a_01_14 = {5f 61 70 70 6c 79 5f 66 66 00 5f 61 70 70 6c 79 5f 69 65 00 } //1 慟灰祬晟f慟灰祬楟e
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_03_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_03_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=10
 
}