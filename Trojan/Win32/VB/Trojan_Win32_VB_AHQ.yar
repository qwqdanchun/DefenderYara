
rule Trojan_Win32_VB_AHQ{
	meta:
		description = "Trojan:Win32/VB.AHQ,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {65 00 72 00 72 00 52 00 65 00 73 00 75 00 6c 00 74 00 20 00 3d 00 20 00 6f 00 62 00 6a 00 53 00 57 00 62 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 2e 00 43 00 72 00 65 00 61 00 74 00 65 00 28 00 22 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 69 00 70 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 2f 00 72 00 65 00 6c 00 65 00 61 00 73 00 65 00 22 00 2c 00 20 00 4e 00 75 00 6c 00 6c 00 2c 00 20 00 6f 00 62 00 6a 00 43 00 6f 00 6e 00 66 00 69 00 67 00 2c 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 29 00 } //01 00  errResult = objSWbemObject.Create("cmd.exe /c ipconfig /release", Null, objConfig, processId)
		$a_01_1 = {5c 00 48 00 69 00 6a 00 61 00 63 00 6b 00 2e 00 65 00 78 00 65 00 } //03 00  \Hijack.exe
		$a_01_2 = {4d 6f 64 47 65 74 50 72 6f 4e 61 6d 65 42 79 50 72 6f 49 64 } //02 00  ModGetProNameByProId
		$a_01_3 = {52 65 71 54 6f 6e 67 6a 69 } //00 00  ReqTongji
	condition:
		any of ($a_*)
 
}