
rule Trojan_Win32_Lowzones_DZ{
	meta:
		description = "Trojan:Win32/Lowzones.DZ,SIGNATURE_TYPE_PEHSTR_EXT,32 00 2d 00 0b 00 00 "
		
	strings :
		$a_00_0 = {3c 73 63 72 69 70 74 3e 20 66 6f 72 20 28 69 3d 30 3b 20 69 3c 64 6f 63 75 6d 65 6e 74 2e 6c 69 6e 6b 73 2e 6c 65 6e 67 74 68 3b 20 69 2b 2b 29 20 7b 76 61 72 20 73 74 72 3d 64 6f 63 75 6d 65 6e 74 2e 6c 69 6e 6b 73 28 69 29 2e 68 72 65 66 3b 69 66 20 28 73 74 72 2e 69 6e 64 65 78 4f 66 28 22 2f 61 63 6c 6b 22 29 21 3d 2d 31 29 7b 61 6c 65 72 74 28 64 6f 63 75 6d 65 6e 74 2e 6c 69 6e 6b 73 28 69 29 2e 68 72 65 66 29 3b 62 72 65 61 6b 3b 7d 7d 3c 2f 73 63 72 69 70 74 3e } //10 <script> for (i=0; i<document.links.length; i++) {var str=document.links(i).href;if (str.indexOf("/aclk")!=-1){alert(document.links(i).href);break;}}</script>
		$a_02_1 = {3c 62 6f 64 79 [0-04] 61 64 5f 75 72 6c } //10
		$a_00_2 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 5a 00 6f 00 6e 00 65 00 73 00 5c 00 33 00 } //1 \CurrentVersion\Internet Settings\Zones\3
		$a_00_3 = {4c 00 6f 00 77 00 52 00 69 00 73 00 6b 00 46 00 69 00 6c 00 65 00 54 00 79 00 70 00 65 00 73 00 } //1 LowRiskFileTypes
		$a_00_4 = {2e 00 7a 00 69 00 70 00 3b 00 2e 00 72 00 61 00 72 00 3b 00 2e 00 6e 00 66 00 6f 00 3b 00 2e 00 74 00 78 00 74 00 3b 00 2e 00 65 00 78 00 65 00 3b 00 2e 00 62 00 61 00 74 00 3b 00 2e 00 63 00 6f 00 6d 00 3b 00 2e 00 63 00 6d 00 64 00 3b 00 2e 00 72 00 65 00 67 00 3b 00 2e 00 6d 00 73 00 69 00 3b 00 2e 00 68 00 74 00 6d 00 3b 00 } //1 .zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;
		$a_00_5 = {53 00 61 00 76 00 65 00 5a 00 6f 00 6e 00 65 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 } //1 SaveZoneInformation
		$a_00_6 = {52 00 75 00 6e 00 49 00 6e 00 76 00 61 00 6c 00 69 00 64 00 53 00 69 00 67 00 6e 00 61 00 74 00 75 00 72 00 65 00 73 00 } //1 RunInvalidSignatures
		$a_00_7 = {43 00 68 00 65 00 63 00 6b 00 45 00 78 00 65 00 53 00 69 00 67 00 6e 00 61 00 74 00 75 00 72 00 65 00 73 00 00 00 00 00 6e 00 6f 00 } //10
		$a_00_8 = {26 00 64 00 20 00 26 00 74 00 00 00 26 00 77 00 26 00 62 00 26 00 62 00 26 00 70 00 } //10
		$a_02_9 = {68 74 74 70 3a 2f 2f [0-08] 2e 63 6f 6d 2f 63 6c 69 63 6b 2f 3f 73 3d [0-08] 26 63 3d } //5
		$a_00_10 = {72 00 65 00 73 00 3a 00 2f 00 2f 00 53 00 69 00 6d 00 70 00 6c 00 65 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 44 00 65 00 6d 00 6f 00 2e 00 65 00 78 00 65 00 2f 00 23 00 } //5 res://SimpleBrowserDemo.exe/#
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_02_9  & 1)*5+(#a_00_10  & 1)*5) >=45
 
}