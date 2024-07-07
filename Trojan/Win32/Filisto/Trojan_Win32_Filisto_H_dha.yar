
rule Trojan_Win32_Filisto_H_dha{
	meta:
		description = "Trojan:Win32/Filisto.H!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 14 00 00 "
		
	strings :
		$a_01_0 = {72 75 6e 65 78 65 20 31 2e 65 78 65 } //3 runexe 1.exe
		$a_01_1 = {38 63 6c 6d 6f 28 33 7b 3c 4c 55 56 58 6f 2d 21 77 34 44 45 47 58 72 6a 66 2e 5d 7c 7d 47 61 } //2 8clmo(3{<LUVXo-!w4DEGXrjf.]|}Ga
		$a_01_2 = {30 78 30 31 2c 20 73 65 74 20 50 61 72 61 6d 20 66 61 69 6c 65 64 21 } //1 0x01, set Param failed!
		$a_01_3 = {30 78 30 31 2c 20 25 73 20 6c 6f 67 69 6e 20 62 79 20 25 73 20 66 61 69 6c 65 64 2e } //1 0x01, %s login by %s failed.
		$a_01_4 = {30 78 30 30 2c 20 53 65 74 20 43 6f 6e 66 69 67 20 66 61 69 6c 65 64 2e } //1 0x00, Set Config failed.
		$a_01_5 = {30 78 30 31 2c 20 65 78 65 63 20 25 64 20 73 75 63 63 65 73 73 2e } //1 0x01, exec %d success.
		$a_01_6 = {30 78 30 31 2c 20 53 53 44 20 66 61 69 6c 65 64 20 25 64 2e } //1 0x01, SSD failed %d.
		$a_01_7 = {30 00 78 00 30 00 34 00 2c 00 20 00 43 00 45 00 50 00 48 00 4c 00 20 00 66 00 61 00 69 00 6c 00 65 00 64 00 } //1 0x04, CEPHL failed
		$a_01_8 = {30 00 78 00 30 00 34 00 2c 00 20 00 52 00 44 00 20 00 6e 00 6f 00 74 00 20 00 65 00 6e 00 6f 00 75 00 67 00 68 00 2c 00 20 00 25 00 64 00 2c 00 20 00 } //1 0x04, RD not enough, %d, 
		$a_01_9 = {30 78 30 30 2c 20 6d 69 73 73 20 73 65 72 76 65 72 20 63 6f 6e 66 69 67 2e } //1 0x00, miss server config.
		$a_01_10 = {30 78 30 36 2c 20 64 65 6c 61 79 20 25 64 2e } //1 0x06, delay %d.
		$a_01_11 = {30 78 30 34 2c 20 73 65 6e 64 20 25 64 20 73 75 63 63 65 73 73 2e } //1 0x04, send %d success.
		$a_01_12 = {52 65 63 76 20 55 44 44 20 52 65 73 70 6f 6e 73 65 20 46 61 69 6c 21 } //1 Recv UDD Response Fail!
		$a_01_13 = {4f 6e 6c 69 6e 65 20 46 61 69 6c 21 57 61 69 74 20 66 6f 72 20 25 64 20 6d 69 6e 73 } //1 Online Fail!Wait for %d mins
		$a_01_14 = {45 78 65 63 75 74 65 20 6f 72 64 65 72 20 3a 25 73 20 46 61 69 6c 65 64 21 20 2d 20 25 64 } //1 Execute order :%s Failed! - %d
		$a_01_15 = {45 6e 63 72 79 70 74 31 20 46 61 69 6c 21 } //1 Encrypt1 Fail!
		$a_01_16 = {30 78 33 46 20 54 43 54 2d 25 64 2e 2e 2e } //1 0x3F TCT-%d...
		$a_01_17 = {30 78 30 37 20 43 54 2d 25 64 20 46 41 49 4c 2e } //1 0x07 CT-%d FAIL.
		$a_01_18 = {30 78 30 36 20 4f 46 20 57 46 25 64 6d } //1 0x06 OF WF%dm
		$a_01_19 = {30 78 33 45 20 53 4c 45 50 2d 25 64 20 6d } //1 0x3E SLEP-%d m
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1) >=4
 
}