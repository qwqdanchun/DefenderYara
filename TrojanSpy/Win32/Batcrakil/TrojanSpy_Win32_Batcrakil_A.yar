
rule TrojanSpy_Win32_Batcrakil_A{
	meta:
		description = "TrojanSpy:Win32/Batcrakil.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0a 00 00 "
		
	strings :
		$a_00_0 = {74 73 6b 69 6c 6c 20 41 63 72 6f 52 64 33 32 2e 65 78 65 } //1 tskill AcroRd32.exe
		$a_01_1 = {25 73 3c 70 3e 43 61 70 74 75 72 65 20 44 65 76 69 63 65 73 3a 20 25 64 3c 2f 70 3e } //1 %s<p>Capture Devices: %d</p>
		$a_01_2 = {3c 70 3e 43 6f 6d 70 75 74 65 72 20 4e 61 6d 65 3a 20 25 73 20 3c 2f 70 3e } //1 <p>Computer Name: %s </p>
		$a_02_3 = {25 73 5c 74 65 6d 70 2e 74 78 74 [0-0a] 3a 5c 73 79 73 74 65 6d 2e 74 78 74 } //1
		$a_02_4 = {50 61 73 73 77 6f 72 64 [0-0a] 5c 4c 6f 67 69 6e 73 2e 74 78 74 } //1
		$a_00_5 = {5b 00 45 00 6e 00 74 00 65 00 72 00 5d 00 3c 00 62 00 72 00 20 00 2f 00 3e 00 } //1 [Enter]<br />
		$a_00_6 = {4e 00 75 00 6d 00 50 00 5f 00 41 00 52 00 52 00 4f 00 57 00 5f 00 4c 00 46 00 54 00 } //1 NumP_ARROW_LFT
		$a_03_7 = {3b cf 76 1e 8a 84 15 ?? ?? ?? ?? 8d b4 15 ?? ?? ?? ?? 8a d8 c0 eb ?? d0 ?? 0a d8 42 3b d1 88 1e 72 e2 } //2
		$a_03_8 = {76 10 80 04 3e ?? 57 46 e8 ?? ?? ?? ?? 3b f0 59 72 f0 } //2
		$a_03_9 = {6a 41 ba 41 41 41 41 59 8b c2 bf ?? ?? ?? ?? 6a 41 f3 ab } //2
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_03_7  & 1)*2+(#a_03_8  & 1)*2+(#a_03_9  & 1)*2) >=6
 
}