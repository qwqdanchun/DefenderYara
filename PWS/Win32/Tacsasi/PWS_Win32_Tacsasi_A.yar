
rule PWS_Win32_Tacsasi_A{
	meta:
		description = "PWS:Win32/Tacsasi.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {fb 12 fc 0d 6c 6c ff 80 0c 00 fc a0 6c 6c ff 6c 5c ff e0 1c } //01 00 
		$a_00_1 = {3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 61 00 64 00 64 00 26 00 61 00 3d 00 } //01 00  ?action=add&a=
		$a_00_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 73 00 73 00 } //01 00  cmd.exe /c net stop SharedAccess
		$a_00_3 = {64 00 72 00 6f 00 77 00 73 00 73 00 61 00 50 00 5c 00 43 00 55 00 44 00 5c 00 73 00 6b 00 72 00 65 00 77 00 6c 00 61 00 74 00 69 00 56 00 5c 00 45 00 52 00 41 00 57 00 54 00 46 00 4f 00 53 00 5c 00 45 00 4e 00 49 00 48 00 43 00 41 00 4d 00 5f 00 4c 00 41 00 43 00 4f 00 4c 00 5f 00 59 00 45 00 4b 00 48 00 } //00 00  drowssaP\CUD\skrewlatiV\ERAWTFOS\ENIHCAM_LACOL_YEKH
	condition:
		any of ($a_*)
 
}