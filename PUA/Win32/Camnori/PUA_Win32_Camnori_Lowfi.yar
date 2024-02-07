
rule PUA_Win32_Camnori_Lowfi{
	meta:
		description = "PUA:Win32/Camnori!Lowfi,SIGNATURE_TYPE_PEHSTR,2c 01 2c 01 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {40 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 61 00 6d 00 6e 00 6f 00 72 00 69 00 } //01 00  @Software\Camnori
		$a_01_1 = {6d 00 3d 00 25 00 73 00 26 00 70 00 3d 00 25 00 73 00 26 00 64 00 3d 00 25 00 73 00 26 00 77 00 3d 00 25 00 73 00 26 00 68 00 3d 00 25 00 73 00 26 00 63 00 70 00 3d 00 25 00 73 00 } //01 00  m=%s&p=%s&d=%s&w=%s&h=%s&cp=%s
		$a_01_2 = {61 00 70 00 70 00 2e 00 73 00 69 00 64 00 65 00 6a 00 65 00 74 00 2e 00 63 00 6f 00 6d 00 } //00 00  app.sidejet.com
		$a_01_3 = {00 7a 08 } //00 00 
	condition:
		any of ($a_*)
 
}