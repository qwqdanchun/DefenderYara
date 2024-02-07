
rule Ransom_Win64_Cactus_PB_MTB{
	meta:
		description = "Ransom:Win64/Cactus.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 04 00 "
		
	strings :
		$a_01_0 = {63 00 41 00 63 00 54 00 75 00 53 00 2e 00 72 00 65 00 61 00 64 00 6d 00 65 00 2e 00 74 00 78 00 74 00 } //01 00  cAcTuS.readme.txt
		$a_01_1 = {61 00 63 00 63 00 65 00 73 00 73 00 65 00 64 00 20 00 61 00 6e 00 64 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 } //01 00  accessed and encrypted by
		$a_01_2 = {62 00 34 00 6b 00 72 00 2d 00 78 00 72 00 37 00 68 00 2d 00 71 00 63 00 70 00 73 00 2d 00 6f 00 6d 00 75 00 33 00 } //01 00  b4kr-xr7h-qcps-omu3
		$a_01_3 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 73 00 63 00 20 00 4d 00 49 00 4e 00 55 00 54 00 45 00 20 00 2f 00 6d 00 6f 00 20 00 35 00 20 00 2f 00 72 00 6c 00 20 00 48 00 49 00 47 00 48 00 45 00 53 00 54 00 } //00 00  schtasks.exe /create /sc MINUTE /mo 5 /rl HIGHEST
	condition:
		any of ($a_*)
 
}