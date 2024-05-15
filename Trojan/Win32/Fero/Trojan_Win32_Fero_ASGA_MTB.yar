
rule Trojan_Win32_Fero_ASGA_MTB{
	meta:
		description = "Trojan:Win32/Fero.ASGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 61 00 79 00 74 00 68 00 65 00 74 00 68 00 61 00 74 00 2e 00 6d 00 65 00 61 00 74 00 52 00 66 00 69 00 72 00 6d 00 61 00 6d 00 65 00 6e 00 74 00 } //01 00  daythethat.meatRfirmament
		$a_01_1 = {67 00 72 00 61 00 73 00 73 00 4a 00 66 00 69 00 72 00 6d 00 61 00 6d 00 65 00 6e 00 74 00 79 00 79 00 6f 00 75 00 2e 00 72 00 65 00 36 00 77 00 65 00 72 00 65 00 68 00 65 00 61 00 76 00 65 00 6e 00 64 00 61 00 79 00 66 00 69 00 72 00 6d 00 61 00 6d 00 65 00 6e 00 74 00 } //01 00  grassJfirmamentyyou.re6wereheavendayfirmament
		$a_01_2 = {71 00 71 00 67 00 69 00 76 00 65 00 6e 00 74 00 6c 00 61 00 6e 00 64 00 2e 00 62 00 58 00 66 00 6c 00 79 00 4f 00 } //01 00  qqgiventland.bXflyO
		$a_01_3 = {42 00 30 00 63 00 61 00 6e 00 2e 00 74 00 70 00 77 00 69 00 74 00 68 00 6f 00 75 00 74 00 35 00 74 00 77 00 6f 00 42 00 } //01 00  B0can.tpwithout5twoB
		$a_01_4 = {6c 00 6f 00 76 00 65 00 72 00 2e 00 46 00 6d 00 } //00 00  lover.Fm
	condition:
		any of ($a_*)
 
}