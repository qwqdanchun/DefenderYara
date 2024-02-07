
rule Backdoor_Win32_Cyspetel_A{
	meta:
		description = "Backdoor:Win32/Cyspetel.A,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 04 00 00 03 00 "
		
	strings :
		$a_01_0 = {73 00 72 00 76 00 73 00 74 00 6f 00 70 00 3d 00 22 00 31 00 22 00 26 00 } //03 00  srvstop="1"&
		$a_01_1 = {53 00 74 00 61 00 74 00 75 00 73 00 20 00 75 00 70 00 64 00 61 00 74 00 65 00 64 00 20 00 66 00 6f 00 72 00 20 00 70 00 65 00 6e 00 64 00 69 00 6e 00 67 00 20 00 33 00 30 00 20 00 73 00 65 00 63 00 } //03 00  Status updated for pending 30 sec
		$a_01_2 = {63 00 3a 00 5c 00 73 00 76 00 63 00 65 00 78 00 2e 00 6c 00 6f 00 67 00 } //03 00  c:\svcex.log
		$a_01_3 = {5b 00 75 00 72 00 65 00 67 00 5d 00 3d 00 22 00 31 00 22 00 26 00 } //00 00  [ureg]="1"&
	condition:
		any of ($a_*)
 
}