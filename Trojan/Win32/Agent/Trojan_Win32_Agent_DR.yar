
rule Trojan_Win32_Agent_DR{
	meta:
		description = "Trojan:Win32/Agent.DR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 5b 00 2d 00 4d 00 53 00 4e 00 2d 00 5d 00 5c 00 4d 00 73 00 6e 00 } //01 00  \Desktop\[-MSN-]\Msn
		$a_00_1 = {5c 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 2e 00 76 00 62 00 70 00 } //01 00  \VolumeControl.vbp
		$a_00_2 = {6d 79 66 6f 74 30 73 2e 69 66 72 61 6e 63 65 2e 63 6f 6d } //01 00  myfot0s.ifrance.com
		$a_02_3 = {56 6f 6c 75 6d 65 43 6f 6e 74 72 6f 6c 31 90 01 04 56 6f 6c 43 6f 6e 74 72 6f 6c 2e 56 6f 6c 75 6d 65 43 6f 6e 74 72 6f 6c 90 00 } //01 00 
		$a_00_4 = {6d 73 6e 6d 73 67 73 00 57 69 6e 64 6f 77 73 20 4c 69 76 65 20 4d 65 73 73 65 6e 67 65 72 00 00 50 72 6f 79 65 63 74 6f 31 } //01 00 
		$a_00_5 = {54 72 6f 63 61 72 45 6d 61 69 6c 73 53 65 6e 64 } //00 00  TrocarEmailsSend
	condition:
		any of ($a_*)
 
}