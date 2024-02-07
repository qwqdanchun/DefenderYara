
rule Backdoor_Win32_Qakbot_W{
	meta:
		description = "Backdoor:Win32/Qakbot.W,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {71 62 6f 74 5f 76 65 72 73 69 6f 6e 3d 5b 25 73 5d } //01 00  qbot_version=[%s]
		$a_01_1 = {00 5f 71 62 6f 74 00 } //01 00 
		$a_01_2 = {20 75 73 65 72 3d 5b 25 73 5d 20 70 61 73 73 3d 5b 25 73 5d } //01 00   user=[%s] pass=[%s]
		$a_01_3 = {65 78 74 5f 69 70 3d 5b 25 73 5d 20 } //01 00  ext_ip=[%s] 
		$a_01_4 = {64 6e 73 6e 61 6d 65 3d 5b 25 73 5d 20 } //01 00  dnsname=[%s] 
		$a_01_5 = {68 6f 73 74 6e 61 6d 65 3d 5b 25 73 5d 20 } //01 00  hostname=[%s] 
		$a_01_6 = {64 6f 6d 61 69 6e 3d 5b 25 73 5d 20 } //01 00  domain=[%s] 
		$a_01_7 = {69 73 5f 61 64 6d 69 6e 3d 5b 25 73 5d 20 } //01 00  is_admin=[%s] 
		$a_01_8 = {6f 73 3d 5b 25 73 5d 20 } //01 00  os=[%s] 
		$a_01_9 = {69 6e 73 74 61 6c 6c 5f 74 69 6d 65 3d 5b 25 73 5d 20 } //01 00  install_time=[%s] 
		$a_01_10 = {65 78 65 3d 5b 25 73 5d 20 } //01 00  exe=[%s] 
		$a_01_11 = {70 72 6f 64 5f 69 64 3d 5b 25 73 5d 20 } //01 00  prod_id=[%s] 
		$a_01_12 = {75 72 6c 3d 5b 25 73 5d 20 64 61 74 61 3d 5b 25 73 5d } //00 00  url=[%s] data=[%s]
		$a_00_13 = {7e 15 00 00 14 } //0f 47 
	condition:
		any of ($a_*)
 
}