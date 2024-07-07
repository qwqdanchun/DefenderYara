
rule Trojan_Win32_Emold_gen_A{
	meta:
		description = "Trojan:Win32/Emold.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 07 00 0c 00 00 "
		
	strings :
		$a_01_0 = {31 6f 61 64 4c 69 62 72 61 72 79 41 00 } //1
		$a_01_1 = {4e 4f 54 45 50 41 44 2e 45 58 45 00 45 6e 74 65 72 20 74 65 78 74 20 68 65 72 65 2e 2e 2e 00 53 65 74 20 54 65 78 74 2e 00 } //1
		$a_01_2 = {45 6e 74 65 72 20 74 65 78 74 20 68 65 72 65 2e 2e 2e 00 4e 4f 54 45 50 41 44 2e 45 58 45 00 53 65 74 20 54 65 78 74 2e 00 } //1
		$a_01_3 = {57 4e 44 43 4c 41 53 53 58 45 4d 4f 54 49 4f 4e 53 00 } //2 乗䍄䅌卓䕘位䥔乏S
		$a_01_4 = {57 4e 44 43 4c 41 53 53 58 45 4d 4f 52 45 53 00 } //2 乗䍄䅌卓䕘位䕒S
		$a_01_5 = {2f 6c 64 2e 70 68 70 3f 76 3d 31 26 } //2 /ld.php?v=1&
		$a_01_6 = {77 69 6e 73 74 61 30 5c 64 65 66 61 75 6c 74 00 } //1 楷獮慴尰敤慦汵t
		$a_01_7 = {57 4e 44 43 4c 41 53 53 58 46 49 4e 44 45 52 58 58 00 } //2 乗䍄䅌卓䙘义䕄塒X
		$a_00_8 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 55 70 6c 6f 61 64 22 } //1 Content-Disposition: form-data; name="Upload"
		$a_00_9 = {5c 65 6d 61 69 6c 73 2e 64 61 74 00 } //1
		$a_00_10 = {75 70 6c 64 2e 70 68 70 00 } //1
		$a_03_11 = {28 07 30 07 47 e2 f9 eb 90 09 0a 00 bf 90 01 04 b9 90 01 02 00 00 90 00 } //3
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*2+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_03_11  & 1)*3) >=7
 
}