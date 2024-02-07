
rule Backdoor_Win32_Ryknos_gen_B{
	meta:
		description = "Backdoor:Win32/Ryknos.gen!B,SIGNATURE_TYPE_PEHSTR,0b 00 0a 00 0a 00 00 03 00 "
		
	strings :
		$a_01_0 = {eb 09 0f be 04 3e 31 d8 88 04 3e 89 f8 48 89 c7 7d } //02 00 
		$a_01_1 = {69 66 20 65 78 69 73 74 20 22 43 3a 5c 6d 79 61 70 70 2e 65 78 65 22 20 67 6f 74 6f } //01 00  if exist "C:\myapp.exe" goto
		$a_01_2 = {2c 67 7a 67 00 } //01 00 
		$a_01_3 = {25 73 20 22 25 73 22 20 25 73 20 } //02 00  %s "%s" %s 
		$a_01_4 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 73 65 74 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d } //01 00  netsh firewall set allowedprogram
		$a_01_5 = {3a 75 70 74 69 6d 65 } //01 00  :uptime
		$a_01_6 = {3a 64 65 6c 65 74 65 } //01 00  :delete
		$a_01_7 = {3a 65 78 65 63 75 74 65 } //01 00  :execute
		$a_01_8 = {31 39 32 2e 31 36 38 00 } //01 00  㤱⸲㘱8
		$a_01_9 = {50 52 49 56 4d 53 47 } //00 00  PRIVMSG
	condition:
		any of ($a_*)
 
}