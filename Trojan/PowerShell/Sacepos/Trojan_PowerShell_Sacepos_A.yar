
rule Trojan_PowerShell_Sacepos_A{
	meta:
		description = "Trojan:PowerShell/Sacepos.A,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 05 00 00 "
		
	strings :
		$a_00_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 } //1 schtasks /create
		$a_00_1 = {2f 00 73 00 63 00 20 00 6f 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //1 /sc onlogon
		$a_00_2 = {2f 00 73 00 63 00 20 00 6f 00 6e 00 73 00 74 00 61 00 72 00 74 00 } //1 /sc onstart
		$a_00_3 = {2f 00 73 00 63 00 20 00 6f 00 6e 00 69 00 64 00 6c 00 65 00 } //1 /sc onidle
		$a_00_4 = {49 00 45 00 58 00 20 00 28 00 28 00 6e 00 65 00 77 00 2d 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 6e 00 65 00 74 00 2e 00 77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 } //10 IEX ((new-object net.webclient).downloadstring('
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*10) >=11
 
}