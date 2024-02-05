
rule Backdoor_Win32_Cozer_A_dha{
	meta:
		description = "Backdoor:Win32/Cozer.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0f 00 00 01 00 "
		
	strings :
		$a_80_0 = {74 61 73 6b 5f 69 64 00 } //task_id  01 00 
		$a_80_1 = {74 61 73 6b 5f 64 61 74 61 00 } //task_data  01 00 
		$a_80_2 = {6b 65 79 5f 69 64 00 } //key_id  01 00 
		$a_80_3 = {62 6f 74 5f 69 64 00 } //bot_id  01 00 
		$a_80_4 = {73 6c 65 65 70 5f 74 69 6d 65 00 } //sleep_time  01 00 
		$a_80_5 = {68 6f 73 74 5f 73 63 72 69 70 74 73 00 } //host_scripts  01 00 
		$a_80_6 = {65 78 74 5f 69 70 00 } //ext_ip  01 00 
		$a_80_7 = {73 65 74 5f 75 70 64 61 74 65 5f 69 6e 74 65 72 76 61 6c 00 } //set_update_interval  01 00 
		$a_80_8 = {63 75 72 72 65 6e 74 5f 74 72 61 6e 73 70 6f 72 74 00 } //current_transport  01 00 
		$a_80_9 = {6f 6e 63 6c 69 63 6b 3d 22 41 63 63 65 70 74 28 29 3b 22 } //onclick="Accept();"  01 00 
		$a_80_10 = {46 69 6c 65 20 7b 30 7d 20 68 61 73 20 62 65 65 6e 20 75 70 6c 6f 61 64 65 64 } //File {0} has been uploaded  01 00 
		$a_80_11 = {46 69 6c 65 20 7b 30 7d 20 68 61 73 20 62 65 65 6e 20 64 6f 77 6e 6c 6f 61 64 65 64 } //File {0} has been downloaded  01 00 
		$a_80_12 = {50 72 6f 63 65 73 73 20 28 70 69 64 3a 7b 31 7d 29 20 7b 30 7d 20 68 61 73 20 62 65 65 6e 20 73 74 61 72 74 65 64 } //Process (pid:{1}) {0} has been started  02 00 
		$a_80_13 = {68 72 65 66 5c 73 2a 3d 5c 73 2a 28 3f 3a 5b 22 27 5d 28 3f 3c 31 3e 5b 5e 22 27 5d 2a 29 5b 22 27 5d 7c 28 3f 3c 31 3e 5c 53 2b 29 29 } //href\s*=\s*(?:["'](?<1>[^"']*)["']|(?<1>\S+))  02 00 
		$a_80_14 = {5e 28 3f 3a 5b 30 2d 39 5d 7b 31 2c 33 7d 5c 2e 29 7b 33 7d 5b 30 2d 39 5d 7b 31 2c 33 7d 24 } //^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$  00 00 
	condition:
		any of ($a_*)
 
}