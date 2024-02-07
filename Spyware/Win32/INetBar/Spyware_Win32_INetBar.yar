
rule Spyware_Win32_INetBar{
	meta:
		description = "Spyware:Win32/INetBar,SIGNATURE_TYPE_PEHSTR,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 6d 6d 61 6e 64 65 72 20 54 6f 6f 6c 62 61 72 } //01 00  Commander Toolbar
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 00 49 45 54 42 } //01 00  体呆䅗䕒䵜捩潲潳瑦坜湩潤獷䍜牵敲瑮敖獲潩屮湕湩瑳污l䕉䉔
		$a_01_2 = {43 6f 6d 6d 61 6e 64 65 72 20 49 45 20 54 6f 6f 6c 62 61 72 5c 56 69 73 69 74 65 64 50 6f 70 75 70 73 } //01 00  Commander IE Toolbar\VisitedPopups
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 64 69 72 65 63 74 2d 69 70 2e 63 6f 6d 2f } //01 00  http://www.direct-ip.com/
		$a_01_4 = {7b 36 35 39 36 38 32 39 42 2d 33 37 44 34 2d 34 30 61 64 2d 39 37 31 42 2d 31 45 39 30 34 31 37 32 35 43 35 32 7d } //01 00  {6596829B-37D4-40ad-971B-1E9041725C52}
		$a_01_5 = {69 65 74 62 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //00 00  敩扴搮汬䐀汬慃啮汮慯乤睯
	condition:
		any of ($a_*)
 
}