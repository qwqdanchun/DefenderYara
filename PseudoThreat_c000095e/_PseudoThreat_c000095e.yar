
rule _PseudoThreat_c000095e{
	meta:
		description = "!PseudoThreat_c000095e,SIGNATURE_TYPE_PEHSTR_EXT,19 00 14 00 2f 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 6f 70 65 72 2d 6c 61 31 30 30 73 } //02 00  \\.\mailslot\loper-la100s
		$a_00_1 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 6f 70 65 72 2d 6c 61 31 30 30 73 35 42 39 43 30 46 42 34 } //02 00  \\.\mailslot\loper-la100s5B9C0FB4
		$a_00_2 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 6f 70 65 72 2d 6c 61 63 } //02 00  \\.\mailslot\loper-lac
		$a_00_3 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 6f 70 65 72 2d 6c 61 62 } //02 00  \\.\mailslot\loper-lab
		$a_00_4 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6c 6f 70 65 72 2d 6c 61 73 } //02 00  \\.\mailslot\loper-las
		$a_00_5 = {5c 5c 2e 5c 6c 6f 70 65 72 44 72 69 76 65 72 } //02 00  \\.\loperDriver
		$a_00_6 = {50 72 65 66 65 74 63 68 5c 2a 2e 70 66 } //02 00  Prefetch\*.pf
		$a_00_7 = {20 2d 3a 62 64 3a 2d 20 } //02 00   -:bd:- 
		$a_00_8 = {75 23 68 74 2c 49 } //02 00  u#ht,I
		$a_00_9 = {4c 4f 50 45 52 45 52 } //02 00  LOPERER
		$a_00_10 = {2d 3a 4c 4f 50 49 4e } //02 00  -:LOPIN
		$a_00_11 = {2d 3a 4c 4f 50 46 52 45 53 48 } //02 00  -:LOPFRESH
		$a_00_12 = {2d 3a 4c 4f 50 4e 4f } //02 00  -:LOPNO
		$a_00_13 = {2d 3a 4c 4f 50 55 4e } //02 00  -:LOPUN
		$a_00_14 = {2d 3a 42 44 3a 2d } //02 00  -:BD:-
		$a_00_15 = {5e 5e 5b 5f 5d } //02 00  ^^[_]
		$a_00_16 = {20 2d 2b 62 64 3a 2d 20 } //02 00   -+bd:- 
		$a_00_17 = {2d 2b 49 4e 53 54 41 4c 4c 4f 4e 4c 59 } //02 00  -+INSTALLONLY
		$a_00_18 = {2d 2b 52 45 46 52 45 53 48 } //02 00  -+REFRESH
		$a_00_19 = {2d 2b 4e 4f 53 45 52 56 49 43 45 } //02 00  -+NOSERVICE
		$a_00_20 = {2d 2b 55 4e 49 4e 53 54 41 4c 4c } //02 00  -+UNINSTALL
		$a_00_21 = {2d 2b 42 44 3a 2d } //02 00  -+BD:-
		$a_00_22 = {5b 48 49 44 44 45 4e 20 54 41 42 4c 45 5d } //02 00  [HIDDEN TABLE]
		$a_00_23 = {5b 48 49 44 44 45 4e 20 50 52 4f 43 45 53 53 45 53 5d } //02 00  [HIDDEN PROCESSES]
		$a_00_24 = {5b 52 4f 4f 54 20 50 52 4f 43 45 53 53 45 53 5d } //02 00  [ROOT PROCESSES]
		$a_00_25 = {5b 48 49 44 44 45 4e 20 53 45 52 56 49 43 45 53 5d } //02 00  [HIDDEN SERVICES]
		$a_00_26 = {5b 48 49 44 44 45 4e 20 52 45 47 4b 45 59 53 5d } //02 00  [HIDDEN REGKEYS]
		$a_00_27 = {5b 48 49 44 44 45 4e 20 52 45 47 56 41 4c 55 45 53 5d } //02 00  [HIDDEN REGVALUES]
		$a_00_28 = {5b 48 49 44 44 45 4e 20 50 4f 52 54 53 5d } //01 00  [HIDDEN PORTS]
		$a_00_29 = {50 41 53 53 57 4f 52 44 } //01 00  PASSWORD
		$a_00_30 = {42 41 43 4b 44 4f 4f 52 53 48 45 4c 4c } //01 00  BACKDOORSHELL
		$a_00_31 = {53 45 52 56 49 43 45 4e 41 4d 45 } //01 00  SERVICENAME
		$a_00_32 = {53 45 52 56 49 43 45 44 49 53 50 4c 41 59 4e 41 4d 45 } //01 00  SERVICEDISPLAYNAME
		$a_00_33 = {53 45 52 56 49 43 45 44 45 53 43 52 49 50 54 49 4f 4e } //01 00  SERVICEDESCRIPTION
		$a_00_34 = {44 52 49 56 45 52 4e 41 4d 45 } //01 00  DRIVERNAME
		$a_00_35 = {44 52 49 56 45 52 46 49 4c 45 4e 41 4d 45 } //01 00  DRIVERFILENAME
		$a_00_36 = {46 49 4c 45 4d 41 50 50 49 4e 47 4e 41 4d 45 } //05 00  FILEMAPPINGNAME
		$a_00_37 = {5f 2e 2d 3d 5b 48 61 63 6b 65 72 20 44 65 66 65 6e 64 65 72 5d 3d 2d 2e 5f } //01 00  _.-=[Hacker Defender]=-._
		$a_00_38 = {6c 6f 70 65 72 73 62 6c 6f 70 65 72 73 6c 6f 70 } //02 00  lopersbloperslop
		$a_00_39 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 44 69 72 65 63 74 58 44 72 69 76 65 72 63 } //02 00  \\.\mailslot\DirectXDriverc
		$a_00_40 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 44 69 72 65 63 74 58 44 72 69 76 65 72 62 } //02 00  \\.\mailslot\DirectXDriverb
		$a_00_41 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 44 69 72 65 63 74 58 44 72 69 76 65 72 31 30 30 73 } //02 00  \\.\mailslot\DirectXDriver100s
		$a_00_42 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 44 69 72 65 63 74 58 44 72 69 76 65 72 31 30 30 73 35 42 39 43 30 46 42 } //1e 00  \\.\mailslot\DirectXDriver100s5B9C0FB
		$a_00_43 = {d1 e6 56 6a 00 e8 83 a7 ff ff 85 c0 74 35 89 45 fc 6a 00 56 50 50 55 b8 05 00 00 00 89 c5 58 89 c5 58 ff 75 08 ff 15 c0 dc 48 00 a9 00 00 00 c0 74 16 3d 04 00 00 c0 75 0a ff 75 fc e8 54 a7 ff ff eb bd 6a 00 8f 45 fc 8b 45 fc 5e } //01 00 
		$a_00_44 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //01 00  OpenSCManagerA
		$a_00_45 = {4e 74 4c 6f 61 64 44 72 69 76 65 72 } //01 00  NtLoadDriver
		$a_01_46 = {4e 74 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //00 00  NtQuerySystemInformation
	condition:
		any of ($a_*)
 
}