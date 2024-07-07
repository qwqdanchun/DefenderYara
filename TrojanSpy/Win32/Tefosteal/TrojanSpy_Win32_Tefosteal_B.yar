
rule TrojanSpy_Win32_Tefosteal_B{
	meta:
		description = "TrojanSpy:Win32/Tefosteal.B,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 66 00 6f 00 50 00 43 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 69 00 6e 00 66 00 6f 00 2e 00 74 00 78 00 74 00 } //5 \Files\InfoPC\Systeminfo.txt
		$a_01_1 = {5c 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 66 00 6f 00 50 00 43 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5f 00 49 00 6e 00 66 00 6f 00 2e 00 74 00 78 00 74 00 } //5 \Files\InfoPC\System_Info.txt
		$a_01_2 = {5c 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 66 00 6f 00 50 00 43 00 5c 00 42 00 53 00 53 00 49 00 44 00 2e 00 74 00 78 00 74 00 } //1 \Files\InfoPC\BSSID.txt
		$a_01_3 = {5c 00 46 00 69 00 6c 00 65 00 73 00 5c 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 5c 00 } //1 \Files\Discord\Local Storage\
		$a_01_4 = {50 61 73 73 77 6f 72 64 52 65 63 6f 76 65 72 79 43 68 72 6f 6d 65 2e 65 78 65 } //1 PasswordRecoveryChrome.exe
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}