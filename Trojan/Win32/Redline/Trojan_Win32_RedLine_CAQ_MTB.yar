
rule Trojan_Win32_RedLine_CAQ_MTB{
	meta:
		description = "Trojan:Win32/RedLine.CAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {f7 e2 c1 ea 06 8b c2 c1 e0 06 03 c2 8b d1 2b d0 0f b6 82 90 02 04 b2 1c f6 ea 24 45 30 46 01 83 c1 02 81 f9 7e 07 00 00 72 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}
rule Trojan_Win32_RedLine_CAQ_MTB_2{
	meta:
		description = "Trojan:Win32/RedLine.CAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {52 00 61 00 64 00 65 00 64 00 6f 00 6e 00 69 00 63 00 69 00 6e 00 61 00 78 00 61 00 3d 00 4e 00 65 00 64 00 65 00 62 00 65 00 6d 00 6f 00 67 00 20 00 77 00 65 00 79 00 65 00 6e 00 69 00 6b 00 65 00 76 00 6f 00 68 00 20 00 62 00 6f 00 6e 00 20 00 64 00 61 00 6a 00 20 00 70 00 69 00 79 00 6f 00 64 00 69 00 68 00 65 00 6c 00 69 00 78 00 20 00 6d 00 69 00 63 00 61 00 74 00 20 00 6a 00 69 00 76 00 6f 00 6c 00 65 00 6c 00 65 00 79 00 75 00 66 00 65 00 6b 00 } //1 Radedonicinaxa=Nedebemog weyenikevoh bon daj piyodihelix micat jivoleleyufek
		$a_01_1 = {6c 00 58 00 69 00 63 00 75 00 78 00 75 00 68 00 69 00 79 00 69 00 6a 00 6f 00 20 00 62 00 65 00 64 00 75 00 20 00 6a 00 75 00 7a 00 75 00 6b 00 75 00 74 00 69 00 63 00 75 00 6d 00 69 00 78 00 61 00 20 00 66 00 69 00 67 00 75 00 79 00 6f 00 74 00 69 00 6e 00 6f 00 78 00 65 00 6e 00 65 00 20 00 6c 00 6f 00 67 00 69 00 73 00 61 00 74 00 69 00 76 00 61 00 64 00 65 00 78 00 65 00 6c 00 20 00 73 00 61 00 76 00 69 00 7a 00 61 00 67 00 61 00 63 00 69 00 73 00 75 00 6b 00 20 00 64 00 65 00 6c 00 6f 00 62 00 69 00 68 00 65 00 6d 00 61 00 78 00 61 00 6c 00 69 00 20 00 67 00 6f 00 78 00 6f 00 79 00 61 00 6d 00 75 00 6a 00 20 00 62 00 6f 00 6a 00 75 00 70 00 } //1 lXicuxuhiyijo bedu juzukuticumixa figuyotinoxene logisativadexel savizagacisuk delobihemaxali goxoyamuj bojup
		$a_01_2 = {53 00 69 00 64 00 61 00 72 00 61 00 70 00 69 00 20 00 78 00 65 00 78 00 6f 00 72 00 65 00 62 00 69 00 64 00 61 00 77 00 75 00 } //1 Sidarapi xexorebidawu
		$a_01_3 = {30 00 48 00 61 00 6d 00 75 00 73 00 61 00 68 00 69 00 79 00 75 00 63 00 75 00 6d 00 20 00 64 00 75 00 76 00 75 00 67 00 65 00 62 00 75 00 62 00 75 00 73 00 20 00 66 00 75 00 78 00 20 00 79 00 6f 00 66 00 69 00 6c 00 6f 00 62 00 75 00 79 00 20 00 73 00 75 00 74 00 75 00 77 00 75 00 72 00 61 00 } //1 0Hamusahiyucum duvugebubus fux yofilobuy sutuwura
		$a_01_4 = {4a 00 61 00 76 00 61 00 62 00 6f 00 6d 00 61 00 74 00 61 00 67 00 6f 00 20 00 78 00 65 00 6c 00 69 00 64 00 65 00 6d 00 61 00 72 00 6f 00 68 00 61 00 68 00 39 00 59 00 61 00 73 00 20 00 6e 00 6f 00 6c 00 61 00 6e 00 65 00 72 00 6f 00 6e 00 61 00 6d 00 75 00 78 00 20 00 63 00 6f 00 6e 00 61 00 73 00 61 00 79 00 20 00 68 00 61 00 7a 00 69 00 77 00 61 00 72 00 6f 00 63 00 61 00 79 00 69 00 20 00 76 00 6f 00 76 00 6f 00 20 00 6d 00 75 00 67 00 61 00 63 00 6f 00 79 00 20 00 73 00 61 00 6b 00 6f 00 6c 00 } //1 Javabomatago xelidemarohah9Yas nolaneronamux conasay haziwarocayi vovo mugacoy sakol
		$a_01_5 = {54 00 65 00 63 00 69 00 7a 00 69 00 73 00 69 00 70 00 20 00 68 00 6f 00 74 00 61 00 76 00 65 00 20 00 76 00 69 00 68 00 6f 00 62 00 61 00 67 00 20 00 6a 00 65 00 70 00 61 00 68 00 69 00 72 00 39 00 5a 00 69 00 68 00 69 00 63 00 75 00 77 00 65 00 6a 00 61 00 72 00 20 00 6b 00 65 00 6a 00 75 00 20 00 77 00 69 00 6a 00 65 00 6a 00 69 00 6c 00 20 00 6e 00 65 00 74 00 61 00 6e 00 69 00 64 00 6f 00 70 00 20 00 6a 00 69 00 7a 00 69 00 72 00 6f 00 76 00 6f 00 64 00 6f 00 68 00 69 00 6d 00 20 00 7a 00 65 00 74 00 20 00 72 00 75 00 72 00 61 00 } //1 Tecizisip hotave vihobag jepahir9Zihicuwejar keju wijejil netanidop jizirovodohim zet rura
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}