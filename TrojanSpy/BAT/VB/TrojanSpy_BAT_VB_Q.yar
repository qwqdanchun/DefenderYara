
rule TrojanSpy_BAT_VB_Q{
	meta:
		description = "TrojanSpy:BAT/VB.Q,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 42 00 61 00 63 00 6b 00 73 00 70 00 61 00 63 00 65 00 5d 00 } //01 00  [Backspace]
		$a_01_1 = {5c 00 6c 00 6f 00 67 00 67 00 69 00 6e 00 67 00 2e 00 74 00 78 00 74 00 } //01 00  \logging.txt
		$a_01_2 = {4b 42 44 4c 4c 48 4f 4f 4b 53 54 52 55 43 54 } //02 00  KBDLLHOOKSTRUCT
		$a_01_3 = {66 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 69 00 6b 00 65 00 3a 00 55 00 33 00 43 00 72 00 75 00 7a 00 65 00 72 00 4d 00 69 00 63 00 72 00 6f 00 40 00 6e 00 73 00 63 00 2e 00 6d 00 69 00 6e 00 65 00 2e 00 6e 00 75 00 2f 00 } //00 00  ftp://mike:U3CruzerMicro@nsc.mine.nu/
	condition:
		any of ($a_*)
 
}