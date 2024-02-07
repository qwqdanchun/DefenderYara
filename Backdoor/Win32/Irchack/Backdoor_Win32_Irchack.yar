
rule Backdoor_Win32_Irchack{
	meta:
		description = "Backdoor:Win32/Irchack,SIGNATURE_TYPE_PEHSTR,32 00 28 00 26 00 00 03 00 "
		
	strings :
		$a_01_0 = {53 65 78 79 20 53 63 72 65 65 6e 73 61 76 65 72 20 46 6f 72 20 59 6f 75 2c 20 64 65 6c 69 76 65 72 65 64 20 62 79 20 61 20 66 72 69 65 6e 64 } //03 00  Sexy Screensaver For You, delivered by a friend
		$a_01_1 = {43 68 65 63 6b 20 77 68 61 74 20 69 20 66 6f 75 6e 64 2e 20 49 74 73 20 73 61 76 65 64 20 69 6e 20 50 49 46 20 66 6f 72 6d 61 74 20 28 50 69 63 74 75 72 65 20 69 6d 61 67 65 20 46 6f 72 6d 61 74 29 } //03 00  Check what i found. Its saved in PIF format (Picture image Format)
		$a_01_2 = {53 6f 6d 65 6f 6e 65 20 73 65 6e 74 20 79 6f 75 20 61 20 73 65 78 79 20 73 63 72 65 65 6e 73 61 76 65 72 } //02 00  Someone sent you a sexy screensaver
		$a_01_3 = {61 75 74 6f 65 6d 61 69 6c 40 73 63 72 65 65 6e 73 61 76 65 72 2e 63 6f 6d } //03 00  autoemail@screensaver.com
		$a_01_4 = {4d 53 4e 50 61 73 73 77 6f 72 64 53 74 65 61 6c 65 72 5f 53 65 74 75 70 2e 65 78 65 } //02 00  MSNPasswordStealer_Setup.exe
		$a_01_5 = {4d 53 4e 48 61 63 6b 2e 65 78 65 } //02 00  MSNHack.exe
		$a_01_6 = {41 4f 4c 5f 48 61 63 6b 2e 65 78 65 } //03 00  AOL_Hack.exe
		$a_01_7 = {41 4f 4c 5f 50 61 73 73 77 6f 72 64 5f 53 74 65 61 6c 65 72 2e 65 78 65 } //01 00  AOL_Password_Stealer.exe
		$a_01_8 = {69 68 61 76 65 6e 6f 70 61 73 73 } //01 00  ihavenopass
		$a_01_9 = {67 6f 64 62 6c 65 73 73 79 6f 75 } //01 00  godblessyou
		$a_01_10 = {70 6f 74 61 74 69 73 6d 6f 73 } //01 00  potatismos
		$a_01_11 = {6b 6f 72 76 6d 61 6e 6e 65 6e } //01 00  korvmannen
		$a_01_12 = {77 69 69 68 69 65 65 } //01 00  wiihiee
		$a_01_13 = {64 61 72 6b 61 72 63 68 61 6e 67 65 6c } //01 00  darkarchangel
		$a_01_14 = {70 79 72 30 6d 61 6e 69 61 63 } //01 00  pyr0maniac
		$a_01_15 = {74 65 68 5f 70 75 70 70 65 74 65 65 72 } //01 00  teh_puppeteer
		$a_01_16 = {78 69 61 6f 5f 77 65 69 } //01 00  xiao_wei
		$a_01_17 = {73 74 61 72 6c 69 74 65 5f 34 35 } //01 00  starlite_45
		$a_01_18 = {3a 5b 48 54 54 50 5d 20 44 6f 77 6e 6c 6f 61 64 69 6e 67 20 46 69 6c 65 20 28 } //01 00  :[HTTP] Downloading File (
		$a_01_19 = {3a 5b 48 54 54 50 5d 20 44 6f 77 6e 6c 6f 61 64 69 6e 67 20 55 70 64 61 74 65 20 28 } //01 00  :[HTTP] Downloading Update (
		$a_01_20 = {3a 5b 48 54 54 50 5d 20 44 6f 77 6e 6c 6f 61 64 65 64 } //01 00  :[HTTP] Downloaded
		$a_01_21 = {3a 5b 48 54 54 50 5d 20 4f 70 65 6e 65 64 } //01 00  :[HTTP] Opened
		$a_01_22 = {3a 5b 48 54 54 50 5d 20 46 61 69 6c 65 64 20 54 6f 20 4f 70 65 6e } //01 00  :[HTTP] Failed To Open
		$a_01_23 = {3a 5b 48 54 54 50 5d 20 44 6f 77 6e 6c 6f 61 64 20 46 61 69 6c 65 64 } //01 00  :[HTTP] Download Failed
		$a_01_24 = {3a 5b 48 54 54 50 5d 20 56 69 73 69 74 20 53 75 63 63 65 73 73 66 75 6c 6c } //01 00  :[HTTP] Visit Successfull
		$a_01_25 = {3a 5b 48 54 54 50 5d 20 56 69 73 69 74 20 46 61 69 6c 65 64 } //02 00  :[HTTP] Visit Failed
		$a_01_26 = {3a 5b 4b 65 79 67 72 61 62 5d 20 55 73 65 72 20 77 72 6f 74 65 20 22 6c 6f 67 69 6e 22 3b 20 68 74 74 70 3a } //03 00  :[Keygrab] User wrote "login"; http:
		$a_01_27 = {3a 5b 4b 65 79 6c 6f 67 67 65 72 5d 20 4d 61 78 2d 73 69 7a 65 20 6f 66 20 6c 6f 67 66 69 6c 65 20 72 65 61 63 68 65 64 2e 20 53 61 76 65 64 20 61 73 20 28 73 74 2e 6c 6f 67 2d 62 61 63 6b 75 70 29 } //02 00  :[Keylogger] Max-size of logfile reached. Saved as (st.log-backup)
		$a_01_28 = {5c 73 6c 75 67 73 65 6e 64 5c 64 65 61 74 68 2d 61 70 31 30 30 73 } //02 00  \slugsend\death-ap100s
		$a_01_29 = {5c 73 6c 75 67 73 65 6e 64 5c 64 65 61 74 68 2d 61 70 63 } //02 00  \slugsend\death-apc
		$a_01_30 = {5c 73 6c 75 67 73 65 6e 64 5c 64 65 61 74 68 2d 61 70 62 } //02 00  \slugsend\death-apb
		$a_01_31 = {5c 73 6c 75 67 73 65 6e 64 5c 64 65 61 74 68 2d 61 70 73 } //02 00  \slugsend\death-aps
		$a_01_32 = {5c 73 6c 75 67 73 65 6e 64 5c 64 65 61 74 68 2d 61 70 31 30 30 73 30 41 43 45 45 37 36 31 } //02 00  \slugsend\death-ap100s0ACEE761
		$a_01_33 = {2d 3a 62 64 3a 2d } //02 00  -:bd:-
		$a_01_34 = {2d 3a 49 4e 53 54 41 4c 4c 4f 4e 4c 59 } //02 00  -:INSTALLONLY
		$a_01_35 = {2d 3a 52 45 46 52 45 53 48 } //02 00  -:REFRESH
		$a_01_36 = {2d 3a 4e 4f 53 45 52 56 49 43 45 } //02 00  -:NOSERVICE
		$a_01_37 = {2d 3a 55 4e 49 4e 53 54 41 4c 4c } //00 00  -:UNINSTALL
	condition:
		any of ($a_*)
 
}