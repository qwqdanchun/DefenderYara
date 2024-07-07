
rule HackTool_Linux_MSFPythonShell_B{
	meta:
		description = "HackTool:Linux/MSFPythonShell.B,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 04 00 00 "
		
	strings :
		$a_00_0 = {70 00 79 00 74 00 68 00 6f 00 6e 00 } //5 python
		$a_01_1 = {65 00 78 00 65 00 63 00 28 00 27 00 61 00 57 00 31 00 77 00 62 00 33 00 4a 00 30 00 49 00 48 00 4e 00 76 00 59 00 32 00 74 00 6c 00 64 00 } //5 exec('aW1wb3J0IHNvY2tld
		$a_01_2 = {63 00 33 00 52 00 6b 00 62 00 33 00 56 00 30 00 58 00 33 00 5a 00 68 00 62 00 48 00 56 00 6c 00 4b 00 51 00 6f 00 3d 00 27 00 2e 00 64 00 65 00 63 00 6f 00 64 00 65 00 28 00 27 00 62 00 61 00 73 00 65 00 36 00 34 00 27 00 29 00 29 00 } //1 c3Rkb3V0X3ZhbHVlKQo='.decode('base64'))
		$a_01_3 = {4b 00 48 00 4e 00 30 00 5a 00 47 00 39 00 31 00 64 00 46 00 39 00 32 00 59 00 57 00 78 00 31 00 5a 00 53 00 6b 00 4b 00 27 00 2e 00 64 00 65 00 63 00 6f 00 64 00 65 00 28 00 27 00 62 00 61 00 73 00 65 00 36 00 34 00 27 00 29 00 29 00 } //1 KHN0ZG91dF92YWx1ZSkK'.decode('base64'))
	condition:
		((#a_00_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=11
 
}