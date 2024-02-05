
rule Trojan_Win32_CrashOverride_A_dha{
	meta:
		description = "Trojan:Win32/CrashOverride.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,38 00 38 00 0a 00 00 0a 00 "
		
	strings :
		$a_80_0 = {2f 63 20 73 63 20 73 74 6f 70 20 25 73 } ///c sc stop %s  0a 00 
		$a_80_1 = {4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 37 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 31 3b 20 49 6e 66 6f 50 61 74 68 2e 31 29 } //Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1)  0a 00 
		$a_80_2 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 57 } //CreateProcessW  0a 00 
		$a_80_3 = {50 4f 53 54 } //POST  0a 00 
		$a_80_4 = {31 30 2e 31 35 2e 31 2e 36 39 3a 33 31 32 38 } //10.15.1.69:3128  05 00 
		$a_80_5 = {73 63 20 63 72 65 61 74 65 20 25 6c 73 20 74 79 70 65 3d 20 6f 77 6e 20 73 74 61 72 74 3d 20 61 75 74 6f 20 65 72 72 6f 72 3d 20 69 67 6e 6f 72 65 20 62 69 6e 70 61 74 68 3d 20 22 25 6c 73 22 20 64 69 73 70 6c 61 79 6e 61 6d 65 3d 20 22 25 6c 73 } //sc create %ls type= own start= auto error= ignore binpath= "%ls" displayname= "%ls  05 00 
		$a_80_6 = {2e 72 64 61 74 61 24 7a 7a 7a 64 62 67 } //.rdata$zzzdbg  01 00 
		$a_80_7 = {39 33 2e 31 31 35 2e 32 37 2e 35 37 } //93.115.27.57  01 00 
		$a_80_8 = {35 2e 33 39 2e 32 31 38 2e 31 35 32 } //5.39.218.152  01 00 
		$a_80_9 = {53 52 56 5f 57 53 55 53 } //SRV_WSUS  00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_CrashOverride_A_dha_2{
	meta:
		description = "Trojan:Win32/CrashOverride.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,37 00 36 00 13 00 00 0a 00 "
		
	strings :
		$a_80_0 = {53 59 53 5f 42 41 53 43 4f 4e 2e 43 4f 4d } //SYS_BASCON.COM  0a 00 
		$a_80_1 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 } //SYSTEM\CurrentControlSet\Services  0a 00 
		$a_80_2 = {59 00 3a 00 5c 00 00 00 5a 00 3a 00 } //Y  0a 00 
		$a_80_3 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //CreateToolhelp32Snapshot  01 00 
		$a_80_4 = {2a 2e 70 61 66 } //*.paf  01 00 
		$a_80_5 = {2a 2e 58 52 46 } //*.XRF  01 00 
		$a_80_6 = {2a 2e 70 63 6d 70 } //*.pcmp  01 00 
		$a_80_7 = {2a 2e 70 63 6d 69 } //*.pcmi  01 00 
		$a_80_8 = {2a 2e 70 63 6d 74 } //*.pcmt  01 00 
		$a_80_9 = {2a 2e 7a 69 70 } //*.zip  01 00 
		$a_80_10 = {2a 2e 72 61 72 } //*.rar  01 00 
		$a_80_11 = {2a 2e 74 61 72 } //*.tar  01 00 
		$a_80_12 = {63 73 72 73 73 2e 65 78 65 } //csrss.exe  01 00 
		$a_80_13 = {6c 73 61 73 73 2e 65 78 65 } //lsass.exe  01 00 
		$a_80_14 = {73 68 75 74 64 6f 77 6e 2e 65 78 65 } //shutdown.exe  01 00 
		$a_80_15 = {73 70 6f 6f 6c 73 73 2e 65 78 65 } //spoolss.exe  01 00 
		$a_80_16 = {73 70 6f 6f 6c 73 76 2e 65 78 65 } //spoolsv.exe  01 00 
		$a_80_17 = {77 69 6e 6c 6f 67 6f 6e 2e 65 78 65 } //winlogon.exe  01 00 
		$a_80_18 = {77 75 61 75 63 6c 74 2e 65 78 65 } //wuauclt.exe  00 00 
	condition:
		any of ($a_*)
 
}