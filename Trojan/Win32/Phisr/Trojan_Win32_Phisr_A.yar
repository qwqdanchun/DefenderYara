
rule Trojan_Win32_Phisr_A{
	meta:
		description = "Trojan:Win32/Phisr.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_03_0 = {5b 50 49 44 20 25 64 20 28 25 73 29 5d 90 02 05 41 44 44 52 20 25 70 3a 20 22 25 73 22 90 02 06 5b 45 4f 46 5d 90 00 } //3
		$a_03_1 = {2e 70 68 70 90 02 05 50 43 52 45 5f 45 52 52 4f 52 90 02 05 64 65 66 61 75 6c 74 90 02 05 25 90 00 } //3
		$a_03_2 = {50 4f 53 54 90 02 05 68 74 74 70 73 90 02 05 25 73 90 02 05 68 74 74 70 3a 2f 2f 90 00 } //3
		$a_01_3 = {28 28 28 5b 34 7c 35 5d 5b 30 2d 39 5d 7b 31 35 7d 29 7c 28 5b 33 7c 36 5d 28 5b 30 2d 39 5d 29 7b 31 34 7d 29 29 5b 44 3d 5d 28 3f 3a 30 28 5b 37 2d 39 5d 29 7c 28 5b 31 2d 34 5d 5b 30 2d 39 5d 29 29 } //1 ((([4|5][0-9]{15})|([3|6]([0-9]){14}))[D=](?:0([7-9])|([1-4][0-9]))
		$a_01_4 = {28 28 5b 30 2d 39 5d 5c 30 3f 29 7b 31 35 2c 31 36 7d 5b 44 3d 5d 5c 30 3f 28 3f 3a 30 5c 30 3f 28 5b 37 2d 39 5d 5c 30 3f 29 7c 28 5b 31 2d 34 5d 5c 30 3f 5b 30 2d 39 5d 5c 30 3f 29 29 } //1 (([0-9]\0?){15,16}[D=]\0?(?:0\0?([7-9]\0?)|([1-4]\0?[0-9]\0?))
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_03_2  & 1)*3+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=10
 
}