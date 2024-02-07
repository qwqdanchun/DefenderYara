
rule TrojanSpy_Win32_Maran_gen_A{
	meta:
		description = "TrojanSpy:Win32/Maran.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffc9 00 ffffffc8 00 10 00 00 32 00 "
		
	strings :
		$a_00_0 = {78 78 53 65 6c 66 69 6e 73 74 61 6c 6c 78 78 } //32 00  xxSelfinstallxx
		$a_00_1 = {62 6e 74 6a 79 74 75 74 72 } //32 00  bntjytutr
		$a_00_2 = {43 72 65 61 74 65 4d 75 74 65 78 } //32 00  CreateMutex
		$a_00_3 = {52 65 6c 65 61 73 65 4d 75 74 65 78 } //14 00  ReleaseMutex
		$a_00_4 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //05 00  SOFTWARE\Borland\Delphi\RTL
		$a_00_5 = {40 65 63 68 6f 20 6f 66 66 } //05 00  @echo off
		$a_00_6 = {3a 6c 6f 6f 70 } //05 00  :loop
		$a_00_7 = {69 66 20 65 78 69 73 74 20 22 } //05 00  if exist "
		$a_00_8 = {22 20 67 6f 74 6f 20 6c 6f 6f 70 } //0a 00  " goto loop
		$a_02_9 = {64 65 6c 20 64 65 6c 90 02 04 2e 62 61 74 90 00 } //01 00 
		$a_00_10 = {77 69 6e 78 70 6e 70 } //01 00  winxpnp
		$a_00_11 = {69 70 66 69 6c 74 65 72 } //01 00  ipfilter
		$a_00_12 = {56 6f 69 63 65 4d 61 6e 61 67 65 72 44 6f 77 6e } //01 00  VoiceManagerDown
		$a_00_13 = {56 47 41 44 6f 77 6e } //01 00  VGADown
		$a_00_14 = {41 75 64 69 6f 20 41 64 61 70 74 65 72 } //01 00  Audio Adapter
		$a_00_15 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 30 } //00 00  \\.\PhysicalDrive0
	condition:
		any of ($a_*)
 
}