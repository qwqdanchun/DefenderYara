
rule Ransom_Win32_Genasom_O{
	meta:
		description = "Ransom:Win32/Genasom.O,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 08 00 00 "
		
	strings :
		$a_00_0 = {2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //10 搮汬䐀汬慃啮汮慯乤睯䐀汬敇䍴慬獳扏敪瑣䐀汬敒楧瑳牥敓癲牥䐀汬湕敲楧瑳牥敓癲牥
		$a_02_1 = {5f 00 69 00 6d 00 61 00 63 00 90 02 02 4a 00 46 00 59 00 44 00 45 00 4b 00 52 00 34 00 37 00 48 00 45 00 90 00 } //10
		$a_00_2 = {61 00 66 00 74 00 65 00 72 00 42 00 65 00 67 00 69 00 6e 00 } //1 afterBegin
		$a_00_3 = {46 00 6c 00 61 00 67 00 73 00 } //1 Flags
		$a_00_4 = {6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 64 00 61 00 74 00 61 00 2e 00 78 00 73 00 6c 00 } //1 microsoft.data.xsl
		$a_00_5 = {6d 00 65 00 64 00 69 00 61 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 2e 00 78 00 73 00 6c 00 } //1 mediamodule.xsl
		$a_00_6 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 74 00 5c 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 } //1 \Microsoft\Windows\CurrentVersion\Ext\Settings
		$a_00_7 = {65 76 61 6c 28 } //1 eval(
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=23
 
}