
rule Ransom_Win32_Wannacash_PA_MTB{
	meta:
		description = "Ransom:Win32/Wannacash.PA!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5d 00 2e 00 77 00 61 00 6e 00 6e 00 61 00 63 00 61 00 73 00 68 00 20 00 2e 00 7a 00 69 00 70 00 } //01 00  ].wannacash .zip
		$a_01_1 = {75 00 6c 00 69 00 74 00 6f 00 63 00 68 00 6b 00 69 00 6d 00 6f 00 69 00 3a 00 } //01 00  ulitochkimoi:
		$a_01_2 = {6a 00 75 00 73 00 74 00 73 00 75 00 72 00 72 00 65 00 6e 00 64 00 65 00 72 00 40 00 72 00 61 00 70 00 65 00 2e 00 6c 00 6f 00 6c 00 } //01 00  justsurrender@rape.lol
		$a_01_3 = {2e 00 64 00 6f 00 63 00 20 00 2e 00 64 00 6f 00 63 00 78 00 20 00 2e 00 78 00 6c 00 73 00 20 00 2e 00 78 00 6c 00 73 00 78 00 20 00 2e 00 78 00 6c 00 73 00 74 00 20 00 2e 00 70 00 70 00 74 00 20 00 2e 00 70 00 70 00 74 00 78 00 20 00 2e 00 61 00 63 00 63 00 64 00 62 00 20 00 2e 00 72 00 74 00 66 00 20 00 2e 00 70 00 75 00 62 00 20 00 2e 00 65 00 70 00 75 00 62 00 20 00 2e 00 70 00 70 00 73 00 20 00 2e 00 70 00 70 00 73 00 6d 00 20 00 2e 00 70 00 6f 00 74 00 20 00 2e 00 70 00 61 00 67 00 65 00 73 00 20 00 2e 00 6f 00 64 00 66 00 20 00 2e 00 6f 00 64 00 74 00 20 00 2e 00 6f 00 64 00 73 00 20 00 2e 00 70 00 64 00 66 00 20 00 2e 00 64 00 6a 00 76 00 75 00 20 00 2e 00 68 00 74 00 6d 00 6c 00 20 00 2e 00 72 00 74 00 66 00 } //00 00  .doc .docx .xls .xlsx .xlst .ppt .pptx .accdb .rtf .pub .epub .pps .ppsm .pot .pages .odf .odt .ods .pdf .djvu .html .rtf
	condition:
		any of ($a_*)
 
}