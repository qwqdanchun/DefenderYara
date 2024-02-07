
rule Trojan_Win32_Vundo_D{
	meta:
		description = "Trojan:Win32/Vundo.D,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 26 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 61 6c 6c 4e 65 78 74 48 6f 6f 6b 45 78 } //01 00  CallNextHookEx
		$a_01_1 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00  CreateRemoteThread
		$a_01_2 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //01 00  GetSystemDirectoryA
		$a_01_3 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //01 00  InternetReadFile
		$a_00_4 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //01 00  OpenProcess
		$a_01_5 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //01 00  SeDebugPrivilege
		$a_01_6 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_00_7 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_00_8 = {54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //01 00  TerminateProcess
		$a_01_9 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_00_10 = {61 6d 61 65 6e 61 2e 63 6f 6d } //01 00  amaena.com
		$a_00_11 = {61 6e 74 69 76 69 72 75 73 73 65 63 75 72 69 74 79 70 72 6f 2e 63 6f 6d } //01 00  antivirussecuritypro.com
		$a_00_12 = {64 72 69 76 65 63 6c 65 61 6e 65 72 2e 63 6f 6d } //01 00  drivecleaner.com
		$a_00_13 = {65 72 72 6f 72 70 72 6f 74 65 63 74 6f 72 2e 63 6f 6d } //01 00  errorprotector.com
		$a_00_14 = {65 72 72 6f 72 73 61 66 65 2e 63 6f 6d } //01 00  errorsafe.com
		$a_00_15 = {73 74 6f 70 67 75 61 72 64 2e 63 6f 6d } //01 00  stopguard.com
		$a_00_16 = {73 79 73 70 72 6f 74 65 63 74 2e 63 6f 6d } //01 00  sysprotect.com
		$a_00_17 = {73 79 73 74 65 6d 64 6f 63 74 6f 72 2e 63 6f 6d } //01 00  systemdoctor.com
		$a_00_18 = {76 69 72 75 73 67 75 61 72 64 2e 63 6f 6d } //01 00  virusguard.com
		$a_00_19 = {77 69 6e 61 6e 74 69 73 70 79 2e 63 6f 6d } //01 00  winantispy.com
		$a_00_20 = {77 69 6e 61 6e 74 69 73 70 79 77 61 72 65 } //01 00  winantispyware
		$a_00_21 = {77 69 6e 61 6e 74 69 73 70 79 77 61 72 65 2e 63 6f 6d } //01 00  winantispyware.com
		$a_00_22 = {77 69 6e 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d } //01 00  winantivirus.com
		$a_00_23 = {77 69 6e 61 6e 74 69 76 69 72 75 73 70 72 6f 2e 63 6f 6d } //01 00  winantiviruspro.com
		$a_00_24 = {77 69 6e 64 72 69 76 65 63 6c 65 61 6e 65 72 2e 63 6f 6d } //01 00  windrivecleaner.com
		$a_00_25 = {77 69 6e 66 69 72 65 77 61 6c 6c 2e 63 6f 6d } //01 00  winfirewall.com
		$a_00_26 = {77 69 6e 66 69 78 65 72 2e 63 6f 6d } //01 00  winfixer.com
		$a_00_27 = {77 69 6e 70 6f 70 75 70 67 75 61 72 64 2e 63 6f 6d } //01 00  winpopupguard.com
		$a_00_28 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_29 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 4e 6f 74 69 66 79 } //01 00  Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify
		$a_00_30 = {43 72 65 61 74 65 4d 61 69 6e 50 72 6f 63 00 43 72 65 61 74 65 50 72 6f 74 65 63 74 50 72 6f 63 } //01 00  牃慥整慍湩牐捯䌀敲瑡健潲整瑣牐捯
		$a_00_31 = {52 65 61 6c 4c 6f 67 6f 66 66 00 52 65 61 6c 4c 6f 67 6f 6e } //01 00  敒污潌潧晦刀慥䱬杯湯
		$a_00_32 = {61 77 78 5f 6d 75 74 61 6e 74 00 00 61 64 2d 61 77 61 72 65 2e 65 78 65 } //01 00 
		$a_00_33 = {73 73 77 5f 6d 75 74 61 6e 74 00 00 77 72 73 73 73 64 6b 2e 65 78 65 } //01 00 
		$a_00_34 = {68 6a 74 5f 6d 75 74 61 6e 74 00 00 68 69 6a 61 63 6b 74 68 69 73 2e 65 78 65 } //01 00 
		$a_00_35 = {23 27 79 75 5b 51 56 39 77 21 3e 2d 36 47 2e 34 74 67 60 78 6e 6b 64 45 24 7e 41 72 66 26 49 3f 5f 7c 71 6d 5c 4e 43 53 54 3a 2f 62 4b 61 48 32 5a 3d 63 } //01 00  #'yu[QV9w!>-6G.4tg`xnkdE$~Arf&I?_|qm\NCST:/bKaH2Z=c
		$a_00_36 = {2b 36 5a 72 70 2a 53 32 75 29 76 5f 6c 2f 65 31 52 25 7a 40 4c 28 73 5b 57 56 6e 4f 61 78 27 46 50 45 41 49 51 7d 48 54 3f 66 55 5d 42 6d 59 7e 4d 30 64 62 74 33 } //01 00  +6Zrp*S2u)v_l/e1R%z@L(s[WVnOax'FPEAIQ}HT?fU]BmY~M0dbt3
		$a_00_37 = {79 50 6f 30 71 2d 75 7a 28 4a 58 69 52 2b 40 6c 3b 65 47 5c 38 78 2e 4f 3f 55 4d 7c 64 46 67 72 26 7e 48 49 60 27 56 73 68 51 25 45 5a 59 41 33 4e 4c 53 37 57 3d 32 70 61 77 36 7b 44 35 5e 5d 43 3c 7d 31 24 5f 29 34 23 6a 62 42 76 3a 54 } //00 00  yPo0q-uz(JXiR+@l;eG\8x.O?UM|dFgr&~HI`'VshQ%EZYA3NLS7W=2paw6{D5^]C<}1$_)4#jbBv:T
	condition:
		any of ($a_*)
 
}