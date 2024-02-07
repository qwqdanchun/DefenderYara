
rule DDoS_Linux_Lightaidra{
	meta:
		description = "DDoS:Linux/Lightaidra,SIGNATURE_TYPE_ELFHSTR_EXT,0b 00 0b 00 0c 00 00 01 00 "
		
	strings :
		$a_00_0 = {69 72 63 5f } //01 00  irc_
		$a_00_1 = {73 63 61 6e } //01 00  scan
		$a_00_2 = {66 6c 6f 6f 64 } //01 00  flood
		$a_00_3 = {61 74 74 61 63 6b } //01 00  attack
		$a_00_4 = {66 69 6e 2e 61 63 6b } //01 00  fin.ack
		$a_00_5 = {70 61 73 73 77 6f 72 64 } //01 00  password
		$a_00_6 = {72 6f 6f 74 } //01 00  root
		$a_00_7 = {73 68 65 6c 6c } //01 00  shell
		$a_00_8 = {66 74 70 67 65 74 } //01 00  ftpget
		$a_00_9 = {61 64 6d 69 6e 31 32 33 34 } //01 00  admin1234
		$a_00_10 = {58 41 31 62 61 63 30 4d 58 } //01 00  XA1bac0MX
		$a_00_11 = {64 72 65 61 6d 62 6f 78 } //00 00  dreambox
	condition:
		any of ($a_*)
 
}
rule DDoS_Linux_Lightaidra_2{
	meta:
		description = "DDoS:Linux/Lightaidra,SIGNATURE_TYPE_ELFHSTR_EXT,0a 00 0a 00 09 00 00 04 00 "
		
	strings :
		$a_01_0 = {00 4b 49 4c 4c 41 54 54 4b 00 } //04 00  䬀䱉䅌呔K
		$a_01_1 = {00 53 43 41 4e 4e 45 52 20 4f 4e 20 7c 20 4f 46 46 00 } //02 00  匀䅃乎剅传⁎⁼䙏F
		$a_01_2 = {00 61 73 73 77 6f 72 64 00 } //02 00 
		$a_01_3 = {00 6e 63 6f 72 72 65 63 74 00 } //02 00  渀潣牲捥t
		$a_01_4 = {00 4d 79 20 49 50 3a 20 25 73 00 } //02 00 
		$a_01_5 = {00 41 74 74 65 6d 70 74 20 2d 20 25 73 3a 25 73 3a 25 73 00 } //02 00  䄀瑴浥瑰ⴠ┠㩳猥┺s
		$a_01_6 = {00 64 72 65 61 6d 62 6f 78 00 } //02 00  搀敲浡潢x
		$a_01_7 = {00 76 69 7a 78 76 00 } //02 00 
		$a_01_8 = {00 63 69 73 63 6f 00 } //00 00 
		$a_00_9 = {5d 04 00 00 57 91 03 } //80 5c 
	condition:
		any of ($a_*)
 
}