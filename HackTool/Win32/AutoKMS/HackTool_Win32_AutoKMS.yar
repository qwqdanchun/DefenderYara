
rule HackTool_Win32_AutoKMS{
	meta:
		description = "HackTool:Win32/AutoKMS,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_80_0 = {6f 65 6d 2d 64 72 76 38 36 2e 70 64 62 } //oem-drv86.pdb  1
		$a_80_1 = {53 79 73 74 65 6d 52 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 44 52 49 56 45 52 53 5c 6f 65 6d 2d 64 72 76 38 36 2e 73 79 73 } //SystemRoot\system32\DRIVERS\oem-drv86.sys  1
		$a_80_2 = {73 65 63 72 39 74 6f 73 } //secr9tos  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1) >=3
 
}
rule HackTool_Win32_AutoKMS_2{
	meta:
		description = "HackTool:Win32/AutoKMS,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 "
		
	strings :
		$a_80_0 = {52 61 74 69 62 6f 72 75 73 } //Ratiborus  2
		$a_80_1 = {49 20 64 6f 20 6e 6f 74 20 77 61 6e 74 } //I do not want  1
		$a_80_2 = {44 6f 6e 61 74 65 } //Donate  1
		$a_80_3 = {68 74 74 70 3a 2f 2f 66 6f 72 75 6d 2e 72 75 2d 62 6f 61 72 64 2e 63 6f 6d } //http://forum.ru-board.com  1
		$a_80_4 = {68 74 74 70 73 3a 2f 2f 6d 6f 6e 65 79 2e 79 61 6e 64 65 78 2e 72 75 } //https://money.yandex.ru  1
		$a_80_5 = {6b 6d 73 37 38 39 2e 63 6f 6d } //kms789.com  1
		$a_80_6 = {6b 6d 73 2e 30 33 6b 2e 6f 72 67 } //kms.03k.org  1
		$a_80_7 = {6b 6d 73 2e 64 69 67 69 62 6f 79 2e 69 72 } //kms.digiboy.ir  1
	condition:
		((#a_80_0  & 1)*2+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1) >=5
 
}
rule HackTool_Win32_AutoKMS_3{
	meta:
		description = "HackTool:Win32/AutoKMS,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_80_0 = {74 61 73 6b 6b 69 6c 6c 20 2f 74 20 2f 66 20 2f 49 4d 20 4b 4d 53 38 4c 6f 61 64 2e 65 78 65 20 3e 6e 75 6c 20 32 3e 26 31 } //taskkill /t /f /IM KMS8Load.exe >nul 2>&1  1
		$a_80_1 = {53 70 70 45 78 74 43 6f 6d 4f 62 6a 48 6f 6f 6b 2e 64 6c 6c } //SppExtComObjHook.dll  1
		$a_80_2 = {41 63 74 69 76 61 74 65 20 57 69 6e 64 6f 77 73 20 61 6e 64 20 4f 66 66 69 63 65 20 50 65 72 6d 61 6e 65 6e 74 6c 79 } //Activate Windows and Office Permanently  1
		$a_80_3 = {25 30 35 75 2d 25 30 35 75 2d 25 30 33 75 2d 25 30 36 75 2d 30 33 2d 25 75 2d 25 30 34 75 2e 30 30 30 30 2d 25 30 33 64 25 30 34 64 } //%05u-%05u-%03u-%06u-03-%u-%04u.0000-%03d%04d  1
		$a_80_4 = {4b 4d 53 5f 45 6d 75 6c 61 74 69 6f 6e } //KMS_Emulation  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1) >=4
 
}
rule HackTool_Win32_AutoKMS_4{
	meta:
		description = "HackTool:Win32/AutoKMS,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_80_0 = {76 65 72 69 66 79 20 2f 76 20 2f 70 68 20 2f 73 68 61 31 20 36 34 38 33 38 34 61 34 64 65 65 35 33 64 34 63 31 63 38 37 65 31 30 64 36 37 63 63 39 39 33 30 37 63 63 63 39 63 39 38 } //verify /v /ph /sha1 648384a4dee53d4c1c87e10d67cc99307ccc9c98  1
		$a_80_1 = {44 69 73 61 62 6c 65 52 65 61 6c 74 69 6d 65 4d 6f 6e 69 74 6f 72 69 6e 67 } //DisableRealtimeMonitoring  1
		$a_80_2 = {57 31 30 20 44 69 67 69 74 61 6c 20 41 63 74 69 76 61 74 69 6f 6e 20 50 72 6f 67 72 61 6d } //W10 Digital Activation Program  1
		$a_80_3 = {44 69 73 61 62 6c 65 20 44 65 66 65 6e 64 65 72 } //Disable Defender  1
		$a_80_4 = {2f 64 65 6c 65 74 65 20 2f 54 4e 20 4b 4d 53 54 6f 6f 6c 73 20 2f } ///delete /TN KMSTools /  1
		$a_80_5 = {50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 57 69 6e 64 6f 77 73 20 44 65 66 65 6e 64 65 72 5c 4d 73 4d 70 45 6e 67 2e 65 78 65 } //Program Files\Windows Defender\MsMpEng.exe  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1) >=5
 
}
rule HackTool_Win32_AutoKMS_5{
	meta:
		description = "HackTool:Win32/AutoKMS,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 10 00 00 "
		
	strings :
		$a_80_0 = {5c 4b 4d 53 20 53 65 72 76 65 72 2e 70 64 62 00 } //\KMS Server.pdb  2
		$a_80_1 = {28 4b 4d 53 20 56 35 29 20 73 65 6e 74 2e 0a 00 28 29 24 5e 2e 2a 2b 3f 5b 5d 7c 5c 2d 7b 7d 2c 3a 3d 21 0a 0d 08 00 } //(KMS V5) sent.
  1
		$a_80_2 = {00 44 65 66 61 75 6c 74 4b 4d 53 50 49 44 00 } //  1
		$a_80_3 = {00 52 61 6e 64 6f 6d 4b 4d 53 50 49 44 00 } //  1
		$a_80_4 = {00 4b 69 6c 6c 50 72 6f 63 65 73 73 4f 6e 50 6f 72 74 00 } //  1
		$a_80_5 = {00 35 35 30 34 31 2d 30 30 31 36 38 2d 33 30 35 2d 32 34 36 32 30 39 2d 30 33 2d 31 30 33 33 2d 37 36 30 30 2e 30 30 30 30 2d 30 35 32 32 30 31 30 00 } //  1
		$a_80_6 = {00 52 70 63 53 65 72 76 65 72 55 73 65 50 72 6f 74 73 65 71 45 70 20 66 61 69 6c 65 64 20 77 69 74 68 20 63 6f 64 65 20 25 69 2e 0a 00 } //  1
		$a_80_7 = {00 52 70 63 53 65 72 76 65 72 52 65 67 69 73 74 65 72 49 66 45 78 20 66 61 69 6c 65 64 20 77 69 74 68 20 63 6f 64 65 20 25 69 2e 0a 00 } //  1
		$a_80_8 = {00 52 70 63 53 65 72 76 65 72 4c 69 73 74 65 6e 20 66 61 69 6c 65 64 20 77 69 74 68 20 63 6f 64 65 20 25 69 2e 0a 00 } //  1
		$a_80_9 = {00 4b 4d 53 20 53 65 72 76 65 72 20 45 6d 75 6c 61 74 6f 72 20 72 75 6e 6e 69 6e 67 2e 2e 2e 0a 00 } //  1
		$a_80_10 = {00 5e 28 5b 30 2d 39 5d 7b 35 7d 29 2d 28 5b 30 2d 39 5d 7b 35 7d 29 2d 28 5b 30 2d 39 5d 7b 33 7d 29 2d 28 5b 30 2d 39 5d 7b 36 7d 29 2d 28 5b 30 2d 39 5d 7b 32 7d 29 2d 28 5b 30 2d 39 5d 7b 34 7d 29 2d 28 5b 30 2d 39 5d 7b 34 7d 29 2e 28 5b 30 2d 39 5d 7b 34 7d 29 2d 28 5b 30 2d 39 5d 7b 37 7d 29 24 00 } //  1
		$a_02_11 = {00 41 00 63 00 74 00 69 00 76 00 61 00 74 00 69 00 6f 00 6e 00 20 00 72 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 20 00 28 00 4b 00 4d 00 53 00 20 00 56 00 [0-04] 29 00 20 00 73 00 65 00 6e 00 74 00 2e 00 0a 00 } //1
		$a_02_12 = {00 41 63 74 69 76 61 74 69 6f 6e 20 72 65 73 70 6f 6e 73 65 20 28 4b 4d 53 20 56 [0-04] 29 20 73 65 6e 74 2e 0a 00 } //1
		$a_02_13 = {46 00 4f 00 52 00 20 00 2f 00 46 00 20 00 22 00 74 00 6f 00 6b 00 65 00 6e 00 73 00 3d 00 [0-04] 20 00 64 00 65 00 6c 00 69 00 6d 00 73 00 3d 00 20 00 22 00 20 00 25 00 50 00 20 00 49 00 4e 00 20 00 28 00 27 00 6e 00 65 00 74 00 73 00 74 00 61 00 74 00 20 00 2d 00 61 00 6e 00 6f 00 20 00 5e 00 7c 00 20 00 66 00 69 00 6e 00 64 00 73 00 74 00 72 00 20 00 3a 00 31 00 36 00 38 00 38 00 20 00 27 00 29 00 20 00 44 00 4f 00 20 00 65 00 63 00 68 00 6f 00 20 00 25 00 50 00 } //2
		$a_02_14 = {46 4f 52 20 2f 46 20 22 74 6f 6b 65 6e 73 3d [0-04] 20 64 65 6c 69 6d 73 3d 20 22 20 25 50 20 49 4e 20 28 27 6e 65 74 73 74 61 74 20 2d 61 6e 6f 20 5e 7c 20 66 69 6e 64 73 74 72 20 3a 31 36 38 38 20 27 29 20 44 4f 20 65 63 68 6f 20 25 50 } //2
		$a_80_15 = {00 35 35 30 34 31 2d 30 30 31 36 38 2d 33 30 35 2d 58 58 58 58 58 58 2d 30 33 2d 31 30 33 33 2d 56 56 56 56 2e 30 30 30 30 2d 44 44 44 59 59 59 59 00 } //  2
	condition:
		((#a_80_0  & 1)*2+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1+(#a_02_11  & 1)*1+(#a_02_12  & 1)*1+(#a_02_13  & 1)*2+(#a_02_14  & 1)*2+(#a_80_15  & 1)*2) >=2
 
}
rule HackTool_Win32_AutoKMS_6{
	meta:
		description = "HackTool:Win32/AutoKMS,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 72 00 75 00 6e 00 20 00 2f 00 69 00 20 00 2f 00 74 00 6e 00 20 00 22 00 57 00 49 00 4e 00 5f 00 4b 00 4d 00 53 00 5f 00 6b 00 65 00 79 00 22 00 20 00 3e 00 6e 00 75 00 6c 00 20 00 } //1 schtasks /run /i /tn "WIN_KMS_key" >nul 
		$a_01_1 = {74 73 5f 6b 6d 73 61 6c 6c 07 43 61 70 74 69 6f 6e 14 09 00 00 00 4b 4d 53 e6 bf 80 e6 b4 bb 0a 49 6d 61 67 65 49 6e 64 65 78 02 0d 06 4f 6e 53 68 6f 77 07 0d 74 73 5f 6b 6d 73 61 6c 6c 53 68 } //1
		$a_01_2 = {5c 6b 00 6d 00 73 00 20 00 76 00 6c 00 20 00 61 00 6c 00 6c 00 c0 6f 3b 6d e5 5d 77 51 c6 96 10 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}