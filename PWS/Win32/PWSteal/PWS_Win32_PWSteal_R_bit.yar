
rule PWS_Win32_PWSteal_R_bit{
	meta:
		description = "PWS:Win32/PWSteal.R!bit,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 69 00 6e 00 73 00 } //1 Coins
		$a_01_1 = {5b 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 6d 00 73 00 5d 00 } //1 [Programms]
		$a_01_2 = {50 61 73 73 77 6f 72 64 73 2e 74 78 74 } //1 Passwords.txt
		$a_01_3 = {72 65 70 6f 72 74 64 61 74 61 3d 3c 69 6e 66 6f } //1 reportdata=<info
		$a_01_4 = {48 00 41 00 52 00 44 00 57 00 41 00 52 00 45 00 5c 00 44 00 45 00 53 00 43 00 52 00 49 00 50 00 54 00 49 00 4f 00 4e 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 43 00 65 00 6e 00 74 00 72 00 61 00 6c 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 5c 00 30 00 } //1 HARDWARE\DESCRIPTION\System\CentralProcessor\0
		$a_03_5 = {83 ef 08 8b cf 8b 5d ?? d3 eb 8b cf b8 01 00 00 00 d3 e0 50 8b 45 ?? 5a 8b ca 99 f7 f9 89 55 } //2
		$a_03_6 = {46 81 e6 ff 00 00 00 03 84 b5 ?? ?? ?? ?? 25 ff 00 00 00 8a 9c b5 ?? ?? ?? ?? 88 5d ?? 8b 9c 85 ?? ?? ?? ?? 89 9c b5 ?? ?? ?? ?? 33 db 8a 5d ?? 89 9c 85 ?? ?? ?? ?? 8b 9c b5 ?? ?? ?? ?? 03 9c 85 ?? ?? ?? ?? 81 e3 ff 00 00 00 8a 9c 9d ?? ?? ?? ?? 30 19 41 4a 75 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*2+(#a_03_6  & 1)*2) >=7
 
}