
rule VirTool_BAT_Subti_S_bit{
	meta:
		description = "VirTool:BAT/Subti.S!bit,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {40 00 52 00 41 00 4e 00 44 00 4f 00 4d 00 40 00 2e 00 65 00 78 00 65 00 } //1 @RANDOM@.exe
		$a_01_1 = {25 00 42 00 49 00 4e 00 44 00 45 00 52 00 4f 00 4e 00 25 00 } //1 %BINDERON%
		$a_01_2 = {5c 00 40 00 52 00 41 00 4e 00 44 00 4f 00 4d 00 40 00 2e 00 6c 00 6e 00 6b 00 } //1 \@RANDOM@.lnk
		$a_01_3 = {25 00 49 00 54 00 53 00 45 00 4c 00 46 00 49 00 4e 00 4a 00 45 00 43 00 54 00 49 00 4f 00 4e 00 25 00 } //1 %ITSELFINJECTION%
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}