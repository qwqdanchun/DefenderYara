
rule Trojan_BAT_Taskun_GAN_MTB{
	meta:
		description = "Trojan:BAT/Taskun.GAN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 09 18 7e 90 01 01 02 00 04 28 90 01 01 01 00 06 1f 10 7e 90 01 01 02 00 04 28 90 01 01 01 00 06 7e 90 01 01 02 00 04 28 90 01 01 01 00 06 16 91 13 05 08 17 8d 90 01 01 00 00 01 25 16 11 05 9c 6f 90 01 01 00 00 0a 00 09 18 58 0d 00 09 07 7e 90 01 01 02 00 04 28 90 01 01 01 00 06 fe 04 13 06 11 06 3a 90 00 } //3
		$a_01_1 = {51 00 75 00 61 00 6e 00 4c 00 79 00 42 00 61 00 6e 00 48 00 61 00 6e 00 67 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //2 QuanLyBanHang.Properties.Resources
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}