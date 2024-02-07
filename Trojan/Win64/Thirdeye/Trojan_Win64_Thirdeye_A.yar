
rule Trojan_Win64_Thirdeye_A{
	meta:
		description = "Trojan:Win64/Thirdeye.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 09 00 00 05 00 "
		
	strings :
		$a_81_0 = {2f 67 65 6e 65 72 61 6c 2f 61 64 64 } //05 00  /general/add
		$a_81_1 = {2f 63 68 33 63 6b 53 74 61 74 65 } //05 00  /ch3ckState
		$a_81_2 = {42 25 6c 48 43 4d 51 } //05 00  B%lHCMQ
		$a_81_3 = {36 63 71 67 6c 69 7e 63 79 7b 6c } //05 00  6cqgli~cy{l
		$a_81_4 = {23 67 4d 56 56 4b 49 50 7c 4e 5e 5e 47 40 5e } //05 00  #gMVVKIP|N^^G@^
		$a_81_5 = {33 72 64 5f 65 79 65 } //05 00  3rd_eye
		$a_81_6 = {55 53 45 5f 44 45 53 5f 4b 45 59 5f } //05 00  USE_DES_KEY_
		$a_00_7 = {66 c7 45 59 20 00 c7 45 50 20 4d 69 6e c7 45 54 75 74 65 73 c6 45 58 2c } //05 00 
		$a_00_8 = {c7 44 24 54 79 70 65 00 c7 44 24 50 4f 53 5f 74 } //00 00 
	condition:
		any of ($a_*)
 
}