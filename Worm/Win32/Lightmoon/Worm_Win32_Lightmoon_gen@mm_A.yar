
rule Worm_Win32_Lightmoon_gen@mm_A{
	meta:
		description = "Worm:Win32/Lightmoon.gen@mm!A,SIGNATURE_TYPE_PEHSTR_EXT,64 00 3d 00 10 00 00 14 00 "
		
	strings :
		$a_00_0 = {43 6f 70 79 59 6f 75 72 55 66 64 } //14 00  CopyYourUfd
		$a_00_1 = {43 6f 70 79 57 6f 52 6d } //14 00  CopyWoRm
		$a_00_2 = {73 65 74 4d 79 52 65 67 69 73 74 65 72 } //14 00  setMyRegister
		$a_01_3 = {53 63 61 6e 45 6d 61 69 6c } //14 00  ScanEmail
		$a_00_4 = {66 69 6c 65 48 4f 73 74 } //14 00  fileHOst
		$a_00_5 = {54 00 6f 00 6c 00 6f 00 6e 00 67 00 20 00 41 00 6b 00 75 00 2e 00 2e 00 } //01 00  Tolong Aku..
		$a_00_6 = {2d 00 2d 00 2d 00 2d 00 5f 00 3d 00 5f 00 4e 00 65 00 78 00 74 00 50 00 61 00 72 00 74 00 5f 00 30 00 30 00 30 00 5f 00 } //01 00  ----_=_NextPart_000_
		$a_00_7 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 49 00 6d 00 61 00 67 00 65 00 20 00 46 00 69 00 6c 00 65 00 20 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 20 00 4f 00 70 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 } //01 00  SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\
		$a_00_8 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 41 00 63 00 63 00 6f 00 75 00 6e 00 74 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 5c 00 41 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 5c 00 } //01 00  Software\Microsoft\Internet Account Manager\Accounts\
		$a_00_9 = {5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 5c 00 53 00 75 00 70 00 65 00 72 00 48 00 69 00 64 00 64 00 65 00 6e 00 } //01 00  \Explorer\Advanced\Folder\SuperHidden
		$a_00_10 = {2a 00 2e 00 68 00 74 00 6d 00 } //01 00  *.htm
		$a_00_11 = {2e 00 63 00 6d 00 64 00 } //01 00  .cmd
		$a_00_12 = {5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 } //01 00  \Explorer\Advanced
		$a_00_13 = {5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 43 00 61 00 62 00 69 00 6e 00 65 00 74 00 53 00 74 00 61 00 74 00 65 00 } //01 00  \Explorer\CabinetState
		$a_00_14 = {5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  \Policies\System
		$a_00_15 = {5c 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 } //00 00  \startup
	condition:
		any of ($a_*)
 
}