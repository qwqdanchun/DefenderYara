
rule Trojan_Win32_Ninunarch_T{
	meta:
		description = "Trojan:Win32/Ninunarch.T,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 68 00 65 00 63 00 6b 00 2d 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 2f 00 3f 00 67 00 75 00 69 00 64 00 3d 00 25 00 47 00 55 00 49 00 44 00 25 00 26 00 70 00 61 00 72 00 69 00 64 00 3d 00 25 00 50 00 41 00 52 00 49 00 44 00 25 00 26 00 78 00 6e 00 75 00 6d 00 3d 00 25 00 58 00 4e 00 55 00 4d 00 25 00 26 00 78 00 69 00 64 00 3d 00 25 00 58 00 49 00 44 00 } //01 00  check-updates/?guid=%GUID%&parid=%PARID%&xnum=%XNUM%&xid=%XID
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 76 00 61 00 6d 00 7a 00 69 00 70 00 70 00 65 00 72 00 } //01 00  Software\vamzipper
		$a_01_2 = {70 00 72 00 65 00 76 00 65 00 64 00 68 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  prevedhacker
		$a_01_3 = {37 00 45 00 30 00 46 00 33 00 46 00 31 00 30 00 2d 00 37 00 42 00 36 00 39 00 2d 00 38 00 43 00 32 00 31 00 } //01 00  7E0F3F10-7B69-8C21
		$a_01_4 = {61 00 75 00 74 00 6f 00 73 00 74 00 61 00 72 00 5f 00 31 00 39 00 31 00 37 00 } //01 00  autostar_1917
		$a_01_5 = {26 00 6e 00 6f 00 6d 00 65 00 72 00 3d 00 75 00 6e 00 64 00 65 00 66 00 69 00 6e 00 65 00 64 00 5f 00 69 00 6e 00 5f 00 73 00 6d 00 73 00 5f 00 6d 00 6f 00 64 00 65 00 26 00 70 00 61 00 72 00 61 00 6d 00 3d 00 25 00 50 00 41 00 52 00 41 00 4d 00 25 00 } //01 00  &nomer=undefined_in_sms_mode&param=%PARAM%
		$a_01_6 = {61 00 72 00 63 00 68 00 69 00 76 00 65 00 2d 00 73 00 78 00 2e 00 6e 00 65 00 74 00 2f 00 70 00 61 00 73 00 73 00 5f 00 63 00 68 00 65 00 63 00 6b 00 } //00 00  archive-sx.net/pass_check
	condition:
		any of ($a_*)
 
}