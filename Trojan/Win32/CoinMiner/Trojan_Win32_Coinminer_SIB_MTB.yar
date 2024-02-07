
rule Trojan_Win32_Coinminer_SIB_MTB{
	meta:
		description = "Trojan:Win32/Coinminer.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4a 00 3f 00 07 00 00 32 00 "
		
	strings :
		$a_00_0 = {73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f } //0a 00  stratum+tcp://
		$a_00_1 = {6d 69 6e 65 72 2e 66 65 65 2e 78 6d 72 69 67 2e 63 6f 6d } //0a 00  miner.fee.xmrig.com
		$a_00_2 = {65 6d 65 72 67 65 6e 63 79 2e 66 65 65 2e 78 6d 72 69 67 2e 63 6f 6d } //01 00  emergency.fee.xmrig.com
		$a_03_3 = {89 f5 8b 74 24 90 01 01 f7 d5 89 eb 89 fd 8b 7c 24 90 01 01 21 c3 f7 d5 89 e9 89 dd 8b 9c 24 90 01 04 21 d1 31 dd 89 ac 24 90 00 } //01 00 
		$a_03_4 = {89 dd 8b 9c 24 90 01 04 f7 d5 f7 d6 89 ea 89 f0 8b b4 24 90 01 04 21 da 89 d5 8b 54 24 90 01 01 21 f0 33 44 24 90 01 01 f7 d6 31 d5 89 ac 24 90 00 } //01 00 
		$a_03_5 = {89 d8 8b 5c 24 90 01 01 f7 d0 89 c2 89 f0 8b 74 24 90 01 01 21 da 8b 5c 24 90 01 01 f7 d0 23 44 24 90 01 01 89 d7 33 44 24 90 01 01 31 df 8b 5c 24 90 1b 00 89 7c 24 90 00 } //01 00 
		$a_03_6 = {89 c8 8b 8c 24 90 01 04 f7 d0 89 c2 89 d8 8b 9c 24 90 01 04 f7 d0 21 f0 33 84 24 90 01 04 21 da 89 d7 8b 94 24 90 1b 00 89 44 24 90 01 01 89 d8 31 d7 f7 d0 89 7c 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Coinminer_SIB_MTB_2{
	meta:
		description = "Trojan:Win32/Coinminer.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,30 00 1c 00 0a 00 00 01 00 "
		
	strings :
		$a_80_0 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 76 67 65 74 2e 76 62 73 } //C:\ProgramData\vget.vbs  01 00 
		$a_80_1 = {43 3a 5c 52 45 43 59 43 4c 45 52 5c 76 67 65 74 2e 76 62 73 } //C:\RECYCLER\vget.vbs  01 00 
		$a_80_2 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 74 61 73 6b 67 65 72 2e 65 78 65 } //C:\ProgramData\taskger.exe  01 00 
		$a_80_3 = {43 3a 5c 52 45 43 59 43 4c 45 52 5c 74 61 73 6b 67 65 72 2e 65 78 65 } //C:\RECYCLER\taskger.exe  01 00 
		$a_80_4 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 74 61 73 6b 6d 67 7a 72 2e 65 78 65 } //C:\ProgramData\taskmgzr.exe  01 00 
		$a_80_5 = {43 3a 5c 52 45 43 59 43 4c 45 52 5c 74 61 73 6b 6d 67 7a 72 2e 65 78 65 } //C:\RECYCLER\taskmgzr.exe  01 00 
		$a_80_6 = {73 63 68 74 61 73 6b 73 20 2f 44 65 6c 65 74 65 20 2f 54 4e 20 22 55 70 64 61 74 65 20 73 65 72 76 69 63 65 20 66 6f 72 20 57 69 6e 64 6f 77 73 20 53 65 72 76 69 63 65 22 20 2f 46 } //schtasks /Delete /TN "Update service for Windows Service" /F  01 00 
		$a_80_7 = {63 61 63 6c 73 20 43 3a 5c 57 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 63 6d 64 2e 65 78 65 20 2f 65 20 2f 74 20 2f 67 20 65 76 65 72 79 6f 6e 65 3a 66 } //cacls C:\Windows\system32\cmd.exe /e /t /g everyone:f  14 00 
		$a_02_8 = {33 c0 85 db 7e 90 01 01 8b 15 90 01 04 85 c0 8b 0c 82 7c 90 01 01 8b 57 10 c1 ea 02 3b c2 7d 90 01 01 8b 57 08 89 0c 82 40 3b c3 7c 90 01 01 33 c0 85 db 7e 90 01 01 8b 0d b0 67 4e 00 85 c0 8b 0c 81 7c 90 01 01 8b 55 90 01 01 81 c2 90 01 04 8b 72 10 c1 ee 02 3b c6 7d 90 01 01 8b 52 08 89 0c 82 40 3b c3 7c 90 00 } //14 00 
		$a_02_9 = {8b f9 8b 87 c8 01 00 00 85 c0 90 18 8b 5c 24 90 01 01 8b 97 8c 01 00 00 8b 04 9a 85 c0 0f 85 90 01 04 8b 87 64 01 00 00 8b 04 98 89 44 24 90 01 01 80 38 90 01 01 90 18 8b 8f 50 01 00 00 55 89 44 24 90 01 01 8b 34 99 56 89 74 24 90 01 01 e8 90 01 04 83 c4 04 85 c0 90 18 bd 90 01 04 8b 55 00 52 ff 15 90 01 04 8b f0 85 f6 74 90 01 01 8b 44 24 90 1b 06 50 56 ff 15 90 01 04 85 db 7c 90 01 01 8b 8f 94 01 00 00 c1 e9 02 3b d9 7d 90 01 01 8b 97 8c 01 00 00 89 04 9a 8b 87 8c 01 00 00 83 3c 98 00 90 18 8b 8f 8c 01 00 00 5d 83 3c 99 00 90 18 85 db 7c 90 01 01 8b 87 80 01 00 00 c1 e8 02 3b d8 7d 90 01 01 8b 8f 78 01 00 00 89 34 99 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}