
rule TrojanDownloader_Win32_Zlob_APT{
	meta:
		description = "TrojanDownloader:Win32/Zlob.APT,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 00 41 00 44 00 31 00 43 00 6f 00 6d 00 70 00 6c 00 65 00 74 00 65 00 52 00 65 00 6d 00 6f 00 76 00 65 00 4e 00 6f 00 77 00 5f 00 } //01 00  _AD1CompleteRemoveNow_
		$a_01_1 = {5f 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 5f 00 72 00 65 00 64 00 69 00 72 00 65 00 63 00 74 00 5f 00 65 00 76 00 65 00 6e 00 74 00 5f 00 } //01 00  _browser_redirect_event_
		$a_01_2 = {2f 00 67 00 65 00 74 00 2d 00 6c 00 61 00 73 00 74 00 2d 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 70 00 68 00 70 00 3f 00 73 00 69 00 64 00 3d 00 30 00 26 00 61 00 69 00 64 00 3d 00 30 00 26 00 73 00 61 00 69 00 64 00 3d 00 30 00 26 00 70 00 6e 00 3d 00 26 00 63 00 6f 00 6e 00 66 00 69 00 67 00 3d 00 63 00 6e 00 } //01 00  /get-last-update.php?sid=0&aid=0&said=0&pn=&config=cn
		$a_01_3 = {77 00 77 00 77 00 2e 00 74 00 68 00 65 00 6e 00 6d 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 2e 00 63 00 6f 00 6d 00 } //00 00  www.thenmnetwork.com
	condition:
		any of ($a_*)
 
}