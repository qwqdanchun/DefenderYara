
rule HackTool_Win32_Uflooder_A_bit{
	meta:
		description = "HackTool:Win32/Uflooder.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 00 43 00 4d 00 50 00 20 00 46 00 6c 00 6f 00 6f 00 64 00 } //01 00  ICMP Flood
		$a_01_1 = {55 00 44 00 50 00 20 00 46 00 6c 00 6f 00 6f 00 64 00 } //01 00  UDP Flood
		$a_01_2 = {54 00 43 00 50 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 } //01 00  TCP Attack
		$a_01_3 = {54 00 43 00 50 00 20 00 4d 00 75 00 6c 00 74 00 69 00 70 00 6c 00 65 00 20 00 44 00 44 00 6f 00 53 00 } //01 00  TCP Multiple DDoS
		$a_01_4 = {55 00 44 00 50 00 20 00 4d 00 75 00 6c 00 74 00 69 00 70 00 6c 00 65 00 20 00 44 00 44 00 6f 00 53 00 } //01 00  UDP Multiple DDoS
		$a_01_5 = {52 00 61 00 6e 00 64 00 6f 00 6d 00 20 00 43 00 43 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 } //00 00  Random CC Attack
		$a_00_6 = {5d 04 00 } //00 56 
	condition:
		any of ($a_*)
 
}