
rule VirTool_WinNT_FURootkit{
	meta:
		description = "VirTool:WinNT/FURootkit,SIGNATURE_TYPE_PEHSTR,16 00 13 00 17 00 00 02 00 "
		
	strings :
		$a_01_0 = {5b 2d 70 73 73 5d 20 23 50 49 44 20 23 61 63 63 6f 75 6e 74 5f 6e 61 6d 65 20 74 6f 20 61 64 64 20 23 61 63 63 6f 75 6e 74 5f 6e 61 6d 65 20 53 49 44 20 74 6f 20 70 72 6f 63 65 73 73 20 23 50 49 44 20 74 6f 6b 65 6e } //02 00  [-pss] #PID #account_name to add #account_name SID to process #PID token
		$a_01_1 = {5b 2d 70 72 73 5d 20 23 50 49 44 20 23 70 72 69 76 69 6c 65 67 65 5f 6e 61 6d 65 20 74 6f 20 73 65 74 20 70 72 69 76 69 6c 65 67 65 73 20 6f 6e 20 70 72 6f 63 65 73 73 20 23 50 49 44 } //01 00  [-prs] #PID #privilege_name to set privileges on process #PID
		$a_01_2 = {5b 2d 70 72 6c 5d } //01 00  [-prl]
		$a_01_3 = {5b 2d 70 61 73 5d 20 23 50 49 44 } //02 00  [-pas] #PID
		$a_01_4 = {5b 2d 70 68 64 5d 20 44 52 49 56 45 52 5f 4e 41 4d 45 20 74 6f 20 68 69 64 65 20 74 68 65 20 6e 61 6d 65 64 20 64 72 69 76 65 72 } //01 00  [-phd] DRIVER_NAME to hide the named driver
		$a_01_5 = {5b 2d 70 68 6e 67 5d 20 20 23 50 49 44 } //01 00  [-phng]  #PID
		$a_01_6 = {5b 2d 70 68 5d 20 23 50 49 44 } //01 00  [-ph] #PID
		$a_01_7 = {5b 2d 70 68 5d 20 20 23 50 49 44 } //01 00  [-ph]  #PID
		$a_01_8 = {5b 2d 70 6c 5d 20 20 23 6e 75 6d 62 65 72 } //01 00  [-pl]  #number
		$a_01_9 = {74 6f 20 6c 69 73 74 20 74 68 65 20 61 76 61 69 6c 61 62 6c 65 20 70 72 69 76 69 6c 65 67 65 73 } //01 00  to list the available privileges
		$a_01_10 = {74 6f 20 73 65 74 20 74 68 65 20 41 55 54 48 5f 49 44 20 74 6f 20 53 59 53 54 45 4d 20 6f 6e 20 70 72 6f 63 65 73 73 20 23 50 49 44 } //02 00  to set the AUTH_ID to SYSTEM on process #PID
		$a_01_11 = {74 6f 20 68 69 64 65 20 74 68 65 20 70 72 6f 63 65 73 73 20 77 69 74 68 20 23 50 49 44 2e 20 54 68 65 20 70 72 6f 63 65 73 73 20 6d 75 73 74 20 6e 6f 74 20 68 61 76 65 20 61 20 47 55 49 } //02 00  to hide the process with #PID. The process must not have a GUI
		$a_01_12 = {74 6f 20 68 69 64 65 20 74 68 65 20 70 72 6f 63 65 73 73 20 77 69 74 68 20 23 50 49 44 } //01 00  to hide the process with #PID
		$a_01_13 = {74 6f 20 6c 69 73 74 20 74 68 65 20 66 69 72 73 74 20 23 6e 75 6d 62 65 72 20 6f 66 20 70 72 6f 63 65 73 73 65 73 } //02 00  to list the first #number of processes
		$a_01_14 = {55 73 61 67 65 3a 20 66 75 } //02 00  Usage: fu
		$a_01_15 = {6d 73 64 69 72 65 63 74 78 } //02 00  msdirectx
		$a_01_16 = {48 69 64 69 6e 67 20 64 72 69 76 65 72 20 66 61 69 6c 65 64 } //02 00  Hiding driver failed
		$a_01_17 = {48 69 64 69 6e 67 20 70 72 6f 63 65 73 73 20 66 61 69 6c 65 64 } //02 00  Hiding process failed
		$a_01_18 = {53 65 74 74 69 6e 67 20 70 72 6f 63 65 73 73 20 70 72 69 76 69 6c 65 67 65 20 66 61 69 6c 65 64 } //01 00  Setting process privilege failed
		$a_01_19 = {53 65 74 74 69 6e 67 20 41 75 74 68 49 44 20 66 61 69 6c 65 64 2e 20 } //02 00  Setting AuthID failed. 
		$a_01_20 = {43 6c 69 65 6e 74 20 68 6f 6f 6b 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 66 61 69 6c 75 72 65 20 61 74 20 66 69 6c 65 20 25 68 73 20 6c 69 6e 65 20 25 64 } //02 00  Client hook allocation failure at file %hs line %d
		$a_01_21 = {43 6c 69 65 6e 74 20 68 6f 6f 6b 20 66 72 65 65 20 66 61 69 6c 75 72 65 } //02 00  Client hook free failure
		$a_01_22 = {52 6f 6f 74 6b 69 74 5c 46 75 7a 65 6e 5c 66 75 5c } //00 00  Rootkit\Fuzen\fu\
	condition:
		any of ($a_*)
 
}