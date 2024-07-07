
rule VirTool_Win32_Injector_FR{
	meta:
		description = "VirTool:Win32/Injector.FR,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {36 00 30 00 39 00 30 00 5c 00 45 00 38 00 39 00 30 00 5c 00 34 00 45 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 36 00 42 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 36 00 35 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 37 00 32 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 36 00 45 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 36 00 35 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 36 00 43 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 33 00 33 00 39 00 30 00 5c 00 30 00 30 00 39 00 30 00 5c 00 33 00 32 00 39 00 30 00 } //1 6090\E890\4E90\0090\0090\0090\6B90\0090\6590\0090\7290\0090\6E90\0090\6590\0090\6C90\0090\3390\0090\3290
	condition:
		((#a_01_0  & 1)*1) >=1
 
}