
rule Trojan_Win32_Kilim_H{
	meta:
		description = "Trojan:Win32/Kilim.H,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 6f 6c 6f 74 6f 66 63 75 2e 63 6f 6d 2f 6d 79 2e 74 78 74 } //02 00  molotofcu.com/my.txt
		$a_01_1 = {70 72 6f 66 6f 6e 69 78 75 73 65 72 2e 6e 65 74 2f 70 72 6f 66 6f 6e 69 78 2e 74 78 74 } //02 00  profonixuser.net/profonix.txt
		$a_01_2 = {53 6d 61 72 74 20 50 6c 61 79 65 72 20 49 6e 73 74 61 6c 6c 65 72 2e 65 78 65 0a 4e 61 6d 65 5f 53 74 61 72 74 20 3d 20 6e 65 74 75 70 64 61 74 65 41 64 62 } //02 00  浓牡⁴汐祡牥䤠獮慴汬牥攮數上浡彥瑓牡⁴‽敮畴摰瑡䅥扤
		$a_01_3 = {70 70 3d 37 62 30 64 30 61 32 30 32 30 32 30 32 32 36 35 37 38 37 34 36 35 36 65 37 33 36 39 36 66 36 65 37 33 32 32 33 61 32 30 37 62 30 64 30 61 32 30 32 30 32 30 32 30 32 30 32 30 32 32 37 33 36 35 37 34 37 34 36 39 36 65 36 37 37 33 } //02 00  pp=7b0d0a20202022657874656e73696f6e73223a207b0d0a2020202020202273657474696e6773
		$a_01_4 = {64 6f 44 65 6c 65 74 65 55 70 64 61 74 65 3a 0a 7b 0a 50 72 6f 63 65 73 73 2c 20 43 6c 6f 73 65 2c 20 47 6f 6f 67 6c 65 55 70 64 61 74 65 2e 65 78 65 0a 46 69 6c 65 44 65 6c 65 74 65 2c } //01 00 
		$a_01_5 = {36 34 35 37 37 32 36 39 37 34 36 35 32 32 32 63 32 30 32 32 36 33 36 66 36 65 37 34 36 35 36 65 37 34 35 33 36 35 37 34 37 34 } //01 00  645772697465222c2022636f6e74656e7453657474
		$a_01_6 = {73 6f 73 79 61 6c 6d 65 64 79 61 6b 75 73 75 2e 63 6f 6d } //01 00  sosyalmedyakusu.com
		$a_01_7 = {25 41 5f 54 65 6d 70 25 5c 78 75 70 64 61 74 65 2e 65 78 65 } //00 00  %A_Temp%\xupdate.exe
		$a_00_8 = {e7 51 } //00 00 
	condition:
		any of ($a_*)
 
}