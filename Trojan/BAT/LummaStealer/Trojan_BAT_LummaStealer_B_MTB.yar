
rule Trojan_BAT_LummaStealer_B_MTB{
	meta:
		description = "Trojan:BAT/LummaStealer.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 74 00 6e 00 20 00 22 00 7b 00 30 00 7d 00 22 00 20 00 2f 00 74 00 72 00 20 00 22 00 7b 00 31 00 7d 00 22 00 20 00 2f 00 73 00 63 00 20 00 6d 00 69 00 6e 00 75 00 74 00 65 00 20 00 2f 00 6d 00 6f 00 20 00 31 00 } //02 00  /create /tn "{0}" /tr "{1}" /sc minute /mo 1
		$a_01_1 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 } //02 00  schtasks
		$a_01_2 = {2f 00 71 00 75 00 65 00 72 00 79 00 20 00 2f 00 74 00 6e 00 } //02 00  /query /tn
		$a_01_3 = {54 00 61 00 72 00 67 00 65 00 74 00 50 00 61 00 74 00 68 00 } //02 00  TargetPath
		$a_01_4 = {43 00 72 00 65 00 61 00 74 00 65 00 53 00 68 00 6f 00 72 00 74 00 63 00 75 00 74 00 } //00 00  CreateShortcut
	condition:
		any of ($a_*)
 
}