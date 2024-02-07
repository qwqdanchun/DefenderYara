
rule TrojanDownloader_Win32_Agent_KY{
	meta:
		description = "TrojanDownloader:Win32/Agent.KY,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {20 2f 63 20 70 69 6e 67 20 6c 6f 63 61 6c 68 6f 73 74 20 2d 6e 20 33 20 3e 3e 20 4e 55 4c 20 26 26 20 64 65 6c 20 } //01 00   /c ping localhost -n 3 >> NUL && del 
		$a_01_1 = {63 32 68 6c 62 47 77 7a 4d 69 35 6b 62 47 77 3d 00 56 56 4a 4d 52 47 39 33 62 6d 78 76 59 57 52 55 62 30 5a 70 62 47 56 42 00 } //01 00  ㉣汨䝢穷楍欵䝢㵷嘀䩖前㥇戳硭奶剗払娰扰噇B
		$a_00_2 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}