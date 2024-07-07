
rule Trojan_Win32_Emotet_RO_MSR{
	meta:
		description = "Trojan:Win32/Emotet.RO!MSR,SIGNATURE_TYPE_PEHSTR,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {8b c6 c1 e0 1f c1 f8 1f 8b ce c1 e1 1d c1 f9 1f 81 e1 19 c4 6d 07 25 96 30 07 77 33 c1 8b ce c1 e1 19 c1 f9 1f 81 e1 90 41 dc 76 33 c1 8b ce c1 e1 1a c1 f9 1f 81 e1 c8 20 6e 3b 33 c1 8b ce c1 e1 1b c1 f9 1f 81 e1 64 10 b7 1d 33 c1 8b ce c1 e1 1c c1 f9 1f 81 e1 32 88 db 0e 33 c1 8b ce c1 e9 08 33 c1 8b ce c1 e1 18 c1 e6 1e c1 f9 1f c1 fe 1f 81 e1 20 83 b8 ed 33 c1 81 e6 2c 61 0e ee 33 f0 47 0f b6 07 85 c0 0f 85 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}