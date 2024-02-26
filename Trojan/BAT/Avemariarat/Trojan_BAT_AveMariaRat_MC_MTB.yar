
rule Trojan_BAT_AveMariaRat_MC_MTB{
	meta:
		description = "Trojan:BAT/AveMariaRat.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 5a 64 32 33 33 35 36 37 38 } //01 00  AZd2335678
		$a_01_1 = {49 4d 44 42 43 6c 6f 6e 65 5c 6f 62 6a 5c 44 65 62 75 67 5c 4b 77 6e 61 2e 70 64 62 } //01 00  IMDBClone\obj\Debug\Kwna.pdb
		$a_01_2 = {73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 } //01 00  s://cdn.disc
		$a_01_3 = {6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 } //01 00  ordapp.com
		$a_03_4 = {2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 39 00 31 00 31 00 39 00 30 00 37 00 31 00 33 00 36 00 30 00 34 00 37 00 35 00 35 00 34 00 35 00 36 00 33 00 2f 00 90 02 30 2f 00 36 00 30 00 30 00 90 00 } //01 00 
		$a_01_5 = {43 6f 6e 63 61 74 } //01 00  Concat
		$a_01_6 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_7 = {43 72 65 61 74 65 46 69 6c 65 } //01 00  CreateFile
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_9 = {73 65 74 5f 53 69 7a 65 } //01 00  set_Size
		$a_01_10 = {54 6f 53 74 72 69 6e 67 } //01 00  ToString
		$a_01_11 = {6d 5f 74 65 78 74 42 6f 78 5f 70 61 73 73 77 6f 72 64 5f 43 6c 69 63 6b } //01 00  m_textBox_password_Click
		$a_01_12 = {73 65 74 5f 50 61 73 73 77 6f 72 64 43 68 61 72 } //01 00  set_PasswordChar
		$a_01_13 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 5f 00 69 00 64 00 2c 00 63 00 6f 00 75 00 6e 00 74 00 28 00 2a 00 29 00 20 00 66 00 72 00 6f 00 6d 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 } //00 00  select cookie_id,count(*) from cookie
	condition:
		any of ($a_*)
 
}