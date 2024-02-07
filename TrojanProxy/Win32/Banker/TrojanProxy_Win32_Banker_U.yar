
rule TrojanProxy_Win32_Banker_U{
	meta:
		description = "TrojanProxy:Win32/Banker.U,SIGNATURE_TYPE_PEHSTR_EXT,45 01 36 01 0b 00 00 ffffffc8 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 6f 00 6e 00 74 00 61 00 63 00 74 00 2e 00 6a 00 73 00 70 00 } //32 00  /contact.jsp
		$a_01_1 = {6c 6f 61 64 65 72 73 5c 50 68 61 72 6d 69 6e 67 62 79 65 43 6f 4c 6f 47 79 } //14 00  loaders\PharmingbyeCoLoGy
		$a_01_2 = {6d 00 79 00 68 00 6f 00 75 00 73 00 69 00 73 00 2e 00 6e 00 65 00 74 00 } //14 00  myhousis.net
		$a_01_3 = {61 00 6d 00 61 00 72 00 65 00 6c 00 69 00 6e 00 68 00 6f 00 6c 00 61 00 6e 00 63 00 68 00 65 00 73 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 } //14 00  amarelinholanches.com.br
		$a_01_4 = {7a 00 69 00 6e 00 74 00 65 00 6b 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 2d 00 65 00 6e 00 } //14 00  zinteker.com/l-en
		$a_01_5 = {6c 00 63 00 64 00 2d 00 70 00 72 00 6f 00 6d 00 6f 00 74 00 69 00 6f 00 6e 00 2e 00 63 00 6f 00 6d 00 } //14 00  lcd-promotion.com
		$a_01_6 = {67 00 6c 00 6f 00 62 00 61 00 6c 00 62 00 72 00 61 00 6e 00 64 00 73 00 2e 00 6e 00 6c 00 } //0a 00  globalbrands.nl
		$a_01_7 = {5c 00 50 00 65 00 6e 00 64 00 65 00 6e 00 63 00 69 00 61 00 73 00 2e 00 63 00 6f 00 6d 00 } //05 00  \Pendencias.com
		$a_01_8 = {75 00 6e 00 6b 00 6e 00 6f 00 77 00 73 00 6b 00 79 00 37 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //05 00  unknowsky7@gmail.com
		$a_01_9 = {69 00 6e 00 66 00 65 00 63 00 74 00 73 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //05 00  infects@gmail.com
		$a_01_10 = {62 00 63 00 2e 00 6d 00 73 00 74 00 73 00 63 00 40 00 6c 00 69 00 76 00 65 00 2e 00 63 00 6f 00 6d 00 } //00 00  bc.mstsc@live.com
	condition:
		any of ($a_*)
 
}