
rule Trojan_Win32_Adialer_CZ{
	meta:
		description = "Trojan:Win32/Adialer.CZ,SIGNATURE_TYPE_PEHSTR_EXT,ffffffdc 00 ffffffdb 00 16 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 45 78 65 44 69 61 6c 65 72 31 2e 65 78 65 } //01 00  \ExeDialer1.exe
		$a_00_1 = {45 78 65 53 74 61 72 74 46 69 6c 65 } //01 00  ExeStartFile
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 45 47 44 48 54 4d 4c } //01 00  Software\EGDHTML
		$a_00_3 = {46 4f 52 43 45 5f 50 32 45 } //01 00  FORCE_P2E
		$a_00_4 = {46 4f 52 43 45 5f 44 49 41 4c 45 52 } //01 00  FORCE_DIALER
		$a_00_5 = {64 69 61 6c 65 72 65 78 65 2e 69 6e 69 } //01 00  dialerexe.ini
		$a_00_6 = {4e 4f 43 52 45 44 49 54 43 41 52 44 } //01 00  NOCREDITCARD
		$a_00_7 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e } //01 00  Software\Microsoft\Windows\CurrentVersion
		$a_00_8 = {5f 50 52 4f 47 52 41 4d 46 49 4c 45 53 5f 44 49 52 5f } //01 00  _PROGRAMFILES_DIR_
		$a_00_9 = {5f 57 49 4e 44 4f 57 53 5f 44 49 52 5f } //01 00  _WINDOWS_DIR_
		$a_00_10 = {5f 53 59 53 54 45 4d 5f 44 49 52 5f } //01 00  _SYSTEM_DIR_
		$a_00_11 = {6c 6f 67 69 6e 3d } //01 00  login=
		$a_00_12 = {5c 64 69 61 6c 65 78 65 2e 65 70 6b } //01 00  \dialexe.epk
		$a_00_13 = {5c 44 65 73 6b 74 6f 70 49 63 6f 6e 73 } //01 00  \DesktopIcons
		$a_00_14 = {5c 49 6e 73 74 61 6e 74 20 41 63 63 65 73 73 } //01 00  \Instant Access
		$a_00_15 = {61 62 6f 75 74 3a 62 6c 61 6e 6b } //01 00  about:blank
		$a_00_16 = {5c 6f 66 66 6c 69 6e 65 2e 68 74 6d } //01 00  \offline.htm
		$a_00_17 = {55 6e 61 62 6c 65 20 74 6f 20 6c 6f 61 64 20 64 69 61 6c 65 72 } //01 00  Unable to load dialer
		$a_00_18 = {61 73 6b 65 64 5f 62 69 6c 6c 69 6e 67 5f 69 64 } //01 00  asked_billing_id
		$a_00_19 = {72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 } //64 00  regsvr32.exe /s
		$a_00_20 = {69 6e 73 74 61 6e 74 20 61 63 63 65 73 73 2e 65 78 65 } //64 00  instant access.exe
		$a_02_21 = {6a 01 5f 50 8d 45 90 01 01 50 56 56 56 56 56 8d 85 90 01 02 ff ff 56 50 56 89 7d 90 01 01 66 89 90 01 02 ff 15 90 01 02 40 00 85 c0 75 12 57 56 8d 85 90 01 02 ff ff 56 50 56 56 ff 15 90 01 02 40 00 ff 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}