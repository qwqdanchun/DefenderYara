
rule Trojan_Win32_Wopla_gen_Y{
	meta:
		description = "Trojan:Win32/Wopla.gen!Y,SIGNATURE_TYPE_PEHSTR_EXT,ffffffeb 00 ffffffea 00 1c 00 00 0a 00 "
		
	strings :
		$a_00_0 = {43 72 65 61 74 65 46 69 6c 65 41 } //0a 00  CreateFileA
		$a_01_1 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //0a 00  GetSystemDirectoryA
		$a_00_2 = {57 72 69 74 65 46 69 6c 65 } //0a 00  WriteFile
		$a_00_3 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //0a 00  CreateProcessA
		$a_00_4 = {47 65 74 46 69 6c 65 53 69 7a 65 } //0a 00  GetFileSize
		$a_01_5 = {43 72 65 61 74 65 54 68 72 65 61 64 } //0a 00  CreateThread
		$a_00_6 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //0a 00  CreateMutexA
		$a_00_7 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 41 } //0a 00  GetStartupInfoA
		$a_00_8 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //0a 00  AdjustTokenPrivileges
		$a_00_9 = {4c 6f 6f 6b 75 70 50 72 69 76 69 6c 65 67 65 56 61 6c 75 65 41 } //0a 00  LookupPrivilegeValueA
		$a_00_10 = {46 74 70 50 75 74 46 69 6c 65 41 } //0a 00  FtpPutFileA
		$a_00_11 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 41 } //0a 00  InternetConnectA
		$a_01_12 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //0a 00  InternetOpenA
		$a_01_13 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //0a 00  InternetReadFile
		$a_01_14 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //0a 00  InternetOpenUrlA
		$a_00_15 = {49 73 55 73 65 72 41 64 6d 69 6e } //0a 00  IsUserAdmin
		$a_01_16 = {73 65 74 75 70 61 70 69 2e 64 6c 6c } //0a 00  setupapi.dll
		$a_01_17 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 6d 75 6c 74 69 70 61 72 74 2f 6d 69 78 65 64 3b 20 62 6f 75 6e 64 61 72 79 3d 22 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 25 73 22 } //0a 00  Content-Type: multipart/mixed; boundary="----------%s"
		$a_01_18 = {25 73 53 75 62 6a 65 63 74 3a 20 25 30 38 58 5f 25 30 38 58 } //0a 00  %sSubject: %08X_%08X
		$a_01_19 = {25 73 54 6f 3a 20 25 73 } //0a 00  %sTo: %s
		$a_01_20 = {46 72 6f 6d 3a 20 3c 25 73 3e } //0a 00  From: <%s>
		$a_01_21 = {44 61 74 65 3a 20 25 61 2c 20 25 64 20 25 62 20 25 59 20 25 48 3a 25 4d 3a 25 53 } //0a 00  Date: %a, %d %b %Y %H:%M:%S
		$a_01_22 = {50 6c 61 63 65 68 6f 6c 64 65 72 5f 44 61 74 61 } //01 00  Placeholder_Data
		$a_01_23 = {2e 6e 75 6c 6c 61 64 64 72 65 73 73 2e 63 6f 6d } //01 00  .nulladdress.com
		$a_01_24 = {2e 73 65 63 64 65 70 2e 69 6e 66 6f } //01 00  .secdep.info
		$a_01_25 = {73 74 5f 6c 6f 67 2e 64 61 74 } //01 00  st_log.dat
		$a_01_26 = {73 6d 5f 6c 6f 67 2e 64 61 74 } //01 00  sm_log.dat
		$a_01_27 = {73 63 5f 6c 6f 67 2e 64 61 74 } //00 00  sc_log.dat
	condition:
		any of ($a_*)
 
}