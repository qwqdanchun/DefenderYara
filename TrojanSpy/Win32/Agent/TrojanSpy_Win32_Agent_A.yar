
rule TrojanSpy_Win32_Agent_A{
	meta:
		description = "TrojanSpy:Win32/Agent.A,SIGNATURE_TYPE_PEHSTR,29 00 29 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_01_1 = {5c 00 67 00 65 00 74 00 70 00 61 00 73 00 73 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //0a 00  \getpasses.exe
		$a_01_2 = {2d 00 4d 00 65 00 73 00 73 00 65 00 6e 00 67 00 65 00 72 00 70 00 61 00 73 00 73 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //0a 00  -Messengerpasses.txt
		$a_01_3 = {5c 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 53 00 74 00 65 00 61 00 6c 00 30 00 72 00 27 00 73 00 5c 00 4d 00 65 00 73 00 73 00 65 00 6e 00 67 00 65 00 72 00 20 00 53 00 74 00 65 00 61 00 6c 00 30 00 72 00 } //01 00  \Administrator\Desktop\Steal0r's\Messenger Steal0r
		$a_01_4 = {66 72 6d 5f 4d 61 69 6e } //01 00  frm_Main
		$a_01_5 = {5c 00 70 00 61 00 73 00 73 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //00 00  \passes.txt
	condition:
		any of ($a_*)
 
}