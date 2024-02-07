
rule Ransom_MSIL_Filecoder_EVI_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.EVI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 46 75 63 6b 4d 65 6d 6f 72 79 4d 65 74 68 6f 64 00 } //01 00  䘀捵䵫浥牯䵹瑥潨d
		$a_01_1 = {00 45 5a 49 50 36 34 5f 44 65 63 72 79 70 74 00 } //01 00  䔀䥚㙐弴敄牣灹t
		$a_01_2 = {00 45 5a 49 50 36 34 5f 45 6e 63 72 79 70 74 00 } //01 00  䔀䥚㙐弴湅牣灹t
		$a_01_3 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //01 00  vssadmin delete shadows /all /quiet
		$a_01_4 = {00 44 65 6c 65 74 65 53 68 61 64 6f 77 43 6f 70 69 65 73 00 } //01 00  䐀汥瑥卥慨潤䍷灯敩s
		$a_01_5 = {00 44 6f 63 75 6d 65 6e 74 5f 46 75 63 6b 65 72 00 } //01 00 
		$a_01_6 = {66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //00 00  files are encrypted
	condition:
		any of ($a_*)
 
}