
rule PWS_BAT_Stimilini_M{
	meta:
		description = "PWS:BAT/Stimilini.M,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 70 6c 6f 61 64 46 69 6c 65 00 } //01 00 
		$a_01_1 = {53 74 72 65 61 6d 48 65 6c 70 65 72 00 } //01 00 
		$a_01_2 = {4b 65 79 6c 6f 67 67 65 72 00 } //01 00  敋汹杯敧r
		$a_01_3 = {56 69 63 74 69 6d 00 } //01 00 
		$a_01_4 = {53 74 65 61 6d 50 72 6f 66 69 6c 65 00 } //01 00 
		$a_01_5 = {50 61 73 73 77 6f 72 64 44 61 74 61 00 } //01 00 
		$a_01_6 = {4c 6f 67 69 6e 44 61 74 61 00 } //01 00  潌楧䑮瑡a
		$a_01_7 = {53 74 65 61 6d 46 69 6c 65 53 74 65 61 6c 65 72 45 78 74 72 65 6d 65 00 } //01 00  瑓慥䙭汩卥整污牥硅牴浥e
		$a_01_8 = {46 69 72 65 66 6f 78 50 61 73 73 77 6f 72 64 00 } //00 00  楆敲潦偸獡睳牯d
	condition:
		any of ($a_*)
 
}