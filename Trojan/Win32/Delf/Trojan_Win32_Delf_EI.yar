
rule Trojan_Win32_Delf_EI{
	meta:
		description = "Trojan:Win32/Delf.EI,SIGNATURE_TYPE_PEHSTR,ffffff97 00 ffffff97 00 0b 00 00 64 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //0a 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {61 64 6f 62 65 2e 62 61 74 } //0a 00  adobe.bat
		$a_01_2 = {6e 65 74 20 73 74 6f 70 20 62 65 65 70 } //0a 00  net stop beep
		$a_01_3 = {26 65 72 72 6f 72 73 5b 25 64 5d 3d 25 64 } //0a 00  &errors[%d]=%d
		$a_01_4 = {4d 41 49 4c 20 46 52 4f 4d 3a 20 3c 25 73 3e } //0a 00  MAIL FROM: <%s>
		$a_01_5 = {53 54 41 52 54 20 2f 57 41 49 54 20 25 73 20 2f 64 6f 5f 77 6f 72 6b } //0a 00  START /WAIT %s /do_work
		$a_01_6 = {25 73 3f 69 64 3d 25 73 26 74 69 63 6b 3d 25 64 26 76 65 72 3d 25 64 26 73 6d 74 70 3d 25 73 } //01 00  %s?id=%s&tick=%d&ver=%d&smtp=%s
		$a_01_7 = {2f 73 70 6d 2f 72 75 6e 2e 65 78 65 } //01 00  /spm/run.exe
		$a_01_8 = {2f 73 70 6d 2f 75 70 64 61 74 65 2e 65 78 65 } //01 00  /spm/update.exe
		$a_01_9 = {39 31 2e 32 30 37 2e 34 2e 32 35 30 } //01 00  91.207.4.250
		$a_01_10 = {32 30 39 2e 32 30 2e 31 33 30 2e 33 33 } //00 00  209.20.130.33
	condition:
		any of ($a_*)
 
}