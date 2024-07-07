
rule Trojan_Win32_Tookibe_A{
	meta:
		description = "Trojan:Win32/Tookibe.A,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 09 00 00 "
		
	strings :
		$a_03_0 = {b9 04 00 02 80 89 45 dc 89 45 cc 89 45 bc 89 45 8c 89 4d a4 b8 0a 00 00 00 89 4d b4 bf 08 00 00 00 8d 95 7c ff ff ff 8d 4d bc 89 45 9c 89 45 ac c7 45 84 90 01 04 89 bd 7c ff ff ff ff d6 90 00 } //5
		$a_03_1 = {6a ff 68 00 00 b4 44 68 00 00 87 45 68 00 00 b4 44 52 50 ff 15 90 01 04 50 56 ff 93 8c 07 00 00 90 00 } //5
		$a_01_2 = {73 00 65 00 6e 00 64 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 00 00 } //1
		$a_01_3 = {73 00 6d 00 74 00 70 00 75 00 73 00 65 00 73 00 73 00 6c 00 00 00 } //1
		$a_01_4 = {46 74 70 46 69 6e 64 46 69 72 73 74 46 69 6c 65 41 00 } //1 瑆䙰湩䙤物瑳楆敬A
		$a_01_5 = {33 00 32 00 5c 00 64 00 65 00 61 00 64 00 31 00 33 00 2e 00 64 00 61 00 74 00 00 00 } //1
		$a_01_6 = {33 00 32 00 5c 00 64 00 65 00 61 00 64 00 31 00 34 00 2e 00 64 00 61 00 74 00 00 00 } //1
		$a_01_7 = {61 00 64 00 6f 00 6c 00 69 00 76 00 72 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 6a 00 6d 00 73 00 2f 00 6d 00 6c 00 62 00 2f 00 73 00 65 00 63 00 75 00 72 00 65 00 4c 00 6f 00 67 00 69 00 6e 00 00 00 } //1
		$a_01_8 = {63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 4c 00 6f 00 67 00 69 00 6e 00 3f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 3d 00 6f 00 72 00 6b 00 75 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=17
 
}