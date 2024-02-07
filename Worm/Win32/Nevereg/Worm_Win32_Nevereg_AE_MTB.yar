
rule Worm_Win32_Nevereg_AE_MTB{
	meta:
		description = "Worm:Win32/Nevereg.AE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 69 6c 6c 41 56 } //01 00  KillAV
		$a_01_1 = {50 6c 75 74 6f 6e 58 } //01 00  PlutonX
		$a_01_2 = {78 52 61 4b 65 48 } //01 00  xRaKeH
		$a_01_3 = {56 57 51 53 52 31 } //01 00  VWQSR1
		$a_01_4 = {49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 } //01 00  InternetGetConnectedState
		$a_01_5 = {47 65 74 44 69 73 6b 46 72 65 65 53 70 61 63 65 45 78 41 } //01 00  GetDiskFreeSpaceExA
		$a_01_6 = {50 61 74 68 46 69 6c 65 45 78 69 73 74 73 41 } //01 00  PathFileExistsA
		$a_01_7 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 65 00 64 00 32 00 6b 00 } //01 00  SOFTWARE\ed2k
		$a_01_8 = {57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 44 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 4d 00 6f 00 76 00 69 00 65 00 7a 00 43 00 68 00 61 00 6e 00 6e 00 65 00 6c 00 73 00 49 00 6e 00 73 00 74 00 61 00 6c 00 65 00 72 00 20 00 4b 00 65 00 79 00 20 00 47 00 65 00 6e 00 65 00 72 00 61 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  WINDOWS\Drivers\MoviezChannelsInstaler Key Generator.exe
	condition:
		any of ($a_*)
 
}