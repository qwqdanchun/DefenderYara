
rule Backdoor_Win32_HackerDefender{
	meta:
		description = "Backdoor:Win32/HackerDefender,SIGNATURE_TYPE_PEHSTR_EXT,5f 01 5f 01 0b 00 00 64 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //64 00  SOFTWARE\Borland\Delphi\RTL
		$a_02_1 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 02 0a 2d 90 01 02 31 30 30 90 00 } //64 00 
		$a_00_2 = {5b 48 61 63 6b 65 72 20 44 65 66 65 6e 64 65 72 5d } //0a 00  [Hacker Defender]
		$a_01_3 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //0a 00  SeDebugPrivilege
		$a_00_4 = {53 65 4c 6f 61 64 44 72 69 76 65 72 50 72 69 76 69 6c 65 67 65 } //0a 00  SeLoadDriverPrivilege
		$a_01_5 = {4e 74 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //0a 00  NtQuerySystemInformation
		$a_00_6 = {4e 74 4c 6f 61 64 44 72 69 76 65 72 } //0a 00  NtLoadDriver
		$a_00_7 = {4e 74 51 75 65 72 79 4f 62 6a 65 63 74 } //01 00  NtQueryObject
		$a_00_8 = {6c 6f 70 6c 6f 70 2e 69 6e 69 } //01 00  loplop.ini
		$a_00_9 = {41 6c 65 72 74 65 72 } //01 00  Alerter
		$a_00_10 = {6c 6f 70 5f 62 2e 73 79 73 } //00 00  lop_b.sys
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_HackerDefender_2{
	meta:
		description = "Backdoor:Win32/HackerDefender,SIGNATURE_TYPE_PEHSTR_EXT,19 00 14 00 18 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 5c 2e 5c 48 78 44 65 66 44 72 69 76 65 72 } //02 00  \\.\HxDefDriver
		$a_00_1 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 31 30 30 73 } //02 00  \\.\mailslot\hxdef-rk100s
		$a_00_2 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 31 30 30 73 30 41 43 45 45 37 36 31 } //02 00  \\.\mailslot\hxdef-rk100s0ACEE761
		$a_00_3 = {50 72 65 66 65 74 63 68 5c 2a 2e 70 66 } //02 00  Prefetch\*.pf
		$a_00_4 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 63 } //02 00  \\.\mailslot\hxdef-rkc
		$a_00_5 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 62 } //02 00  \\.\mailslot\hxdef-rkb
		$a_00_6 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 73 } //02 00  \\.\mailslot\hxdef-rks
		$a_01_7 = {2d 3a 62 64 3a 2d } //02 00  -:bd:-
		$a_00_8 = {2d 3a 49 4e 53 54 41 4c 4c 4f 4e 4c 59 } //02 00  -:INSTALLONLY
		$a_00_9 = {2d 3a 52 45 46 52 45 53 48 } //02 00  -:REFRESH
		$a_00_10 = {2d 3a 4e 4f 53 45 52 56 49 43 45 } //02 00  -:NOSERVICE
		$a_00_11 = {2d 3a 55 4e 49 4e 53 54 41 4c 4c } //02 00  -:UNINSTALL
		$a_01_12 = {2d 3a 42 44 3a 2d } //02 00  -:BD:-
		$a_00_13 = {47 48 61 6e 64 6c 65 73 20 76 31 2e 30 20 66 6f 72 20 47 4b 69 74 20 62 79 20 67 72 61 79 2c 74 68 78 20 66 6f 72 20 48 6f 6c 79 5f 46 61 74 68 65 72 20 26 26 20 52 61 74 74 65 72 2f 32 39 41 } //05 00  GHandles v1.0 for GKit by gray,thx for Holy_Father && Ratter/29A
		$a_00_14 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 48 00 78 00 44 00 65 00 66 00 44 00 72 00 69 00 76 00 65 00 72 00 } //05 00  \DosDevices\HxDefDriver
		$a_00_15 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 48 00 78 00 44 00 65 00 66 00 44 00 72 00 69 00 76 00 65 00 72 00 } //03 00  \Device\HxDefDriver
		$a_00_16 = {5a 77 44 75 70 6c 69 63 61 74 65 54 6f 6b 65 6e } //03 00  ZwDuplicateToken
		$a_00_17 = {5a 77 4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //05 00  ZwOpenProcessToken
		$a_00_18 = {8b 4d e8 89 4d f4 c7 45 f8 00 00 00 00 8d 55 f4 52 8d 45 d0 50 68 ff 0f 1f 20 00 8d 4d a0 51 ff 15 } //05 00 
		$a_00_19 = {ff 75 f0 ff 15 f4 07 01 00 85 c0 7c 4d 8d 45 d0 50 6a 01 8d 45 b8 53 50 68 ff 00 0f 00 ff 75 0c ff 15 } //05 00 
		$a_00_20 = {85 c0 7c 27 8d 45 d0 6a 08 50 6a 09 ff 75 dc 89 5d d4 ff 15 } //05 00 
		$a_00_21 = {85 c0 7c 7a 8d 45 b4 50 68 ff 00 0f 00 8b 4d f0 51 ff 15 } //05 00 
		$a_00_22 = {85 c0 7c 30 c7 45 c8 00 00 00 00 6a 08 8d 55 c4 52 6a 09 8b 45 a0 50 ff 15 } //05 00 
		$a_00_23 = {85 c0 7c 09 8b 4d b0 c7 01 01 00 00 00 8b 55 c4 52 ff 15 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_HackerDefender_3{
	meta:
		description = "Backdoor:Win32/HackerDefender,SIGNATURE_TYPE_PEHSTR_EXT,14 00 12 00 6a 00 00 03 00 "
		
	strings :
		$a_00_0 = {72 75 6e 20 61 73 20 72 6f 6f 74 6b 69 74 } //02 00  run as rootkit
		$a_00_1 = {5a 6f 72 47 4c 4f 75 42 53 48 45 4c 4c } //02 00  ZorGLOuBSHELL
		$a_00_2 = {63 3a 5c 68 78 64 6c 6f 67 65 78 2e 74 78 74 } //01 00  c:\hxdlogex.txt
		$a_00_3 = {5c 44 65 76 69 63 65 5c 5c 55 64 70 } //01 00  \Device\\Udp
		$a_00_4 = {5c 44 65 76 69 63 65 5c 5c 54 63 70 } //02 00  \Device\\Tcp
		$a_00_5 = {68 78 64 65 66 2d 72 64 72 62 61 73 65 2d 31 30 30 } //02 00  hxdef-rdrbase-100
		$a_00_6 = {5c 5c 2e 5c 48 78 44 65 66 44 72 69 76 65 72 } //03 00  \\.\HxDefDriver
		$a_00_7 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 31 30 30 73 } //03 00  \\.\mailslot\hxdef-rk100s
		$a_00_8 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 31 30 30 73 30 41 43 45 45 37 36 31 } //02 00  \\.\mailslot\hxdef-rk100s0ACEE761
		$a_00_9 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 64 65 61 74 68 2d 61 70 31 30 30 73 } //02 00  \\.\mailslot\death-ap100s
		$a_00_10 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 64 65 61 74 68 2d 61 70 63 } //02 00  \\.\mailslot\death-apc
		$a_00_11 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 64 65 61 74 68 2d 61 70 62 } //02 00  \\.\mailslot\death-apb
		$a_00_12 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 64 65 61 74 68 2d 61 70 73 } //02 00  \\.\mailslot\death-aps
		$a_00_13 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 64 65 61 74 68 2d 61 70 31 30 30 73 30 41 43 45 45 37 36 31 } //01 00  \\.\mailslot\death-ap100s0ACEE761
		$a_00_14 = {6a 6f 68 6e 64 6f 65 32 32 31 2e 6e 65 74 66 69 72 6d 73 2e 63 6f 6d } //02 00  johndoe221.netfirms.com
		$a_00_15 = {50 72 65 66 65 74 63 68 5c 2a 2e 70 66 } //03 00  Prefetch\*.pf
		$a_00_16 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 63 } //03 00  \\.\mailslot\hxdef-rkc
		$a_00_17 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 62 } //03 00  \\.\mailslot\hxdef-rkb
		$a_00_18 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 68 78 64 65 66 2d 72 6b 73 } //01 00  \\.\mailslot\hxdef-rks
		$a_00_19 = {75 6e 69 6e 73 74 61 6c 6c 69 6e 67 20 6f 6c 64 20 73 65 72 76 69 63 65 20 7c 20 64 72 69 76 65 72 } //02 00  uninstalling old service | driver
		$a_00_20 = {23 53 54 45 41 4c 54 48 20 54 41 42 4c 45 23 } //02 00  #STEALTH TABLE#
		$a_00_21 = {23 52 4f 4f 54 20 50 52 4f 43 45 53 53 45 53 23 } //02 00  #ROOT PROCESSES#
		$a_00_22 = {23 52 30 30 54 20 50 52 4f 43 45 53 53 45 53 23 } //02 00  #R00T PROCESSES#
		$a_00_23 = {23 53 54 45 41 4c 54 48 20 53 45 52 56 49 43 45 53 23 } //02 00  #STEALTH SERVICES#
		$a_00_24 = {23 53 54 45 41 4c 54 48 20 52 45 47 56 41 4c 55 45 53 23 } //02 00  #STEALTH REGVALUES#
		$a_00_25 = {23 53 54 45 41 4c 54 48 20 52 45 47 4b 45 59 53 23 } //02 00  #STEALTH REGKEYS#
		$a_00_26 = {23 53 54 45 41 4c 54 48 20 50 52 4f 43 45 53 53 45 53 23 } //02 00  #STEALTH PROCESSES#
		$a_00_27 = {23 53 54 45 41 4c 54 48 20 50 4f 52 54 53 23 } //02 00  #STEALTH PORTS#
		$a_00_28 = {23 4d 41 53 54 45 52 20 50 52 4f 43 45 53 53 45 53 23 } //02 00  #MASTER PROCESSES#
		$a_00_29 = {23 43 4f 4e 46 49 47 55 52 41 54 49 4f 4e 23 } //02 00  #CONFIGURATION#
		$a_00_30 = {5b 43 4f 56 45 52 53 20 50 52 4f 43 45 53 53 45 53 5d } //02 00  [COVERS PROCESSES]
		$a_00_31 = {5b 43 4f 56 45 52 53 20 53 45 52 56 49 43 45 53 5d } //02 00  [COVERS SERVICES]
		$a_00_32 = {5b 43 4f 56 45 52 53 20 52 45 47 4b 45 59 53 5d } //02 00  [COVERS REGKEYS]
		$a_00_33 = {5b 43 4f 56 45 52 53 20 52 45 47 56 41 4c 55 45 53 5d } //02 00  [COVERS REGVALUES]
		$a_00_34 = {4f 50 45 4e 48 4f 4c 45 53 48 45 4c 4c } //01 00  OPENHOLESHELL
		$a_00_35 = {63 68 61 6e 67 65 20 73 65 72 76 69 63 65 20 63 6f 6e 66 69 67 20 32 61 20 65 78 69 73 74 73 } //02 00  change service config 2a exists
		$a_00_36 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 65 69 67 68 61 6e 6e 73 } //02 00  \\.\mailslot\leighanns
		$a_00_37 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 65 69 67 68 61 6e 6e 63 } //02 00  \\.\mailslot\leighannc
		$a_00_38 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 65 69 67 68 61 6e 6e 62 } //02 00  \\.\mailslot\leighannb
		$a_00_39 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 65 69 67 68 61 6e 6e 31 30 30 73 } //02 00  \\.\mailslot\leighann100s
		$a_00_40 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 65 69 67 68 61 6e 6e 31 30 30 73 41 42 43 44 45 46 } //02 00  \\.\mailslot\leighann100sABCDEF
		$a_00_41 = {5b 70 69 61 6c 69 61 20 50 52 4f 43 45 53 53 45 53 5d } //02 00  [pialia PROCESSES]
		$a_00_42 = {5b 70 69 61 6c 69 61 20 53 45 52 56 49 43 45 53 5d } //02 00  [pialia SERVICES]
		$a_00_43 = {5b 70 69 61 6c 69 61 20 52 45 47 4b 45 59 53 5d } //02 00  [pialia REGKEYS]
		$a_00_44 = {5b 70 69 61 6c 69 61 20 52 45 47 56 41 4c 55 45 53 5d } //02 00  [pialia REGVALUES]
		$a_00_45 = {5b 70 69 61 6c 69 61 20 50 4f 52 54 53 5d } //02 00  [pialia PORTS]
		$a_00_46 = {5b 49 4e 56 49 53 49 42 4c 45 20 54 41 42 4c 45 5d } //02 00  [INVISIBLE TABLE]
		$a_00_47 = {5b 49 4e 56 49 53 49 42 4c 45 20 50 52 4f 43 45 53 53 45 53 5d } //02 00  [INVISIBLE PROCESSES]
		$a_00_48 = {5b 49 4e 56 49 53 49 42 4c 45 20 53 45 52 56 49 43 45 53 5d } //02 00  [INVISIBLE SERVICES]
		$a_00_49 = {5b 49 4e 56 49 53 49 42 4c 45 20 52 45 47 4b 45 59 53 5d } //02 00  [INVISIBLE REGKEYS]
		$a_00_50 = {5b 49 4e 56 49 53 49 42 4c 45 20 52 45 47 56 41 4c 55 45 53 5d } //02 00  [INVISIBLE REGVALUES]
		$a_00_51 = {5b 49 4e 56 49 53 49 42 4c 45 20 50 4f 52 54 53 5d } //02 00  [INVISIBLE PORTS]
		$a_00_52 = {5b 48 49 44 44 45 4e 20 50 52 4f 43 45 53 53 45 53 5d } //02 00  [HIDDEN PROCESSES]
		$a_00_53 = {5b 52 4f 4f 54 20 50 52 4f 43 45 53 53 45 53 5d } //02 00  [ROOT PROCESSES]
		$a_00_54 = {5b 48 49 44 44 45 4e 20 53 45 52 56 49 43 45 53 5d } //02 00  [HIDDEN SERVICES]
		$a_00_55 = {5b 48 49 44 44 45 4e 20 52 45 47 4b 45 59 53 5d } //02 00  [HIDDEN REGKEYS]
		$a_00_56 = {5b 48 49 44 44 45 4e 20 52 45 47 56 41 4c 55 45 53 5d } //01 00  [HIDDEN REGVALUES]
		$a_00_57 = {42 41 43 4b 44 4f 4f 52 53 48 45 4c 4c } //01 00  BACKDOORSHELL
		$a_00_58 = {53 45 52 56 49 43 45 44 49 53 50 4c 41 59 4e 41 4d 45 } //01 00  SERVICEDISPLAYNAME
		$a_00_59 = {53 45 52 56 49 43 45 44 45 53 43 52 49 50 54 49 4f 4e } //01 00  SERVICEDESCRIPTION
		$a_00_60 = {46 49 4c 45 4d 41 50 50 49 4e 47 4e 41 4d 45 } //01 00  FILEMAPPINGNAME
		$a_00_61 = {53 56 43 44 49 53 50 4c 41 59 4e 41 4d 45 } //01 00  SVCDISPLAYNAME
		$a_00_62 = {53 56 43 44 45 53 43 52 49 50 54 49 4f 4e } //01 00  SVCDESCRIPTION
		$a_00_63 = {44 52 56 46 49 4c 45 4e 41 4d 45 } //05 00  DRVFILENAME
		$a_00_64 = {48 61 63 6b 65 72 20 44 65 66 65 6e 64 65 72 20 31 2e 30 2e 30 20 52 65 64 69 72 20 42 61 73 65 } //01 00  Hacker Defender 1.0.0 Redir Base
		$a_00_65 = {48 69 64 69 6e 67 20 63 6f 6e 73 6f 6c 65 } //03 00  Hiding console
		$a_00_66 = {43 6f 72 72 75 70 74 65 64 20 69 6e 69 66 69 6c 65 21 20 44 65 6c 65 74 65 20 69 74 20 6f 72 20 66 69 78 20 69 74 20 61 6e 64 20 72 65 73 74 61 72 74 20 74 68 69 73 20 61 70 70 6c 69 63 61 74 69 6f 6e } //03 00  Corrupted inifile! Delete it or fix it and restart this application
		$a_01_67 = {2d 3a 62 64 3a 2d } //03 00  -:bd:-
		$a_00_68 = {2d 3a 49 4e 53 54 41 4c 4c 4f 4e 4c 59 } //03 00  -:INSTALLONLY
		$a_00_69 = {2d 3a 52 45 46 52 45 53 48 } //03 00  -:REFRESH
		$a_00_70 = {2d 3a 4e 4f 53 45 52 56 49 43 45 } //03 00  -:NOSERVICE
		$a_00_71 = {2d 3a 55 4e 49 4e 53 54 41 4c 4c } //03 00  -:UNINSTALL
		$a_01_72 = {2d 3a 42 44 3a 2d } //02 00  -:BD:-
		$a_00_73 = {5f 5f 49 4e 53 54 41 4c 4c } //02 00  __INSTALL
		$a_00_74 = {5f 5f 52 45 4c 4f 41 44 } //02 00  __RELOAD
		$a_00_75 = {5f 5f 53 54 45 41 4c 54 48 } //02 00  __STEALTH
		$a_00_76 = {5f 5f 44 49 45 } //02 00  __DIE
		$a_00_77 = {47 48 61 6e 64 6c 65 73 20 76 31 2e 30 20 66 6f 72 20 47 4b 69 74 20 62 79 20 67 72 61 79 2c 74 68 78 20 66 6f 72 20 48 6f 6c 79 5f 46 61 74 68 65 72 20 26 26 20 52 61 74 74 65 72 2f 32 39 41 } //02 00  GHandles v1.0 for GKit by gray,thx for Holy_Father && Ratter/29A
		$a_00_78 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6d 65 64 69 61 2d 62 6c 61 63 6b } //03 00  \\.\mailslot\media-black
		$a_00_79 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6d 65 64 69 61 2d 63 6b 72 } //03 00  \\.\mailslot\media-ckr
		$a_00_80 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6d 65 64 69 61 2d 72 6b 62 } //03 00  \\.\mailslot\media-rkb
		$a_00_81 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6d 65 64 69 61 2d 72 6b 73 } //03 00  \\.\mailslot\media-rks
		$a_00_82 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6d 65 64 69 61 2d 62 6c 61 63 6b 30 41 43 45 45 37 36 31 } //02 00  \\.\mailslot\media-black0ACEE761
		$a_00_83 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6d 79 61 70 70 2d 6e 74 73 } //02 00  \\.\mailslot\myapp-nts
		$a_00_84 = {2d 2d 4a 55 53 54 5f 49 4e 53 54 41 4c 4c } //02 00  --JUST_INSTALL
		$a_00_85 = {2d 2d 52 45 50 4c 41 59 } //02 00  --REPLAY
		$a_00_86 = {2d 2d 42 45 5f 43 4f 4f 4c } //02 00  --BE_COOL
		$a_00_87 = {2d 2d 52 45 4d 4f 56 45 5f 4d 45 } //02 00  --REMOVE_ME
		$a_00_88 = {2d 2d 4e 54 2d 2d } //02 00  --NT--
		$a_00_89 = {3d 21 3d 25 3d 29 3d 2d 3d 31 3d 35 3d 39 3d 3d 3d 41 3d 45 3d 49 3d 4d 3d 51 3d 55 3d 59 3d 5d 3d 61 3d 65 3d 69 3d 6d 3d 71 3d 75 3d 79 3d 7d 3d } //01 00  =!=%=)=-=1=5=9===A=E=I=M=Q=U=Y=]=a=e=i=m=q=u=y=}=
		$a_00_90 = {43 72 65 61 74 65 4d 61 69 6c 53 6c 6f 74 } //02 00  CreateMailSlot
		$a_00_91 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 74 75 66 68 6b 2d 6e 74 31 30 30 73 30 41 43 45 45 37 36 31 } //02 00  \\.\mailslot\tufhk-nt100s0ACEE761
		$a_00_92 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 74 75 66 68 6b 2d 6e 74 31 30 30 73 } //02 00  \\.\mailslot\tufhk-nt100s
		$a_00_93 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 74 75 66 68 6b 2d 6e 74 63 } //02 00  \\.\mailslot\tufhk-ntc
		$a_00_94 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 74 75 66 68 6b 2d 6e 74 62 } //02 00  \\.\mailslot\tufhk-ntb
		$a_02_95 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 01 05 2d 72 6b 73 90 00 } //02 00 
		$a_02_96 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 01 05 2d 72 6b 62 90 00 } //02 00 
		$a_02_97 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 01 05 2d 72 6b 63 90 00 } //02 00 
		$a_02_98 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 01 05 2d 72 6b 31 30 30 73 90 00 } //02 00 
		$a_02_99 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 01 08 31 30 30 73 90 00 } //02 00 
		$a_02_100 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 02 06 2d 78 64 62 90 00 } //02 00 
		$a_02_101 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 02 06 2d 78 64 63 90 00 } //02 00 
		$a_02_102 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 02 06 2d 78 64 31 33 30 73 90 00 } //02 00 
		$a_02_103 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 02 06 2d 78 64 31 33 30 73 41 42 43 44 90 00 } //02 00 
		$a_02_104 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 02 06 62 63 62 90 00 } //02 00 
		$a_02_105 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 90 02 06 62 63 63 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_HackerDefender_4{
	meta:
		description = "Backdoor:Win32/HackerDefender,SIGNATURE_TYPE_PEHSTR,ffffffd0 00 ffffffd0 00 0b 00 00 64 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //64 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {5c 5c 2e 5c 79 73 70 79 30 30 30 } //01 00  \\.\yspy000
		$a_01_2 = {2d 3a 49 4e 53 54 41 4c 4c 4f 4e 4c 59 } //01 00  -:INSTALLONLY
		$a_01_3 = {2d 3a 52 45 46 52 45 53 48 } //01 00  -:REFRESH
		$a_01_4 = {2d 3a 4e 4f 53 45 52 56 49 43 45 } //01 00  -:NOSERVICE
		$a_01_5 = {2d 3a 55 4e 49 4e 53 54 41 4c 4c } //01 00  -:UNINSTALL
		$a_01_6 = {5b 48 54 41 42 4c 45 5d } //01 00  [HTABLE]
		$a_01_7 = {5b 48 50 52 4f 43 45 53 53 45 53 5d } //01 00  [HPROCESSES]
		$a_01_8 = {5b 48 53 45 52 56 49 43 45 53 5d } //01 00  [HSERVICES]
		$a_01_9 = {5b 48 52 45 47 4b 45 59 53 5d } //01 00  [HREGKEYS]
		$a_01_10 = {5b 48 50 4f 52 54 53 5d } //00 00  [HPORTS]
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_HackerDefender_5{
	meta:
		description = "Backdoor:Win32/HackerDefender,SIGNATURE_TYPE_PEHSTR,77 09 76 09 0e 00 00 ffffffe8 03 "
		
	strings :
		$a_01_0 = {54 43 75 73 74 6f 6d 4d 65 6d 6f 72 79 53 74 72 65 61 6d } //e8 03  TCustomMemoryStream
		$a_01_1 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 53 61 66 65 42 6f 6f 74 5c } //64 00  SYSTEM\CurrentControlSet\Control\SafeBoot\
		$a_01_2 = {53 65 74 53 65 63 75 72 69 74 79 44 65 73 63 72 69 70 74 6f 72 44 61 63 6c } //64 00  SetSecurityDescriptorDacl
		$a_01_3 = {41 64 64 41 63 63 65 73 73 41 6c 6c 6f 77 65 64 41 63 65 } //64 00  AddAccessAllowedAce
		$a_01_4 = {44 69 73 63 6f 6e 6e 65 63 74 4e 61 6d 65 64 50 69 70 65 } //64 00  DisconnectNamedPipe
		$a_01_5 = {43 72 65 61 74 65 4d 61 69 6c 73 6c 6f 74 41 } //0a 00  CreateMailslotA
		$a_01_6 = {43 6f 6d 73 70 65 63 } //0a 00  Comspec
		$a_01_7 = {2f 63 20 64 65 6c 20 22 } //01 00  /c del "
		$a_01_8 = {73 76 63 68 6f 73 74 2e 65 78 65 } //01 00  svchost.exe
		$a_01_9 = {72 5f 73 65 72 76 65 72 2e 65 78 65 } //01 00  r_server.exe
		$a_01_10 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 72 5f 73 65 72 76 65 72 } //01 00  SYSTEM\CurrentControlSet\Services\r_server
		$a_01_11 = {2f 70 61 73 73 3a } //01 00  /pass:
		$a_01_12 = {2f 70 6f 72 74 3a } //01 00  /port:
		$a_01_13 = {52 61 64 6d 69 6e } //00 00  Radmin
	condition:
		any of ($a_*)
 
}