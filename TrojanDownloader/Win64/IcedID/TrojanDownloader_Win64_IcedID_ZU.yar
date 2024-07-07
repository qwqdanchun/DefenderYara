
rule TrojanDownloader_Win64_IcedID_ZU{
	meta:
		description = "TrojanDownloader:Win64/IcedID.ZU,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 05 00 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //1
		$a_01_1 = {7b 65 33 66 33 38 34 39 33 2d 66 38 35 30 2d 34 63 36 65 2d 61 34 38 65 2d 31 62 35 63 31 66 34 64 64 33 35 66 7d } //10 {e3f38493-f850-4c6e-a48e-1b5c1f4dd35f}
		$a_01_2 = {7b 30 63 63 61 63 33 39 35 2d 37 64 31 64 2d 34 36 34 31 2d 39 31 33 61 2d 37 35 35 38 38 31 32 64 64 65 61 32 7d } //10 {0ccac395-7d1d-4641-913a-7558812ddea2}
		$a_01_3 = {7b 64 36 35 66 34 30 38 37 2d 31 64 65 34 2d 34 31 37 35 2d 62 62 63 38 2d 66 32 37 61 31 64 30 37 30 37 32 33 7d } //10 {d65f4087-1de4-4175-bbc8-f27a1d070723}
		$a_03_4 = {48 83 ec 28 ba 01 00 00 00 83 c9 ff ff 15 90 01 04 eb f0 90 00 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_03_4  & 1)*10) >=41
 
}