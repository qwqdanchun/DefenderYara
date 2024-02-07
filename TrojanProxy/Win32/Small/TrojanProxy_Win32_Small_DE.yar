
rule TrojanProxy_Win32_Small_DE{
	meta:
		description = "TrojanProxy:Win32/Small.DE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {78 67 66 21 26 74 21 26 6d 79 21 29 26 6d 76 21 30 21 26 6d 76 2a } //01 00  xgf!&t!&my!)&mv!0!&mv*
		$a_01_1 = {5d 53 66 68 6a 74 75 73 7a 5d 4e 62 64 69 6a 6f 66 5d 54 7a 74 75 66 6e 5d 44 76 73 73 66 6f 75 44 70 6f 75 73 70 6d 54 66 75 5d 54 66 73 77 6a 64 66 74 5d 26 74 } //01 00  ]Sfhjtusz]Nbdijof]Tztufn]DvssfouDpouspmTfu]Tfswjdft]&t
		$a_01_2 = {25 25 25 25 25 4a 45 49 4d 45 53 25 25 25 25 25 } //01 00  %%%%%JEIMES%%%%%
		$a_01_3 = {6d 65 73 60 70 71 01 01 5d 5d 2f 5d 74 69 65 01 01 01 01 01 5d 5d 2f 5d 48 6d 70 63 62 6d 5d 74 } //01 00  敭恳煰ā嵝崯楴ťāā嵝崯浈捰浢瑝
		$a_01_4 = {5d 65 73 6a 77 66 73 74 5d 6f 65 6a 74 2f 74 7a 74 01 } //01 00  敝橳晷瑳潝橥⽴穴Ŵ
		$a_01_5 = {6c 64 70 65 66 2f 74 7a 74 01 } //01 00  摬数⽦穴Ŵ
		$a_01_6 = {64 3b 5d 6f 75 6d 65 73 2f 74 7a 74 01 } //01 00 
		$a_01_7 = {6d 65 73 60 6d 65 20 26 6d 79 } //01 00  mes`me &my
		$a_01_8 = {64 3b 5d 67 78 65 73 77 2f 74 7a 74 01 } //00 00 
	condition:
		any of ($a_*)
 
}