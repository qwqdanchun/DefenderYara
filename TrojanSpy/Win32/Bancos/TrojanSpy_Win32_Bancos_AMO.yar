
rule TrojanSpy_Win32_Bancos_AMO{
	meta:
		description = "TrojanSpy:Win32/Bancos.AMO,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_01_0 = {41 00 30 00 38 00 34 00 38 00 39 00 39 00 37 00 38 00 39 00 36 00 46 00 46 00 33 00 33 00 41 00 44 00 44 00 32 00 44 00 } //1 A0848997896FF33ADD2D
		$a_01_1 = {38 00 30 00 38 00 34 00 38 00 39 00 39 00 43 00 36 00 31 00 41 00 36 00 42 00 41 00 37 00 43 00 38 00 37 00 39 00 44 00 } //1 8084899C61A6BA7C879D
		$a_01_2 = {39 00 33 00 39 00 39 00 39 00 34 00 39 00 33 00 39 00 42 00 36 00 42 00 41 00 30 00 36 00 35 00 41 00 34 00 42 00 43 00 34 00 32 00 43 00 31 00 34 00 30 00 } //1 939994939B6BA065A4BC42C140
		$a_01_3 = {44 00 39 00 32 00 32 00 45 00 42 00 33 00 42 00 43 00 33 00 34 00 33 00 44 00 36 00 32 00 36 00 45 00 30 00 36 00 31 00 41 00 36 00 37 00 43 00 38 00 36 00 } //1 D922EB3BC343D626E061A67C86
		$a_01_4 = {39 00 35 00 39 00 46 00 36 00 44 00 42 00 38 00 37 00 44 00 38 00 41 00 38 00 35 00 38 00 34 00 39 00 44 00 41 00 35 00 36 00 39 00 42 00 41 00 34 00 39 00 } //1 959F6DB87D8A85849DA569BA49
		$a_01_5 = {42 00 35 00 37 00 45 00 38 00 46 00 39 00 36 00 39 00 38 00 36 00 45 00 38 00 43 00 39 00 32 00 39 00 41 00 41 00 36 00 36 00 38 00 42 00 42 00 34 00 36 00 } //1 B57E8F96986E8C929AA668BB46
		$a_01_6 = {42 00 41 00 36 00 44 00 42 00 33 00 37 00 34 00 38 00 42 00 36 00 43 00 41 00 33 00 37 00 35 00 42 00 35 00 37 00 43 00 41 00 43 00 38 00 31 00 42 00 41 00 35 00 30 00 43 00 33 00 } //1 BA6DB3748B6CA375B57CAC81BA50C3
		$a_01_7 = {42 00 31 00 34 00 31 00 43 00 32 00 34 00 41 00 41 00 30 00 36 00 39 00 42 00 35 00 38 00 30 00 38 00 42 00 39 00 39 00 36 00 35 00 } //1 B141C24AA069B5808B9965
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}