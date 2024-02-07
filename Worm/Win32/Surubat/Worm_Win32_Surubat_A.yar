
rule Worm_Win32_Surubat_A{
	meta:
		description = "Worm:Win32/Surubat.A,SIGNATURE_TYPE_PEHSTR,1e 00 16 00 1d 00 00 02 00 "
		
	strings :
		$a_01_0 = {70 6c 65 61 73 65 20 72 65 61 64 20 61 74 74 61 63 68 6d 65 6e 74 20 62 65 6c 6c 6f 77 2c 20 61 6e 64 20 70 6c 65 61 73 65 20 72 65 70 6c 79 20 74 6f 20 6d 65 2e 2e 21 21 21 } //02 00  please read attachment bellow, and please reply to me..!!!
		$a_01_1 = {68 6f 70 65 20 77 65 20 64 6f 6e 27 74 20 68 61 76 65 20 6d 69 73 73 20 75 6e 64 65 72 73 74 61 6e 64 69 6e 67 } //02 00  hope we don't have miss understanding
		$a_01_2 = {74 68 61 6e 6b 27 73 2e 2e 2e 21 21 21 } //02 00  thank's...!!!
		$a_01_3 = {54 68 69 73 20 69 73 20 6f 75 72 20 72 65 70 6f 72 74 20 6f 66 20 6e 61 6b 65 64 20 69 73 75 65 } //02 00  This is our report of naked isue
		$a_01_4 = {59 6f 75 20 48 61 76 65 20 44 6f 6e 65 20 53 6f 6d 65 74 68 69 6e 67 20 57 68 69 63 68 20 43 61 6e 20 48 61 72 6d 20 59 6f 75 72 20 53 79 73 74 65 6d } //02 00  You Have Done Something Which Can Harm Your System
		$a_01_5 = {54 6f 20 50 72 65 76 65 6e 74 20 46 72 6f 6d 20 44 61 6d 61 67 65 2c 20 53 79 73 74 65 6d 20 48 61 73 20 42 65 65 6e 20 52 65 73 74 61 72 74 } //02 00  To Prevent From Damage, System Has Been Restart
		$a_01_6 = {54 61 6d 61 72 61 5f 42 6c 65 7a 79 6e 73 6b 79 } //02 00  Tamara_Blezynsky
		$a_01_7 = {5f 50 65 74 61 5f 49 6e 73 74 61 6c 61 73 69 5f 4e 75 6b 6c 69 72 5f 49 73 72 61 65 6c 2e 7a 69 70 } //02 00  _Peta_Instalasi_Nuklir_Israel.zip
		$a_01_8 = {5f 50 65 74 61 5f 49 6e 73 74 61 6c 61 73 69 5f 4e 75 6b 6c 69 72 5f 49 73 72 61 65 6c 2e 65 78 65 } //01 00  _Peta_Instalasi_Nuklir_Israel.exe
		$a_01_9 = {57 61 72 6e 20 6f 6e 20 4d 61 70 69 20 53 65 6e 64 } //01 00  Warn on Mapi Send
		$a_01_10 = {4d 41 50 49 53 65 6e 64 4d 61 69 6c } //01 00  MAPISendMail
		$a_01_11 = {4d 41 50 49 46 72 65 65 42 75 66 66 65 72 } //01 00  MAPIFreeBuffer
		$a_01_12 = {4d 41 50 49 52 65 61 64 4d 61 69 6c } //01 00  MAPIReadMail
		$a_01_13 = {4d 41 50 49 46 69 6e 64 4e 65 78 74 } //01 00  MAPIFindNext
		$a_01_14 = {4d 41 50 49 4c 6f 67 6f 6e } //01 00  MAPILogon
		$a_01_15 = {50 4f 50 33 20 55 73 65 72 20 4e 61 6d 65 } //01 00  POP3 User Name
		$a_01_16 = {44 65 66 61 75 6c 74 20 55 73 65 72 20 49 44 } //01 00  Default User ID
		$a_01_17 = {49 64 65 6e 74 69 74 69 65 73 } //01 00  Identities
		$a_01_18 = {73 79 73 74 65 6d 73 2e 65 78 65 } //01 00  systems.exe
		$a_01_19 = {6d 61 69 6c 69 6e 67 2e 64 6c 6c } //01 00  mailing.dll
		$a_01_20 = {72 73 74 72 75 69 2e 65 78 65 } //01 00  rstrui.exe
		$a_01_21 = {73 79 73 74 65 6d 61 2e 65 78 65 } //01 00  systema.exe
		$a_01_22 = {77 69 6e 61 6d 70 73 2e 65 78 65 } //01 00  winamps.exe
		$a_01_23 = {73 61 66 65 6d 6f 64 65 2e 65 78 65 } //01 00  safemode.exe
		$a_01_24 = {73 76 63 68 6f 73 74 2e 65 78 65 } //01 00  svchost.exe
		$a_01_25 = {52 65 73 74 6f 72 65 } //01 00  Restore
		$a_01_26 = {6d 6d 73 67 73 } //01 00  mmsgs
		$a_01_27 = {4a 4f 49 4e 20 23 } //01 00  JOIN #
		$a_01_28 = {4e 49 43 4b } //00 00  NICK
	condition:
		any of ($a_*)
 
}