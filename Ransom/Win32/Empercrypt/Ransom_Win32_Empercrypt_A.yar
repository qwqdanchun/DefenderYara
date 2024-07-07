
rule Ransom_Win32_Empercrypt_A{
	meta:
		description = "Ransom:Win32/Empercrypt.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 07 00 00 "
		
	strings :
		$a_01_0 = {73 63 68 74 61 73 6b 73 2e 65 78 65 20 2f 64 65 6c 65 74 65 20 2f 54 4e 20 75 61 63 20 2f 46 } //1 schtasks.exe /delete /TN uac /F
		$a_01_1 = {59 4f 55 52 20 50 45 52 53 4f 4e 41 4c 20 49 4e 46 4f 52 4d 41 54 49 4f 4e 20 41 52 45 20 45 4e 43 52 59 50 54 45 44 20 62 79 20 37 65 76 33 6e } //1 YOUR PERSONAL INFORMATION ARE ENCRYPTED by 7ev3n
		$a_01_2 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 63 75 72 72 65 6e 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 6f 66 66 } //1 bcdedit /set {current} recoveryenabled off
		$a_01_3 = {62 00 6c 00 6f 00 63 00 6b 00 63 00 68 00 61 00 69 00 6e 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 61 00 70 00 69 00 2f 00 72 00 65 00 63 00 65 00 69 00 76 00 65 00 3f 00 6d 00 65 00 74 00 68 00 6f 00 64 00 3d 00 63 00 72 00 65 00 61 00 74 00 65 00 26 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 3d 00 } //1 blockchain.info/api/receive?method=create&address=
		$a_01_4 = {46 00 49 00 4c 00 45 00 53 00 5f 00 42 00 41 00 43 00 4b 00 2e 00 74 00 78 00 74 00 } //1 FILES_BACK.txt
		$a_01_5 = {3f 00 53 00 53 00 54 00 41 00 52 00 54 00 3d 00 74 00 72 00 75 00 65 00 26 00 43 00 52 00 59 00 50 00 54 00 45 00 44 00 5f 00 44 00 41 00 54 00 41 00 3d 00 } //1 ?SSTART=true&CRYPTED_DATA=
		$a_01_6 = {66 00 67 00 61 00 74 00 65 00 2e 00 70 00 68 00 70 00 3f 00 52 00 49 00 47 00 48 00 54 00 53 00 3d 00 } //1 fgate.php?RIGHTS=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}