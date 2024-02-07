
rule Trojan_Win64_DistTrack_D{
	meta:
		description = "Trojan:Win64/DistTrack.D,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 45 00 6c 00 52 00 61 00 77 00 44 00 69 00 73 00 6b 00 } //01 00  \ElRawDisk
		$a_01_1 = {23 00 7b 00 38 00 41 00 36 00 44 00 42 00 37 00 44 00 32 00 2d 00 46 00 45 00 43 00 46 00 2d 00 34 00 31 00 66 00 66 00 2d 00 39 00 41 00 39 00 32 00 2d 00 36 00 45 00 44 00 41 00 36 00 39 00 36 00 36 00 31 00 33 00 44 00 45 00 7d 00 23 00 } //01 00  #{8A6DB7D2-FECF-41ff-9A92-6EDA696613DE}#
		$a_01_2 = {23 00 7b 00 39 00 41 00 36 00 44 00 42 00 37 00 44 00 32 00 2d 00 46 00 45 00 43 00 46 00 2d 00 34 00 31 00 66 00 66 00 2d 00 39 00 41 00 39 00 32 00 2d 00 36 00 45 00 44 00 41 00 36 00 39 00 36 00 36 00 31 00 33 00 44 00 46 00 7d 00 23 00 } //01 00  #{9A6DB7D2-FECF-41ff-9A92-6EDA696613DF}#
		$a_01_3 = {53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 5c 00 4f 00 72 00 64 00 65 00 72 00 } //01 00  System\CurrentControlSet\Control\NetworkProvider\Order
		$a_01_4 = {7b 32 35 45 43 34 34 35 33 2d 41 42 30 36 2d 34 62 33 66 2d 42 43 46 30 2d 42 32 36 30 41 36 38 42 36 34 43 39 7d } //01 00  {25EC4453-AB06-4b3f-BCF0-B260A68B64C9}
		$a_01_5 = {7b 38 32 42 35 32 33 34 46 2d 44 46 36 31 2d 34 36 33 38 2d 39 35 44 35 2d 33 34 31 43 41 44 32 34 34 44 31 39 7d } //01 00  {82B5234F-DF61-4638-95D5-341CAD244D19}
		$a_01_6 = {4e 44 49 34 43 67 20 62 66 30 33 39 61 62 31 36 36 33 65 64 37 38 32 31 32 34 62 61 30 34 64 34 65 34 35 37 38 39 32 } //00 00  NDI4Cg bf039ab1663ed782124ba04d4e457892
	condition:
		any of ($a_*)
 
}