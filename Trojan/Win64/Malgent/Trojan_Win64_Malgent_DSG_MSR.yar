
rule Trojan_Win64_Malgent_DSG_MSR{
	meta:
		description = "Trojan:Win64/Malgent.DSG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,ffffff90 01 ffffff90 01 04 00 00 64 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 4f 00 66 00 66 00 69 00 63 00 65 00 5c 00 4b 00 4d 00 53 00 41 00 75 00 74 00 6f 00 2e 00 64 00 6c 00 6c 00 } //64 00  Software\Microsoft\Office\KMSAuto.dll
		$a_00_1 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 68 00 6b 00 63 00 75 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 } //64 00  reg add hkcu\software\microsoft\windows\currentversion\run
		$a_01_2 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 4c 00 69 00 62 00 72 00 61 00 72 00 79 00 20 00 44 00 4c 00 4c 00 } //64 00  Windows System Library DLL
		$a_01_3 = {6d 00 6f 00 76 00 69 00 65 00 2e 00 79 00 6f 00 75 00 74 00 6f 00 62 00 6f 00 6f 00 2e 00 6b 00 72 00 6f 00 2e 00 6b 00 72 00 } //00 00  movie.youtoboo.kro.kr
	condition:
		any of ($a_*)
 
}