
rule Trojan_Win32_AnchorLoader_A_ibt{
	meta:
		description = "Trojan:Win32/AnchorLoader.A!ibt,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {6a 61 33 c0 89 45 f6 66 89 ?? ?? 58 6a 6e 66 89 ?? ?? 58 6a 63 66 89 ?? ?? 58 6a 68 66 89 ?? ?? 58 6a 6f 66 89 ?? ?? 58 6a 72 66 89 ?? ?? 58 66 89 ?? ?? 33 c0 66 89 ?? ?? 8d 45 e8 } //1
		$a_80_1 = {41 6e 63 68 6f 72 5f 78 38 36 2e 65 78 65 } //Anchor_x86.exe  1
		$a_80_2 = {52 65 6c 65 61 73 65 5c 41 6e 63 68 6f 72 5f 78 38 36 2e 70 64 62 } //Release\Anchor_x86.pdb  1
	condition:
		((#a_03_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1) >=3
 
}
rule Trojan_Win32_AnchorLoader_A_ibt_2{
	meta:
		description = "Trojan:Win32/AnchorLoader.A!ibt,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 18 00 00 "
		
	strings :
		$a_80_0 = {57 69 6e 48 54 54 50 20 6c 6f 61 64 65 72 2f 31 2e 30 } //WinHTTP loader/1.0  10
		$a_80_1 = {2f 31 30 30 31 2f } ///1001/  10
		$a_80_2 = {63 6d 64 2e 65 78 65 20 2f 43 20 74 69 6d 65 6f 75 74 20 35 20 26 26 20 73 63 2e 65 78 65 20 73 74 6f 70 20 25 53 } //cmd.exe /C timeout 5 && sc.exe stop %S  10
		$a_80_3 = {2f 43 20 74 69 6d 65 6f 75 74 20 33 30 20 26 26 20 73 63 2e 65 78 65 20 64 65 6c 65 74 65 20 25 53 20 20 20 2f 43 20 74 69 6d 65 6f 75 74 20 34 30 } ///C timeout 30 && sc.exe delete %S   /C timeout 40  10
		$a_80_4 = {61 6e 63 68 6f 72 44 4e 53 5f 78 36 34 } //anchorDNS_x64  10
		$a_80_5 = {61 6e 63 68 6f 72 49 6e 73 74 61 6c 6c 65 72 5f 78 38 36 } //anchorInstaller_x86  10
		$a_80_6 = {41 6e 63 68 6f 72 5f 78 36 34 } //Anchor_x64  10
		$a_80_7 = {61 6e 63 68 6f 72 44 69 61 67 } //anchorDiag  10
		$a_80_8 = {43 6f 6e 74 72 6f 6c 5f 52 75 6e 44 4c 4c } //Control_RunDLL  1
		$a_80_9 = {54 61 73 6b 20 61 75 74 6f 75 70 64 61 74 65 } //Task autoupdate  1
		$a_80_10 = {72 75 6e 63 6f 6d 6d 61 6e 64 28 25 73 29 2c 20 70 69 64 20 30 } //runcommand(%s), pid 0  1
		$a_80_11 = {5b 4c 4f 47 5f 45 4d 45 52 47 5d } //[LOG_EMERG]  1
		$a_80_12 = {5b 4c 4f 47 5f 41 4c 45 52 54 5d } //[LOG_ALERT]  1
		$a_80_13 = {68 49 63 6d 70 46 69 6c 65 20 65 72 72 6f 72 3a } //hIcmpFile error:  1
		$a_80_14 = {63 72 65 61 74 65 64 20 70 72 6f 63 65 73 73 20 22 25 73 22 2c 20 70 69 64 20 25 69 } //created process "%s", pid %i  1
		$a_80_15 = {77 74 66 69 73 6d 79 69 70 2e 63 6f 6d } //wtfismyip.com  1
		$a_80_16 = {69 63 61 6e 68 61 7a 69 70 2e 63 6f 6d } //icanhazip.com  1
		$a_80_17 = {68 61 6e 63 } //hanc  5
		$a_80_18 = {54 72 69 67 67 65 72 44 61 69 6c 79 } //TriggerDaily  5
		$a_80_19 = {54 72 69 67 67 65 72 4c 6f 67 6f 6e } //TriggerLogon  5
		$a_80_20 = {2f 70 6c 61 69 6e 2f 63 6c 69 65 6e 74 69 70 } ///plain/clientip  5
		$a_80_21 = {67 65 74 20 63 6f 6d 6d 61 6e 64 3a 20 69 6e 63 6f 64 65 20 25 73 } //get command: incode %s  5
		$a_80_22 = {77 68 65 72 65 20 67 75 69 64 3f 20 77 68 6f 20 77 69 6c 6c 20 64 6f 20 69 74 3f } //where guid? who will do it?  5
		$a_80_23 = {53 76 63 68 6f 73 74 50 75 73 68 53 65 72 76 69 63 65 47 6c 6f 62 61 6c 73 } //SvchostPushServiceGlobals  5
	condition:
		((#a_80_0  & 1)*10+(#a_80_1  & 1)*10+(#a_80_2  & 1)*10+(#a_80_3  & 1)*10+(#a_80_4  & 1)*10+(#a_80_5  & 1)*10+(#a_80_6  & 1)*10+(#a_80_7  & 1)*10+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1+(#a_80_11  & 1)*1+(#a_80_12  & 1)*1+(#a_80_13  & 1)*1+(#a_80_14  & 1)*1+(#a_80_15  & 1)*1+(#a_80_16  & 1)*1+(#a_80_17  & 1)*5+(#a_80_18  & 1)*5+(#a_80_19  & 1)*5+(#a_80_20  & 1)*5+(#a_80_21  & 1)*5+(#a_80_22  & 1)*5+(#a_80_23  & 1)*5) >=27
 
}