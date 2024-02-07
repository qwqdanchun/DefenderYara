
rule Worm_Win32_SillyFDC{
	meta:
		description = "Worm:Win32/SillyFDC,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 4d 20 4e 4f 54 20 54 48 45 20 4f 4e 4c 59 20 4f 4e 45 } //02 00  IM NOT THE ONLY ONE
		$a_01_1 = {25 63 3a 00 63 6f 70 79 5f 72 65 6d 6f 76 61 62 6c 65 3a 20 63 61 6e 6e 6f 74 20 67 65 74 20 76 6f 6c 75 6d 65 20 69 6e 66 6f 0a 00 25 75 2d 25 73 00 25 73 5c 6b 72 61 67 } //02 00 
		$a_01_2 = {64 6f 6e 65 00 6b 72 61 67 64 6f 72 2e 6c 6f 67 00 66 6f 75 6e 64 5f 72 65 6d 6f 76 61 62 6c 65 21 00 43 4f 50 59 49 4e 47 00 00 5c 6b 72 61 67 2e 65 78 65 } //02 00  潤敮欀慲摧牯氮杯昀畯摮牟浥癯扡敬!佃奐义G尀牫条攮數
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 6b 72 61 67 00 25 63 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 00 5b 41 75 74 6f 52 75 6e 5d } //00 00  体呆䅗䕒䵜捩潲潳瑦坜湩潤獷䍜牵敲瑮敖獲潩屮畒n牫条─㩣慜瑵牯湵椮普嬀畁潴畒嵮
	condition:
		any of ($a_*)
 
}
rule Worm_Win32_SillyFDC_2{
	meta:
		description = "Worm:Win32/SillyFDC,SIGNATURE_TYPE_PEHSTR,08 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 73 6d 69 63 72 63 6f 2e 73 63 72 00 00 00 00 25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 73 79 73 74 65 6d 33 32 } //02 00 
		$a_01_1 = {77 77 77 2e 68 6f 74 73 77 6f 72 64 2e 63 6f 6d 2f 66 61 73 6f 6f 2e 65 78 65 } //01 00  www.hotsword.com/fasoo.exe
		$a_01_2 = {5c 61 75 74 6f 72 75 6e 20 2e 69 6e 66 } //01 00  \autorun .inf
		$a_01_3 = {5b 41 75 74 6f 52 75 6e 5d } //01 00  [AutoRun]
		$a_01_4 = {73 68 65 6c 6c 5c 41 75 74 6f 5c 63 6f 6d 6d 61 6e 64 3d } //01 00  shell\Auto\command=
		$a_01_5 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d } //00 00  shellexecute=
	condition:
		any of ($a_*)
 
}