
rule TrojanDownloader_O97M_Qakbot_DOLQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.DOLQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 68 65 65 74 73 28 22 46 69 6b 6f 70 22 29 2e 52 61 6e 67 65 28 22 49 39 22 29 20 3d 20 6e 65 74 20 26 20 22 6c 22 20 26 20 6e 65 74 31 } //1 Sheets("Fikop").Range("I9") = net & "l" & net1
		$a_01_1 = {53 68 65 65 74 73 28 22 46 69 6b 6f 70 22 29 2e 52 61 6e 67 65 28 22 4b 31 38 22 29 20 3d 20 22 2e 64 } //1 Sheets("Fikop").Range("K18") = ".d
		$a_01_2 = {53 68 65 65 74 73 28 22 46 69 6b 6f 70 22 29 2e 52 61 6e 67 65 28 22 4b 31 37 22 29 20 3d 20 22 3d 4e } //1 Sheets("Fikop").Range("K17") = "=N
		$a_01_3 = {53 68 65 65 74 73 28 22 46 69 6b 6f 70 22 29 2e 52 61 6e 67 65 28 22 49 31 30 22 29 20 3d 20 22 55 22 20 26 20 22 52 22 20 26 20 22 4c 22 20 26 20 22 44 22 20 26 20 22 6f 22 20 26 20 22 77 22 20 26 20 22 6e 22 20 26 20 22 6c 22 20 26 20 22 6f 22 20 26 20 22 61 22 20 26 20 22 64 22 20 26 20 22 54 22 20 26 20 22 6f 22 20 26 20 22 46 22 20 26 20 22 69 22 20 26 20 22 6c 22 20 26 20 22 65 22 20 26 20 22 41 } //1 Sheets("Fikop").Range("I10") = "U" & "R" & "L" & "D" & "o" & "w" & "n" & "l" & "o" & "a" & "d" & "T" & "o" & "F" & "i" & "l" & "e" & "A
		$a_01_4 = {53 68 65 65 74 73 28 22 46 69 6b 6f 70 22 29 2e 52 61 6e 67 65 28 22 49 31 30 22 29 20 3d 20 22 55 22 20 2b 20 22 52 22 20 2b 20 22 4c 22 20 2b 20 22 44 22 20 2b 20 22 6f 22 20 2b 20 22 77 22 20 2b 20 22 6e 22 20 2b 20 22 6c 22 20 2b 20 22 6f 22 20 2b 20 22 61 22 20 2b 20 22 64 22 20 2b 20 22 54 22 20 2b 20 22 6f 22 20 2b 20 22 46 22 20 2b 20 22 69 22 20 2b 20 22 6c 22 20 2b 20 22 65 22 20 2b 20 22 41 } //1 Sheets("Fikop").Range("I10") = "U" + "R" + "L" + "D" + "o" + "w" + "n" + "l" + "o" + "a" + "d" + "T" + "o" + "F" + "i" + "l" + "e" + "A
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}