
rule TrojanDownloader_Win32_Banload_AIN{
	meta:
		description = "TrojanDownloader:Win32/Banload.AIN,SIGNATURE_TYPE_PEHSTR_EXT,12 00 10 00 12 00 00 04 00 "
		
	strings :
		$a_01_0 = {30 46 34 37 38 42 33 30 39 30 46 41 31 41 37 39 44 36 37 43 44 30 30 32 35 46 45 34 37 39 45 41 32 39 42 42 31 42 41 30 33 46 39 32 43 37 30 } //04 00  0F478B3090FA1A79D67CD0025FE479EA29BB1BA03F92C70
		$a_01_1 = {30 33 35 42 46 46 34 34 38 34 38 45 38 44 38 43 43 39 30 46 34 33 39 34 33 32 39 37 43 42 31 44 37 42 45 44 36 44 44 32 37 31 45 34 37 41 44 } //04 00  035BFF44848E8D8CC90F43943297CB1D7BED6DD271E47AD
		$a_01_2 = {37 45 44 36 37 42 44 46 36 30 41 41 45 39 32 39 41 36 32 43 41 30 33 32 41 46 31 35 34 39 39 41 46 38 36 42 45 41 35 30 38 45 43 31 31 37 42 } //04 00  7ED67BDF60AAE929A62CA032AF15499AF86BEA508EC117B
		$a_01_3 = {31 41 42 32 31 37 42 42 31 43 36 36 41 35 45 34 36 32 45 37 37 43 45 44 36 42 44 30 30 35 35 36 42 34 32 37 41 36 32 43 41 41 33 45 39 33 33 } //04 00  1AB217BB1C66A5E462E77CED6BD00556B427A62CAA3E933
		$a_01_4 = {36 36 46 45 34 33 38 37 43 37 33 32 35 31 42 30 32 45 39 33 43 37 31 39 42 36 31 43 42 30 32 32 36 30 46 32 35 32 46 37 35 36 38 39 44 45 37 } //04 00  66FE4387C73251B02E93C719B61CB02260F252F75689DE7
		$a_01_5 = {42 35 32 45 39 32 33 37 39 37 45 31 32 31 36 30 46 44 34 33 39 37 43 38 30 36 34 42 39 46 33 31 36 46 45 31 36 31 45 36 36 35 46 38 36 45 45 } //04 00  B52E923797E12160FD4397C8064B9F316FE161E665F86EE
		$a_01_6 = {34 30 39 38 33 44 38 31 43 31 43 42 43 41 43 39 30 37 34 43 38 30 44 31 30 46 42 34 32 39 42 41 44 38 30 42 34 41 38 46 43 44 30 31 35 36 46 } //03 00  40983D81C1CBCAC9074C80D10FB429BAD80B4A8FCD0156F
		$a_01_7 = {39 31 43 35 30 38 34 31 38 37 44 43 37 46 43 32 32 46 } //03 00  91C5084187DC7FC22F
		$a_01_8 = {32 44 39 34 43 44 30 43 34 30 39 46 32 37 41 41 33 37 } //03 00  2D94CD0C409F27AA37
		$a_01_9 = {46 35 30 37 36 44 38 34 39 34 45 41 36 34 45 36 37 43 43 33 31 35 42 31 32 45 } //02 00  F5076D8494EA64E67CC315B12E
		$a_01_10 = {42 45 31 37 42 36 31 34 42 33 31 30 34 46 38 36 44 37 30 43 34 42 34 39 39 45 32 37 42 43 } //02 00  BE17B614B3104F86D70C4B499E27BC
		$a_01_11 = {39 46 44 31 37 37 44 42 36 30 46 46 35 45 } //01 00  9FD177DB60FF5E
		$a_01_12 = {46 33 35 36 46 41 35 37 42 41 44 43 32 33 36 37 41 35 32 43 39 34 43 38 } //01 00  F356FA57BADC2367A52C94C8
		$a_01_13 = {42 44 30 30 34 34 38 30 38 32 38 33 38 33 38 42 38 39 43 42 37 30 45 43 } //01 00  BD0044808283838B89CB70EC
		$a_01_14 = {36 46 44 31 37 36 44 32 33 41 35 45 41 33 44 41 33 39 39 46 32 38 42 43 } //01 00  6FD176D23A5EA3DA399F28BC
		$a_01_15 = {30 39 34 42 38 46 43 42 33 35 35 45 41 35 45 42 32 41 39 30 33 39 41 44 } //01 00  094B8FCB355EA5EB2A9039AD
		$a_01_16 = {39 32 33 35 39 39 33 36 35 38 42 44 43 33 43 31 30 38 42 30 32 35 } //01 00  9235993658BDC3C108B025
		$a_01_17 = {32 34 41 36 32 42 41 37 45 46 31 31 37 41 39 45 46 43 34 33 38 42 44 46 } //00 00  24A62BA7EF117A9EFC438BDF
	condition:
		any of ($a_*)
 
}