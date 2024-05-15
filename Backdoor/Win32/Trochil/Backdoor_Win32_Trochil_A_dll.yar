
rule Backdoor_Win32_Trochil_A_dll{
	meta:
		description = "Backdoor:Win32/Trochil.A.dll!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 30 00 00 01 00 "
		
	strings :
		$a_80_0 = {63 6f 6d 70 75 74 65 72 2e 73 65 63 75 72 69 74 79 2d 63 65 6e 74 65 72 73 2e 63 6f 6d } //computer.security-centers.com  01 00 
		$a_80_1 = {25 41 4c 4c 55 53 45 52 53 50 52 4f 46 49 4c 45 25 5c 57 45 76 65 6e 74 73 43 61 63 68 65 } //%ALLUSERSPROFILE%\WEventsCache  01 00 
		$a_80_2 = {57 4d 49 43 61 63 68 65 20 69 6e 66 6f 72 6d 61 74 69 6f 6e 20 66 72 6f 6d 20 57 69 6e 64 6f 77 73 20 4d 61 6e 61 67 65 6d 65 6e 74 20 66 69 6c 65 } //WMICache information from Windows Management file  01 00 
		$a_80_3 = {57 4d 49 43 61 63 68 65 45 76 65 6e 74 73 20 4d 6f 64 75 6c 65 73 20 53 65 72 76 69 63 65 } //WMICacheEvents Modules Service  01 00 
		$a_80_4 = {25 73 20 5b 25 73 3a 25 64 5d 20 25 75 } //%s [%s:%d] %u  01 00 
		$a_80_5 = {5c 64 65 73 74 72 75 63 74 69 6f 6e 5c 53 65 6c 66 44 65 73 74 72 75 63 74 69 6f 6e 2e 63 70 70 } //\destruction\SelfDestruction.cpp  01 00 
		$a_80_6 = {61 64 64 20 74 6f 20 73 65 6e 64 20 6d 73 67 20 66 61 69 6c 65 64 } //add to send msg failed  01 00 
		$a_80_7 = {63 72 65 61 74 65 20 65 78 69 74 65 76 65 6e 74 20 66 61 69 6c 65 64 2e } //create exitevent failed.  01 00 
		$a_80_8 = {63 72 65 61 74 65 20 70 61 72 61 6d 65 74 65 72 73 20 6b 65 79 20 66 61 69 6c 65 64 20 25 75 } //create parameters key failed %u  01 00 
		$a_80_9 = {63 72 65 61 74 65 20 73 6f 63 6b 65 74 20 66 61 69 6c 65 64 20 45 25 75 } //create socket failed E%u  01 00 
		$a_80_10 = {63 72 65 61 74 65 20 74 61 72 67 65 74 20 66 69 6c 65 5b 25 73 5d 20 66 6f 72 20 61 64 6a 75 73 74 20 74 69 6d 65 20 66 61 69 6c 65 64 2e } //create target file[%s] for adjust time failed.  01 00 
		$a_80_11 = {64 65 63 72 79 70 74 20 64 6c 6c 20 66 69 6c 65 } //decrypt dll file  01 00 
		$a_80_12 = {64 65 69 6e 69 74 20 73 65 72 76 61 6e 74 } //deinit servant  01 00 
		$a_80_13 = {64 65 69 6e 69 74 20 73 65 72 76 61 6e 74 73 68 65 6c 6c } //deinit servantshell  01 00 
		$a_80_14 = {44 65 69 6e 69 74 53 65 72 76 61 6e 74 } //DeinitServant  01 00 
		$a_80_15 = {67 65 74 20 61 64 64 72 65 73 73 20 6f 66 20 70 5b 25 73 5d 20 66 61 69 6c 65 64 } //get address of p[%s] failed  01 00 
		$a_80_16 = {67 65 74 20 69 70 20 66 6f 72 5b 25 73 5d 20 66 61 69 6c 65 64 2e 20 57 45 25 64 } //get ip for[%s] failed. WE%d  01 00 
		$a_80_17 = {47 65 74 20 74 61 72 67 65 74 64 69 72 20 74 69 6d 65 73 20 66 61 69 6c 65 64 5b 25 73 5d 2e } //Get targetdir times failed[%s].  01 00 
		$a_80_18 = {47 65 74 69 70 61 64 64 72 74 61 62 6c 65 20 66 61 69 6c 65 64 2e 20 45 25 75 } //Getipaddrtable failed. E%u  01 00 
		$a_80_19 = {69 6e 69 74 20 73 65 72 76 61 6e 74 20 6d 61 6e 61 67 65 72 20 66 61 69 6c 65 64 } //init servant manager failed  01 00 
		$a_80_20 = {69 6e 69 74 20 73 65 72 76 61 6e 74 2e 20 73 65 72 76 65 72 20 3a 20 25 73 3a 25 64 } //init servant. server : %s:%d  01 00 
		$a_80_21 = {69 6e 69 74 20 73 65 72 76 61 6e 74 73 68 65 6c 6c 2e 20 66 69 6c 65 70 61 74 68 20 69 73 20 25 73 25 73 } //init servantshell. filepath is %s%s  01 00 
		$a_80_22 = {49 6e 69 74 53 65 72 76 61 6e 74 } //InitServant  01 00 
		$a_80_23 = {69 6e 76 61 6c 69 64 20 74 69 6d 65 20 66 6f 72 20 5b 25 73 5d 5b 25 75 5d 5b 25 75 5d 5b 25 75 5d } //invalid time for [%s][%u][%u][%u]  01 00 
		$a_80_24 = {6c 6f 61 64 20 6d 65 6d 6c 69 62 72 61 72 79 20 66 61 69 6c 65 64 20 5b 25 73 5d } //load memlibrary failed [%s]  01 00 
		$a_80_25 = {6c 6f 61 64 20 73 65 72 76 61 6e 74 20 66 61 69 6c 65 64 } //load servant failed  01 00 
		$a_80_26 = {6c 6f 61 64 20 73 65 72 76 61 6e 74 63 6f 72 65 20 73 75 63 63 65 73 73 } //load servantcore success  01 00 
		$a_80_27 = {6e 6f 20 68 61 6e 64 6c 65 72 20 66 6f 72 20 5b 25 49 36 34 75 5d } //no handler for [%I64u]  01 00 
		$a_80_28 = {6f 70 65 6e 20 73 65 72 76 69 63 65 20 72 65 67 20 6b 65 79 20 66 61 69 6c 65 64 20 25 75 } //open service reg key failed %u  01 00 
		$a_80_29 = {6f 70 65 6e 20 74 61 72 67 65 74 5b 25 73 5d 20 66 61 69 6c 65 64 2e } //open target[%s] failed.  01 00 
		$a_80_30 = {70 63 72 65 61 74 65 20 73 6f 63 6b 65 74 20 66 61 69 6c 65 64 2e } //pcreate socket failed.  01 00 
		$a_80_31 = {70 72 6f 74 6f 63 6f 6c 20 3a 20 25 73 5b 25 64 5d } //protocol : %s[%d]  01 00 
		$a_80_32 = {72 65 63 76 20 6d 73 67 69 64 5b 25 49 36 34 75 5d 2e 20 74 72 79 20 74 6f 20 68 61 6e 64 6c 65 20 69 74 } //recv msgid[%I64u]. try to handle it  01 00 
		$a_80_33 = {73 65 6e 64 20 61 6e 64 20 72 65 63 76 5b 25 64 5d 20 66 61 69 6c 65 64 } //send and recv[%d] failed  01 00 
		$a_80_34 = {73 65 6e 64 72 65 63 76 20 6d 73 67 20 5b 25 64 5d 20 66 61 69 6c 65 64 } //sendrecv msg [%d] failed  01 00 
		$a_80_35 = {53 45 54 20 44 45 46 41 55 4c 54 20 43 4f 4d 4d 20 3a 20 25 75 } //SET DEFAULT COMM : %u  01 00 
		$a_80_36 = {73 65 74 20 73 65 72 76 69 63 65 64 6c 6c 20 66 61 69 6c 65 64 20 31 2e 20 25 75 } //set servicedll failed 1. %u  01 00 
		$a_80_37 = {73 65 74 20 73 65 72 76 69 63 65 64 6c 6c 20 66 61 69 6c 65 64 20 32 2e 20 25 75 } //set servicedll failed 2. %u  01 00 
		$a_80_38 = {53 65 74 46 69 6c 65 54 69 6d 65 5b 25 73 5d 20 66 61 69 6c 65 64 2e } //SetFileTime[%s] failed.  01 00 
		$a_80_39 = {73 6f 63 6b 65 74 20 69 73 20 69 6e 76 61 6c 69 64 2e 20 63 6f 6e 6e 65 63 74 20 66 61 69 6c 65 64 } //socket is invalid. connect failed  01 00 
		$a_80_40 = {73 6f 63 6b 65 74 20 69 73 20 69 6e 76 61 6c 69 64 2e 20 73 65 6e 64 20 66 61 69 6c 65 64 } //socket is invalid. send failed  01 00 
		$a_80_41 = {73 6f 63 6b 65 74 20 69 73 20 6f 70 65 6e 2e 20 70 6c 65 61 73 65 20 63 6c 6f 73 65 20 69 74 20 66 69 72 73 74 2e } //socket is open. please close it first.  01 00 
		$a_80_42 = {53 76 74 53 68 65 6c 6c 2e 63 70 70 } //SvtShell.cpp  01 00 
		$a_80_43 = {74 72 79 20 74 6f 20 63 6c 65 61 6e 20 25 73 } //try to clean %s  01 00 
		$a_80_44 = {74 72 79 20 74 6f 20 72 65 6d 6f 76 65 5b 25 73 5d } //try to remove[%s]  01 00 
		$a_80_45 = {58 4c 53 65 72 76 61 6e 74 } //XLServant  f6 ff 
		$a_80_46 = {43 3a 5c 64 65 76 5c 50 61 6c 61 64 69 6e 5c 50 61 6c 61 64 69 6e 5c 74 61 72 67 65 74 5c 72 65 6c 65 61 73 65 5c 64 65 70 73 5c 50 61 6c 61 64 69 6e 2e 70 64 62 } //C:\dev\Paladin\Paladin\target\release\deps\Paladin.pdb  f6 ff 
		$a_80_47 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 50 61 6c 61 64 69 6e 5c 4c 6f 67 73 5c 4c 6f 67 2e 70 61 6c 61 64 69 6e } //C:\Program Files\Paladin\Logs\Log.paladin  00 00 
	condition:
		any of ($a_*)
 
}