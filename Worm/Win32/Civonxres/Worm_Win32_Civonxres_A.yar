
rule Worm_Win32_Civonxres_A{
	meta:
		description = "Worm:Win32/Civonxres.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 04 00 "
		
	strings :
		$a_01_0 = {2f 58 51 44 42 48 4f 35 2e 65 78 65 } //02 00  /XQDBHO5.exe
		$a_01_1 = {77 2e 39 39 39 39 39 39 39 39 39 39 39 2e 63 6f 6d 2e 63 6e 2f 53 43 56 48 30 53 54 2e 45 58 45 } //02 00  w.99999999999.com.cn/SCVH0ST.EXE
		$a_01_2 = {39 39 39 2e 63 6f 6d 2e 63 6e 2f 53 45 52 56 49 43 53 2e 45 58 45 } //02 00  999.com.cn/SERVICS.EXE
		$a_01_3 = {41 36 39 32 30 36 32 41 2d 34 37 38 32 2d 34 36 31 42 2d 42 45 39 38 2d 42 35 32 30 46 30 31 46 39 36 46 43 } //01 00  A692062A-4782-461B-BE98-B520F01F96FC
		$a_01_4 = {2f 77 77 77 2e 39 39 39 39 39 39 39 39 39 39 39 2e 63 6f 6d 2e 63 6e 2f } //01 00  /www.99999999999.com.cn/
		$a_01_5 = {55 6d 46 79 49 52 6f 48 41 4d 2b 51 63 77 41 41 44 51 41 41 41 41 41 41 41 41 41 6a 72 48 51 67 6b 6a 34 41 67 67 4d 41 41 50 30 4a 41 41 41 43 } //01 00  UmFyIRoHAM+QcwAADQAAAAAAAAAjrHQgkj4AggMAAP0JAAAC
		$a_01_6 = {41 30 33 41 42 66 67 68 63 6e 45 66 75 64 61 64 73 66 64 67 74 65 72 74 67 73 64 73 41 64 66 67 64 66 53 44 46 64 66 67 44 47 46 64 65 77 72 54 } //01 00  A03ABfghcnEfudadsfdgtertgsdsAdfgdfSDFdfgDGFdewrT
		$a_01_7 = {34 6c 6b 35 6c 6b 34 33 35 6b 6c 34 33 35 6b 6c 34 6a 35 6c 34 33 6a 35 6c 34 6b 35 6c 34 33 6b 35 6c 33 6b 6c 33 35 34 35 6b 6c 34 65 6a 68 67 } //00 00  4lk5lk435kl435kl4j5l43j5l4k5l43k5l3kl3545kl4ejhg
		$a_00_8 = {5d 04 00 00 3c } //68 03 
	condition:
		any of ($a_*)
 
}