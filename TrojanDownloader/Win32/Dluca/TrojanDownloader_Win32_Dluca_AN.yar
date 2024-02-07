
rule TrojanDownloader_Win32_Dluca_AN{
	meta:
		description = "TrojanDownloader:Win32/Dluca.AN,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 1b 00 00 01 00 "
		
	strings :
		$a_00_0 = {71 64 65 6c 77 62 69 2e 74 6d 70 } //01 00  qdelwbi.tmp
		$a_00_1 = {41 4f 4c 20 46 72 61 6d 65 32 35 } //01 00  AOL Frame25
		$a_00_2 = {5f 49 45 5f 48 6f 6f 6b 5f 57 6e 64 5f } //01 00  _IE_Hook_Wnd_
		$a_00_3 = {5c 25 73 5f 75 70 64 61 74 65 2e 65 78 65 } //01 00  \%s_update.exe
		$a_00_4 = {5c 64 69 61 6c 65 72 73 } //01 00  \dialers
		$a_00_5 = {63 3a 5c 53 53 55 70 64 61 74 65 2e 65 78 65 } //01 00  c:\SSUpdate.exe
		$a_00_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_7 = {2d 6b 69 6c 6c 20 25 73 20 25 73 20 2f 69 6e 73 74 61 6c 6c } //01 00  -kill %s %s /install
		$a_00_8 = {25 73 5c 53 61 66 65 53 65 61 72 63 68 2e 64 6c 6c } //01 00  %s\SafeSearch.dll
		$a_00_9 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 53 61 66 65 53 65 61 72 63 68 } //01 00  Software\Microsoft\Windows\Currentversion\Uninstall\SafeSearch
		$a_00_10 = {63 3a 5c 70 72 6f 67 72 61 6d 20 66 69 6c 65 73 5c 70 72 69 6d 65 73 6f 66 74 5c 73 61 66 65 73 65 61 72 63 68 5c 73 61 66 65 73 65 61 72 63 68 2e 65 78 65 } //01 00  c:\program files\primesoft\safesearch\safesearch.exe
		$a_00_11 = {68 74 74 70 3a 2f 2f 32 30 34 2e 31 37 37 2e 39 32 2e 32 30 37 2f 73 61 66 65 73 65 61 72 63 68 2f 69 6e 64 65 78 2e 70 68 70 3f 73 72 63 68 3d 25 73 26 70 69 6e 3d 25 73 26 63 63 69 6e 66 6f 3d 25 73 } //01 00  http://204.177.92.207/safesearch/index.php?srch=%s&pin=%s&ccinfo=%s
		$a_00_12 = {32 31 36 2e 31 37 37 2e 37 33 2e 31 33 39 } //01 00  216.177.73.139
		$a_00_13 = {68 74 74 70 3a 2f 2f 32 30 34 2e 31 37 37 2e 39 32 2e 31 39 31 2f } //01 00  http://204.177.92.191/
		$a_00_14 = {68 74 74 70 3a 2f 2f 73 69 74 65 66 69 6e 64 65 72 2e 76 65 72 69 73 69 67 6e 2e 63 6f 6d 2f } //01 00  http://sitefinder.verisign.com/
		$a_00_15 = {65 70 73 2e 6e 65 77 2e 73 65 61 72 63 68 2e 6e 65 77 2e 6e 65 74 2f 61 70 70 73 2f 65 70 73 } //01 00  eps.new.search.new.net/apps/eps
		$a_00_16 = {77 77 77 2e 63 6f 6d 6d 6f 6e 6e 61 6d 65 2e 63 6f 6d 2f 65 6e 2f 70 6f 77 65 72 73 65 61 72 63 68 } //01 00  www.commonname.com/en/powersearch
		$a_00_17 = {61 6f 6c 73 65 61 72 63 68 2e 61 6f 6c 2e 63 6f 6d } //01 00  aolsearch.aol.com
		$a_00_18 = {68 6f 74 2e 61 6f 6c 2e 63 6f 6d } //01 00  hot.aol.com
		$a_00_19 = {77 77 77 2e 73 65 61 72 63 68 72 65 73 75 6c 74 2e 6e 65 74 } //01 00  www.searchresult.net
		$a_00_20 = {69 65 61 75 74 6f 73 65 61 72 63 68 } //01 00  ieautosearch
		$a_00_21 = {61 64 2e 64 6f 75 62 6c 65 63 6c 69 63 6b 2e 6e 65 74 } //01 00  ad.doubleclick.net
		$a_00_22 = {77 77 77 2e 69 67 6e 6b 65 79 77 6f 72 64 73 2e 63 6f 6d } //01 00  www.ignkeywords.com
		$a_00_23 = {61 75 74 6f 2e 73 65 61 72 63 68 2e 6d 73 6e 2e 63 6f 6d } //01 00  auto.search.msn.com
		$a_00_24 = {71 73 65 61 72 63 68 3a 2f 2f 74 69 74 6c 65 66 69 6c 74 65 72 3f } //01 00  qsearch://titlefilter?
		$a_00_25 = {68 74 74 70 3a 2f 2f 6d 73 64 76 6d 2e 63 6f 6d 2f } //01 00  http://msdvm.com/
		$a_02_26 = {8b 46 04 8b ce 50 e8 90 01 02 00 00 66 85 c0 74 2d 8b 0d 90 01 02 41 00 8b 56 04 51 52 55 55 55 55 68 00 7d 00 00 68 00 7d 00 00 55 53 68 90 01 02 41 00 55 ff 15 90 01 02 41 00 89 86 08 03 00 00 8b 86 08 03 00 00 3b c5 74 0b 50 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}