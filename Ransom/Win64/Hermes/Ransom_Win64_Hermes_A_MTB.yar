
rule Ransom_Win64_Hermes_A_MTB{
	meta:
		description = "Ransom:Win64/Hermes.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 "
		
	strings :
		$a_01_0 = {6e 65 74 20 73 74 6f 70 } //2 net stop
		$a_01_1 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 20 2f 69 6d } //2 taskkill /f  /im
		$a_01_2 = {2f 00 43 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 2e 00 31 00 2e 00 31 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 31 00 20 00 2d 00 77 00 20 00 33 00 30 00 30 00 30 00 20 00 3e 00 20 00 4e 00 75 00 6c 00 20 00 26 00 20 00 44 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 20 00 22 00 25 00 73 00 22 00 } //2 /C ping 1.1.1.1 -n 1 -w 3000 > Nul & Del /f /q "%s"
		$a_01_3 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 20 00 61 00 6c 00 6c 00 20 00 2f 00 20 00 71 00 75 00 69 00 65 00 74 00 } //2 vssadmin delete shadows / all / quiet
		$a_01_4 = {77 00 6d 00 69 00 63 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 63 00 6f 00 70 00 79 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 26 00 20 00 62 00 63 00 64 00 65 00 64 00 69 00 74 00 20 00 2f 00 20 00 73 00 65 00 74 00 7b 00 20 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 20 00 7d 00 20 00 62 00 6f 00 6f 00 74 00 73 00 74 00 61 00 74 00 75 00 73 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 69 00 67 00 6e 00 6f 00 72 00 65 00 61 00 6c 00 6c 00 66 00 61 00 69 00 6c 00 75 00 72 00 65 00 73 00 } //2 wmic shadowcopy delete & bcdedit / set{ default } bootstatuspolicy ignoreallfailures
		$a_01_5 = {62 00 63 00 64 00 65 00 64 00 69 00 74 00 20 00 2f 00 20 00 73 00 65 00 74 00 7b 00 20 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 20 00 7d 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 6e 00 6f 00 } //2 bcdedit / set{ default } recoveryenabled no
		$a_01_6 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 63 00 61 00 74 00 61 00 6c 00 6f 00 67 00 20 00 2d 00 20 00 71 00 75 00 69 00 65 00 74 00 } //2 wbadmin delete catalog - quiet
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2) >=14
 
}