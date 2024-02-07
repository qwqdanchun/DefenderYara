
rule Backdoor_Win64_CobaltStrike_UID_dha{
	meta:
		description = "Backdoor:Win64/CobaltStrike.UID!dha,SIGNATURE_TYPE_PEHSTR,02 00 02 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {39 30 39 30 39 30 39 30 2d 39 30 39 30 2d 35 61 34 64 2d 34 31 35 32 2d 35 35 34 38 38 39 65 35 34 38 38 31 } //01 00  90909090-9090-5a4d-4152-554889e54881
		$a_01_1 = {39 30 39 30 39 30 39 30 2d 39 30 39 30 2d 39 30 39 30 2d 39 30 34 64 2d 35 61 34 31 35 32 35 35 34 38 38 39 } //01 00  90909090-9090-9090-904d-5a4152554889
		$a_01_2 = {34 64 39 30 39 30 39 30 2d 34 31 35 61 2d 35 35 35 32 2d 34 38 38 39 2d 65 35 34 38 38 31 65 63 32 30 30 30 } //01 00  4d909090-415a-5552-4889-e54881ec2000
		$a_01_3 = {61 35 63 39 62 37 63 33 2d 66 61 38 32 2d 62 36 64 34 2d 63 37 63 66 2d 63 37 32 38 63 31 65 37 33 38 34 62 } //01 00  a5c9b7c3-fa82-b6d4-c7cf-c728c1e7384b
		$a_01_4 = {32 62 30 63 34 38 33 63 2d 38 33 62 64 2d 63 33 63 33 2d 34 38 30 30 2d 32 38 64 38 32 62 34 61 37 37 33 63 } //01 00  2b0c483c-83bd-c3c3-4800-28d82b4a773c
		$a_01_5 = {30 30 30 30 32 30 65 63 2d 34 38 30 30 2d 31 64 38 64 2d 65 61 66 66 2d 66 66 66 66 34 38 38 39 64 66 34 38 } //01 00  000020ec-4800-1d8d-eaff-ffff4889df48
		$a_01_6 = {32 65 32 65 32 65 32 65 2d 32 65 32 65 2d 32 65 32 65 2d 32 65 32 65 2d 32 65 32 65 32 65 32 65 32 65 32 65 } //00 00  2e2e2e2e-2e2e-2e2e-2e2e-2e2e2e2e2e2e
	condition:
		any of ($a_*)
 
}