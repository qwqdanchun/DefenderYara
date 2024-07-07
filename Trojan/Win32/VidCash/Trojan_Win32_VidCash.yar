
rule Trojan_Win32_VidCash{
	meta:
		description = "Trojan:Win32/VidCash,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_01_0 = {56 50 4e 53 2e 56 50 4e 53 41 70 70 20 3d 20 73 20 27 4d 53 20 4d 65 73 73 27 } //2 VPNS.VPNSApp = s 'MS Mess'
		$a_01_1 = {56 65 72 73 69 6f 6e 49 6e 64 65 70 65 6e 64 65 6e 74 50 72 6f 67 49 44 20 3d 20 73 20 27 56 50 4e 53 2e 56 50 4e 53 53 75 70 70 6f 72 74 27 } //2 VersionIndependentProgID = s 'VPNS.VPNSSupport'
		$a_00_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6d 00 65 00 64 00 69 00 61 00 62 00 75 00 73 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 68 00 61 00 6e 00 64 00 6c 00 65 00 72 00 2e 00 70 00 68 00 70 00 3f 00 70 00 69 00 64 00 3d 00 } //2 http://www.mediabusnetwork.com/phandler.php?pid=
		$a_00_3 = {5c 00 73 00 65 00 61 00 72 00 63 00 68 00 5f 00 72 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //2 \search_res.txt
		$a_00_4 = {77 00 77 00 77 00 2e 00 73 00 74 00 75 00 62 00 68 00 75 00 62 00 2e 00 63 00 6f 00 6d 00 3f 00 } //2 www.stubhub.com?
		$a_00_5 = {2e 00 68 00 6f 00 70 00 2e 00 63 00 6c 00 69 00 63 00 6b 00 62 00 61 00 6e 00 6b 00 2e 00 6e 00 65 00 74 00 } //2 .hop.clickbank.net
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2) >=10
 
}
rule Trojan_Win32_VidCash_2{
	meta:
		description = "Trojan:Win32/VidCash,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_02_0 = {64 3a 5c 77 6f 72 6b 5c 6d 79 70 72 6f 6a 65 63 74 73 5c 76 69 64 65 6f 63 61 63 68 5c 6c 6f 61 64 65 72 5c 5f 5f 63 6f 6e 66 5f 90 02 40 2e 70 64 62 90 00 } //2
		$a_01_1 = {6f 00 6e 00 6c 00 69 00 6e 00 65 00 73 00 74 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 2e 00 63 00 6f 00 6d 00 00 00 00 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 00 00 00 00 6f 00 70 00 65 00 6e 00 00 00 00 00 4d 00 61 00 6c 00 77 00 61 00 72 00 65 00 20 00 41 00 6c 00 65 00 72 00 74 00 00 00 57 00 61 00 72 00 6e 00 69 00 6e 00 67 00 21 } //2
		$a_00_2 = {52 00 65 00 63 00 6f 00 6d 00 65 00 6e 00 64 00 61 00 74 00 69 00 6f 00 6e 00 73 00 3a 00 20 00 20 00 20 00 20 00 20 00 43 00 6c 00 69 00 63 00 6b 00 20 00 59 00 65 00 73 00 20 00 74 00 6f 00 20 00 67 00 65 00 74 00 20 00 61 00 6c 00 6c 00 20 00 61 00 76 00 61 00 69 00 6c 00 61 00 62 00 6c 00 65 00 20 00 61 00 6e 00 74 00 69 00 73 00 70 00 79 00 77 00 61 00 72 00 65 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 2e 00 } //2 Recomendations:     Click Yes to get all available antispyware software.
	condition:
		((#a_02_0  & 1)*2+(#a_01_1  & 1)*2+(#a_00_2  & 1)*2) >=4
 
}
rule Trojan_Win32_VidCash_3{
	meta:
		description = "Trojan:Win32/VidCash,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 09 00 00 "
		
	strings :
		$a_01_0 = {76 00 69 00 70 00 2d 00 63 00 6c 00 69 00 63 00 6b 00 2d 00 63 00 6f 00 75 00 6e 00 74 00 } //1 vip-click-count
		$a_01_1 = {76 00 69 00 70 00 2d 00 6c 00 61 00 73 00 74 00 2d 00 63 00 6c 00 69 00 63 00 6b 00 } //1 vip-last-click
		$a_01_2 = {6c 00 61 00 73 00 74 00 2d 00 75 00 70 00 64 00 61 00 74 00 65 00 2d 00 63 00 68 00 65 00 63 00 6b 00 } //1 last-update-check
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 65 00 64 00 69 00 61 00 62 00 75 00 73 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 68 00 61 00 6e 00 64 00 6c 00 65 00 72 00 2e 00 70 00 68 00 70 00 3f 00 } //5 http://mediabusnetwork.com/phandler.php?
		$a_01_4 = {72 00 64 00 20 00 2f 00 53 00 20 00 2f 00 51 00 20 00 6d 00 61 00 69 00 6e 00 2d 00 66 00 69 00 6c 00 65 00 73 00 } //2 rd /S /Q main-files
		$a_01_5 = {72 00 64 00 20 00 2f 00 53 00 20 00 2f 00 51 00 20 00 6f 00 74 00 68 00 65 00 72 00 2d 00 66 00 69 00 6c 00 65 00 73 00 } //2 rd /S /Q other-files
		$a_01_6 = {64 00 65 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 51 00 20 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 7a 00 69 00 70 00 } //2 del /F /Q update.zip
		$a_01_7 = {73 00 74 00 61 00 72 00 74 00 20 00 25 00 57 00 4f 00 52 00 4b 00 44 00 49 00 52 00 25 00 5c 00 5f 00 5f 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 5f 00 74 00 6f 00 6f 00 6c 00 5f 00 5f 00 2e 00 65 00 78 00 65 00 20 00 } //4 start %WORKDIR%\__startup_tool__.exe 
		$a_01_8 = {73 00 65 00 74 00 20 00 4f 00 55 00 54 00 44 00 49 00 52 00 3d 00 25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 } //1 set OUTDIR=%windir%
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*5+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*4+(#a_01_8  & 1)*1) >=12
 
}