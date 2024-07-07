
rule HackTool_Win64_ShadowLink_B_dha{
	meta:
		description = "HackTool:Win64/ShadowLink.B!dha,SIGNATURE_TYPE_CMDHSTR_EXT,2c 01 2c 01 03 00 00 "
		
	strings :
		$a_00_0 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 50 00 75 00 62 00 6c 00 69 00 63 00 5c 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //100 C:\Users\Public\Defender\Defender\defender.exe
		$a_00_1 = {2d 00 2d 00 6e 00 74 00 2d 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 } //100 --nt-service
		$a_00_2 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 50 00 75 00 62 00 6c 00 69 00 63 00 5c 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 64 00 65 00 66 00 } //100 C:\Users\Public\Defender\Data\Defender\def
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*100+(#a_00_2  & 1)*100) >=300
 
}