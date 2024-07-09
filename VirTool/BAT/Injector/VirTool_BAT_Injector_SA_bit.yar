
rule VirTool_BAT_Injector_SA_bit{
	meta:
		description = "VirTool:BAT/Injector.SA!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {17 da 09 da 02 09 91 8c ?? 00 00 01 ?? 8c ?? 00 00 01 28 ?? 00 00 06 28 ?? 00 00 0a 28 ?? 00 00 0a 72 ?? 00 00 70 6f ?? 00 00 0a } //1
		$a_01_1 = {58 6f 72 4f 62 6a 65 63 74 00 47 65 74 53 74 72 69 6e 67 00 4e 65 77 4c 61 74 65 42 69 6e 64 69 6e 67 } //1 潘佲橢捥t敇却牴湩g敎䱷瑡䉥湩楤杮
		$a_01_2 = {53 79 73 74 65 6d 2e 52 75 6e 74 69 6d 65 2e 43 6f 6d 70 69 6c 65 72 53 65 72 76 69 63 65 73 00 52 75 6e 74 69 6d 65 48 65 6c 70 65 72 73 00 47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}