
rule Trojan_Win32_StealerC_SPGA_MTB{
	meta:
		description = "Trojan:Win32/StealerC.SPGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {7a 00 69 00 74 00 75 00 76 00 65 00 68 00 61 00 7a 00 69 00 79 00 65 00 70 00 69 00 6c 00 65 00 67 00 65 00 79 00 65 00 68 00 65 00 7a 00 65 00 73 00 65 00 6b 00 65 00 6d 00 69 00 64 00 65 00 6c 00 61 00 70 00 75 00 7a 00 61 00 79 00 75 00 7a 00 61 00 6a 00 65 00 62 00 69 00 76 00 69 00 72 00 6f 00 6e 00 65 00 6d 00 75 00 73 00 } //01 00  zituvehaziyepilegeyehezesekemidelapuzayuzajebivironemus
		$a_01_1 = {53 00 6f 00 6e 00 6f 00 78 00 69 00 62 00 75 00 67 00 61 00 77 00 65 00 64 00 3d 00 5a 00 65 00 78 00 6f 00 78 00 65 00 70 00 20 00 6b 00 75 00 76 00 69 00 6c 00 65 00 79 00 20 00 6d 00 61 00 73 00 69 00 20 00 79 00 61 00 67 00 6f 00 67 00 75 00 74 00 75 00 64 00 75 00 7a 00 65 00 20 00 73 00 6f 00 77 00 6f 00 63 00 61 00 20 00 72 00 69 00 6e 00 65 00 62 00 65 00 74 00 61 00 77 00 65 00 66 00 75 00 78 00 69 00 20 00 78 00 69 00 74 00 69 00 78 00 } //01 00  Sonoxibugawed=Zexoxep kuviley masi yagogutuduze sowoca rinebetawefuxi xitix
		$a_01_2 = {77 00 65 00 76 00 69 00 73 00 6f 00 64 00 6f 00 6d 00 61 00 73 00 61 00 6d 00 6f 00 6e 00 61 00 63 00 6f 00 63 00 69 00 64 00 61 00 7a 00 65 00 67 00 6f 00 6c 00 75 00 68 00 6f 00 63 00 69 00 72 00 61 00 6b 00 75 00 64 00 75 00 63 00 69 00 77 00 65 00 6b 00 75 00 6e 00 61 00 73 00 69 00 67 00 69 00 6c 00 61 00 6d 00 65 00 70 00 69 00 64 00 65 00 70 00 69 00 79 00 75 00 70 00 69 00 77 00 6f 00 77 00 61 00 7a 00 6f 00 76 00 6f 00 70 00 65 00 6a 00 69 00 62 00 6f 00 6b 00 65 00 77 00 69 00 7a 00 69 00 } //01 00  wevisodomasamonacocidazegoluhocirakuduciwekunasigilamepidepiyupiwowazovopejibokewizi
		$a_01_3 = {48 00 61 00 77 00 53 00 57 00 61 00 63 00 75 00 70 00 65 00 79 00 69 00 67 00 6f 00 63 00 75 00 70 00 69 00 20 00 68 00 69 00 66 00 61 00 20 00 68 00 6f 00 68 00 6f 00 76 00 75 00 6c 00 65 00 74 00 20 00 78 00 65 00 6b 00 6f 00 62 00 65 00 68 00 65 00 70 00 69 00 72 00 65 00 64 00 61 00 20 00 74 00 61 00 6c 00 61 00 6c 00 65 00 63 00 61 00 64 00 6f 00 64 00 75 00 72 00 69 00 20 00 6a 00 69 00 70 00 61 00 66 00 6f 00 6c 00 20 00 63 00 69 00 64 00 75 00 77 00 61 00 74 00 65 00 62 00 20 00 6a 00 69 00 72 00 75 00 70 00 } //01 00  HawSWacupeyigocupi hifa hohovulet xekobehepireda talalecadoduri jipafol ciduwateb jirup
		$a_01_4 = {5a 00 6f 00 77 00 75 00 73 00 6f 00 67 00 6f 00 20 00 6d 00 75 00 62 00 61 00 68 00 6f 00 6c 00 6f 00 73 00 65 00 79 00 6f 00 68 00 20 00 6c 00 69 00 68 00 75 00 68 00 75 00 70 00 65 00 47 00 59 00 75 00 74 00 6f 00 64 00 65 00 68 00 69 00 70 00 20 00 6c 00 6f 00 7a 00 75 00 66 00 61 00 62 00 6f 00 78 00 61 00 72 00 61 00 20 00 6e 00 6f 00 73 00 61 00 73 00 69 00 76 00 20 00 6d 00 6f 00 6a 00 69 00 20 00 6d 00 75 00 6a 00 20 00 6d 00 65 00 67 00 75 00 6b 00 69 00 20 00 6d 00 75 00 76 00 69 00 73 00 69 00 66 00 6f 00 72 00 69 00 67 00 61 00 73 00 61 00 20 00 63 00 65 00 77 00 75 00 7a 00 69 00 72 00 75 00 6e 00 } //00 00  Zowusogo mubaholoseyoh lihuhupeGYutodehip lozufaboxara nosasiv moji muj meguki muvisiforigasa cewuzirun
	condition:
		any of ($a_*)
 
}