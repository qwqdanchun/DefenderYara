
rule Trojan_Win32_FormBook_V_MTB{
	meta:
		description = "Trojan:Win32/FormBook.V!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4b 00 64 00 72 00 32 00 54 00 37 00 31 00 4c 00 42 00 79 00 39 00 67 00 48 00 48 00 48 00 5a 00 45 00 46 00 79 00 6b 00 37 00 33 00 68 00 47 00 48 00 38 00 34 00 } //1 Kdr2T71LBy9gHHHZEFyk73hGH84
		$a_01_1 = {66 00 48 00 73 00 78 00 37 00 34 00 43 00 70 00 4a 00 50 00 4f 00 47 00 41 00 78 00 38 00 44 00 37 00 56 00 61 00 38 00 37 00 4c 00 74 00 31 00 69 00 53 00 6e 00 53 00 69 00 75 00 30 00 56 00 49 00 50 00 75 00 67 00 7a 00 55 00 79 00 6a 00 31 00 37 00 30 00 } //1 fHsx74CpJPOGAx8D7Va87Lt1iSnSiu0VIPugzUyj170
		$a_01_2 = {54 00 70 00 35 00 34 00 36 00 67 00 6e 00 52 00 58 00 64 00 67 00 6a 00 75 00 66 00 77 00 48 00 37 00 37 00 4a 00 4e 00 54 00 53 00 42 00 34 00 4a 00 46 00 73 00 34 00 66 00 52 00 31 00 65 00 73 00 6c 00 6f 00 4c 00 34 00 39 00 6f 00 53 00 31 00 38 00 38 00 } //1 Tp546gnRXdgjufwH77JNTSB4JFs4fR1esloL49oS188
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}