
rule Trojan_Linux_DiskWiper_B{
	meta:
		description = "Trojan:Linux/DiskWiper.B,SIGNATURE_TYPE_CMDHSTR_EXT,33 00 33 00 0d 00 00 "
		
	strings :
		$a_00_0 = {73 00 68 00 72 00 65 00 64 00 20 00 } //50 shred 
		$a_00_1 = {77 00 69 00 70 00 65 00 20 00 } //50 wipe 
		$a_00_2 = {73 00 66 00 69 00 6c 00 6c 00 20 00 } //50 sfill 
		$a_00_3 = {73 00 6d 00 65 00 6d 00 20 00 } //50 smem 
		$a_00_4 = {73 00 63 00 72 00 75 00 62 00 20 00 } //50 scrub 
		$a_00_5 = {64 00 63 00 33 00 64 00 64 00 20 00 } //50 dc3dd 
		$a_00_6 = {64 00 63 00 66 00 6c 00 64 00 64 00 20 00 } //50 dcfldd 
		$a_00_7 = {73 00 74 00 61 00 74 00 20 00 } //65526 stat 
		$a_00_8 = {6c 00 73 00 20 00 } //65526 ls 
		$a_00_9 = {6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 } //65526 logger 
		$a_00_10 = {62 00 6c 00 6b 00 69 00 64 00 20 00 } //65526 blkid 
		$a_00_11 = {2f 00 64 00 65 00 76 00 2f 00 73 00 64 00 } //1 /dev/sd
		$a_00_12 = {2f 00 64 00 65 00 76 00 2f 00 73 00 67 00 } //1 /dev/sg
	condition:
		((#a_00_0  & 1)*50+(#a_00_1  & 1)*50+(#a_00_2  & 1)*50+(#a_00_3  & 1)*50+(#a_00_4  & 1)*50+(#a_00_5  & 1)*50+(#a_00_6  & 1)*50+(#a_00_7  & 1)*65526+(#a_00_8  & 1)*65526+(#a_00_9  & 1)*65526+(#a_00_10  & 1)*65526+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1) >=51
 
}