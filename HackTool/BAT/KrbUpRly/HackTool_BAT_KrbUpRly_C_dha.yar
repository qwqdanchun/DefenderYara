
rule HackTool_BAT_KrbUpRly_C_dha{
	meta:
		description = "HackTool:BAT/KrbUpRly.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {4c 00 6d 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  LmPassword
		$a_00_1 = {4e 00 74 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  NtPassword
		$a_00_2 = {43 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 73 00 } //01 00  Credentials
		$a_00_3 = {43 00 6f 00 75 00 6c 00 64 00 20 00 6e 00 6f 00 74 00 20 00 65 00 6c 00 65 00 76 00 61 00 74 00 65 00 20 00 74 00 6f 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  Could not elevate to system
		$a_00_4 = {28 00 26 00 28 00 6f 00 62 00 6a 00 65 00 63 00 74 00 43 00 6c 00 61 00 73 00 73 00 3d 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 29 00 28 00 73 00 41 00 4d 00 41 00 63 00 63 00 6f 00 75 00 6e 00 74 00 4e 00 61 00 6d 00 65 00 3d 00 } //01 00  (&(objectClass=computer)(sAMAccountName=
		$a_01_5 = {44 6f 6d 61 69 6e 43 6f 6e 74 72 6f 6c 6c 65 72 4e 61 6d 65 } //01 00  DomainControllerName
		$a_01_6 = {50 41 43 5f 57 41 53 5f 52 45 51 55 45 53 54 45 44 } //03 00  PAC_WAS_REQUESTED
		$a_00_7 = {6b 72 62 72 65 6c 61 79 75 70 } //00 00  krbrelayup
	condition:
		any of ($a_*)
 
}