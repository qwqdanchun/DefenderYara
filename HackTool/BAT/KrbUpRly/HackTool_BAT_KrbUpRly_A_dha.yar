
rule HackTool_BAT_KrbUpRly_A_dha{
	meta:
		description = "HackTool:BAT/KrbUpRly.A!dha,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 2d 00 5d 00 20 00 43 00 6f 00 75 00 6c 00 64 00 20 00 6e 00 6f 00 74 00 20 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 20 00 74 00 6f 00 20 00 7b 00 30 00 7d 00 2e 00 20 00 6c 00 64 00 61 00 70 00 5f 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 20 00 66 00 61 00 69 00 6c 00 65 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 65 00 72 00 72 00 6f 00 72 00 20 00 63 00 6f 00 64 00 65 00 20 00 30 00 78 00 7b 00 31 00 7d 00 } //01 00  [-] Could not connect to {0}. ldap_connect failed with error code 0x{1}
		$a_01_1 = {5b 00 2b 00 5d 00 20 00 47 00 6f 00 74 00 20 00 4b 00 72 00 62 00 20 00 41 00 75 00 74 00 68 00 20 00 66 00 72 00 6f 00 6d 00 20 00 4e 00 54 00 2f 00 53 00 59 00 53 00 54 00 45 00 4d 00 2e 00 20 00 52 00 65 00 6c 00 79 00 69 00 6e 00 67 00 20 00 74 00 6f 00 20 00 4c 00 44 00 41 00 50 00 20 00 6e 00 6f 00 77 00 2e 00 2e 00 2e 00 } //01 00  [+] Got Krb Auth from NT/SYSTEM. Relying to LDAP now...
		$a_01_2 = {5b 00 2b 00 5d 00 20 00 52 00 65 00 77 00 72 00 69 00 74 00 69 00 6e 00 67 00 20 00 66 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 20 00 74 00 61 00 62 00 6c 00 65 00 } //01 00  [+] Rewriting function table
		$a_01_3 = {5b 00 2d 00 5d 00 20 00 52 00 65 00 63 00 69 00 65 00 76 00 65 00 64 00 20 00 69 00 6e 00 76 00 61 00 6c 00 69 00 64 00 20 00 61 00 70 00 52 00 65 00 71 00 2c 00 20 00 65 00 78 00 70 00 6c 00 6f 00 69 00 74 00 20 00 77 00 69 00 6c 00 6c 00 20 00 66 00 61 00 69 00 6c 00 } //01 00  [-] Recieved invalid apReq, exploit will fail
		$a_01_4 = {5b 00 2b 00 5d 00 20 00 52 00 75 00 6e 00 20 00 74 00 68 00 65 00 20 00 73 00 70 00 61 00 77 00 6e 00 20 00 6d 00 65 00 74 00 68 00 6f 00 64 00 20 00 66 00 6f 00 72 00 20 00 53 00 59 00 53 00 54 00 45 00 4d 00 20 00 73 00 68 00 65 00 6c 00 6c 00 3a 00 } //00 00  [+] Run the spawn method for SYSTEM shell:
	condition:
		any of ($a_*)
 
}