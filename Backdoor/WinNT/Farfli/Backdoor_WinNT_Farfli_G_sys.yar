
rule Backdoor_WinNT_Farfli_G_sys{
	meta:
		description = "Backdoor:WinNT/Farfli.G!sys,SIGNATURE_TYPE_PEHSTR_EXT,ffffff96 00 78 00 1d 00 00 64 00 "
		
	strings :
		$a_02_0 = {53 55 56 57 ff 15 90 01 01 02 01 00 8b e8 33 db be 90 01 02 01 00 8b fe 83 c9 ff 33 c0 f2 ae f7 d1 49 8d 04 2b 51 50 56 ff 90 01 02 02 01 00 83 c4 0c 85 c0 74 10 43 81 fb 00 30 00 00 7c d8 33 c0 5f 5e 5d 5b c3 8b c3 eb f7 90 00 } //02 00 
		$a_01_1 = {45 78 41 6c 6c 6f 63 61 74 65 50 6f 6f 6c 57 69 74 68 54 61 67 } //02 00  ExAllocatePoolWithTag
		$a_01_2 = {4b 65 44 65 6c 61 79 45 78 65 63 75 74 69 6f 6e 54 68 72 65 61 64 } //02 00  KeDelayExecutionThread
		$a_01_3 = {4d 6d 47 65 74 53 79 73 74 65 6d 52 6f 75 74 69 6e 65 41 64 64 72 65 73 73 } //02 00  MmGetSystemRoutineAddress
		$a_01_4 = {50 73 43 72 65 61 74 65 53 79 73 74 65 6d 54 68 72 65 61 64 } //02 00  PsCreateSystemThread
		$a_01_5 = {49 6f 47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //02 00  IoGetCurrentProcess
		$a_01_6 = {50 73 47 65 74 56 65 72 73 69 6f 6e } //02 00  PsGetVersion
		$a_01_7 = {49 6f 66 43 6f 6d 70 6c 65 74 65 52 65 71 75 65 73 74 } //02 00  IofCompleteRequest
		$a_01_8 = {49 6f 52 65 67 69 73 74 65 72 44 72 69 76 65 72 52 65 69 6e 69 74 69 61 6c 69 7a 61 74 69 6f 6e } //02 00  IoRegisterDriverReinitialization
		$a_01_9 = {5a 77 4f 70 65 6e 4b 65 79 } //02 00  ZwOpenKey
		$a_01_10 = {5a 77 53 65 74 56 61 6c 75 65 4b 65 79 } //02 00  ZwSetValueKey
		$a_01_11 = {5a 77 43 6c 6f 73 65 } //02 00  ZwClose
		$a_00_12 = {49 00 6f 00 43 00 72 00 65 00 61 00 74 00 65 00 53 00 79 00 6d 00 62 00 6f 00 6c 00 69 00 63 00 4c 00 69 00 6e 00 6b 00 } //02 00  IoCreateSymbolicLink
		$a_00_13 = {49 00 6f 00 44 00 65 00 6c 00 65 00 74 00 65 00 44 00 65 00 76 00 69 00 63 00 65 00 } //03 00  IoDeleteDevice
		$a_01_14 = {66 43 66 4a 66 5a 66 5b } //03 00  fCfJfZf[
		$a_01_15 = {66 42 66 4b 5b 5a 46 } //03 00  fBfK[ZF
		$a_01_16 = {66 53 66 52 66 } //03 00  fSfRf
		$a_01_17 = {66 42 66 4b 5b 5a 5b } //05 00  fBfK[Z[
		$a_00_18 = {2e 00 64 00 6c 00 6c 00 2c 00 44 00 6c 00 6c 00 55 00 6e 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 53 00 65 00 72 00 76 00 65 00 72 00 } //05 00  .dll,DllUnregisterServer
		$a_00_19 = {5c 00 4b 00 61 00 62 00 43 00 6c 00 65 00 61 00 6e 00 6e 00 65 00 72 00 } //04 00  \KabCleanner
		$a_00_20 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 52 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 } //02 00  \system32\Rundll32.exe 
		$a_00_21 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 } //04 00  \Device
		$a_00_22 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 } //01 00  \SystemRoot\system32\drivers\
		$a_00_23 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 } //01 00  \DosDevices
		$a_00_24 = {73 00 79 00 73 00 74 00 65 00 6d 00 72 00 6f 00 6f 00 74 00 } //01 00  systemroot
		$a_00_25 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 } //02 00  \SystemRoot
		$a_00_26 = {53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 44 00 52 00 49 00 56 00 45 00 52 00 53 00 5c 00 } //01 00  System32\DRIVERS\
		$a_01_27 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //04 00  explorer.exe
		$a_01_28 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 } //00 00  ntoskrnl.exe
	condition:
		any of ($a_*)
 
}