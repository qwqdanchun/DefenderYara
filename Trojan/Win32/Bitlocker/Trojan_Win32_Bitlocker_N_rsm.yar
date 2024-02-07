
rule Trojan_Win32_Bitlocker_N_rsm{
	meta:
		description = "Trojan:Win32/Bitlocker.N!rsm,SIGNATURE_TYPE_CMDHSTR_EXT,64 00 1e 00 03 00 00 0a 00 "
		
	strings :
		$a_00_0 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 46 00 56 00 45 00 } //0a 00  HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE
		$a_00_1 = {55 00 73 00 65 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //0a 00  UseAdvancedStartup
		$a_00_2 = {61 00 64 00 64 00 } //00 00  add
	condition:
		any of ($a_*)
 
}