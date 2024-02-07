
rule Trojan_Win32_Redline_LKV_MTB{
	meta:
		description = "Trojan:Win32/Redline.LKV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 00 44 00 3a 00 20 00 77 00 61 00 61 00 73 00 66 00 6c 00 6c 00 65 00 74 00 61 00 73 00 66 00 76 00 31 00 31 00 } //01 00  ID: waasflletasfv11
		$a_01_1 = {25 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 25 00 5c 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 5c 00 6c 00 65 00 76 00 65 00 6c 00 64 00 62 00 } //01 00  %appdata%\discord\Local Storage\leveldb
		$a_01_2 = {52 00 65 00 6d 00 6f 00 76 00 65 00 67 00 5b 00 40 00 6e 00 61 00 6d 00 65 00 3d 00 5c 00 50 00 61 00 73 00 73 00 77 00 53 00 74 00 72 00 69 00 6e 00 67 00 2e 00 52 00 65 00 6d 00 6f 00 76 00 65 00 6f 00 72 00 64 00 5c 00 5d 00 2f 00 76 00 61 00 6c 00 75 00 53 00 74 00 72 00 69 00 6e 00 67 00 2e 00 } //01 00  Removeg[@name=\PasswString.Removeord\]/valuString.
		$a_01_3 = {2a 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2a 00 } //01 00  *wallet*
		$a_01_4 = {62 00 47 00 39 00 69 00 61 00 6d 00 52 00 77 00 61 00 32 00 68 00 6c 00 59 00 32 00 46 00 77 00 61 00 32 00 6c 00 71 00 61 00 6d 00 52 00 72 00 5a 00 32 00 4e 00 71 00 61 00 47 00 74 00 70 00 59 00 6e 00 78 00 49 00 59 00 58 00 4a 00 74 00 62 00 32 00 35 00 35 00 56 00 32 00 46 00 73 00 62 00 47 00 56 00 30 00 43 00 6d 00 46 00 6c 00 59 00 57 00 4e 00 6f 00 61 00 32 00 35 00 74 00 5a 00 57 00 5a 00 77 00 61 00 47 00 56 00 77 00 59 00 32 00 4e 00 70 00 62 00 32 00 35 00 69 00 62 00 32 00 39 00 6f 00 59 00 32 00 74 00 76 00 62 00 6d 00 39 00 6c 00 5a 00 57 00 31 00 6e 00 66 00 45 00 4e 00 76 00 61 00 57 00 34 00 35 00 4f 00 46 00 64 00 68 00 62 00 47 00 78 00 6c 00 64 00 41 00 70 00 } //00 00  bG9iamRwa2hlY2Fwa2lqamRrZ2NqaGtpYnxIYXJtb255V2FsbGV0CmFlYWNoa25tZWZwaGVwY2Npb25ib29oY2tvbm9lZW1nfENvaW45OFdhbGxldAp
	condition:
		any of ($a_*)
 
}