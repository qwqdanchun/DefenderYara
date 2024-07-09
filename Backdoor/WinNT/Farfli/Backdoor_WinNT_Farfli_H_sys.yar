
rule Backdoor_WinNT_Farfli_H_sys{
	meta:
		description = "Backdoor:WinNT/Farfli.H!sys,SIGNATURE_TYPE_PEHSTR_EXT,ffffff96 00 ffffff91 00 2e 00 00 "
		
	strings :
		$a_00_0 = {74 4d 8b 46 3c 83 65 08 00 8b 44 30 78 03 c6 } //5
		$a_00_1 = {f3 ab 66 ab aa 8d 45 f8 50 8d 45 fc 6a 04 50 6a 0b ff d6 3d 04 00 00 c0 } //5
		$a_02_2 = {89 7d e0 89 75 dc 89 75 e4 89 75 e8 ff 15 ?? ?? 01 00 8b 3d ?? ?? 01 00 85 c0 7c 40 6a 04 68 00 00 10 00 8d 45 fc 6a 01 50 56 68 00 10 00 00 56 68 ?? ?? 01 00 6a ff ff 35 ?? ?? 01 00 89 75 fc ff 15 ?? ?? 01 00 85 c0 7c 04 b0 01 eb 18 ff 35 ?? ?? 01 00 89 35 ?? ?? 01 00 ff d7 ff 35 ?? ?? 01 00 ff d7 32 c0 5f 5e 5b c9 c3 } //100
		$a_02_3 = {53 55 56 57 ff 15 ?? 02 01 00 8b e8 33 db be ?? ?? 01 00 8b fe 83 c9 ff 33 c0 f2 ae f7 d1 49 8d 04 2b 51 50 56 ff ?? ?? 02 01 00 83 c4 0c 85 c0 74 10 43 81 fb 00 30 00 00 7c d8 33 c0 5f 5e 5d 5b c3 8b c3 eb f7 } //100
		$a_81_4 = {5a 77 45 6e 75 6d 65 72 61 74 65 4b 65 79 } //1 ZwEnumerateKey
		$a_81_5 = {5a 77 53 65 74 56 61 6c 75 65 4b 65 79 } //1 ZwSetValueKey
		$a_81_6 = {5a 77 43 72 65 61 74 65 4b 65 79 } //1 ZwCreateKey
		$a_81_7 = {5a 77 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //1 ZwUnmapViewOfSection
		$a_81_8 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //1 ZwQuerySystemInformation
		$a_81_9 = {5a 77 43 72 65 61 74 65 46 69 6c 65 } //1 ZwCreateFile
		$a_81_10 = {5a 77 4f 70 65 6e 4b 65 79 } //1 ZwOpenKey
		$a_81_11 = {5a 77 4d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //1 ZwMapViewOfSection
		$a_81_12 = {5a 77 43 6c 6f 73 65 } //1 ZwClose
		$a_81_13 = {5a 77 43 72 65 61 74 65 53 65 63 74 69 6f 6e } //1 ZwCreateSection
		$a_81_14 = {49 6f 47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //1 IoGetCurrentProcess
		$a_81_15 = {49 6f 43 72 65 61 74 65 53 79 6d 62 6f 6c 69 63 4c 69 6e 6b } //1 IoCreateSymbolicLink
		$a_81_16 = {49 6f 43 72 65 61 74 65 44 65 76 69 63 65 } //1 IoCreateDevice
		$a_81_17 = {49 6f 52 65 67 69 73 74 65 72 44 72 69 76 65 72 52 65 69 6e 69 74 69 61 6c 69 7a 61 74 69 6f 6e } //1 IoRegisterDriverReinitialization
		$a_81_18 = {49 6f 44 65 6c 65 74 65 44 65 76 69 63 65 } //1 IoDeleteDevice
		$a_81_19 = {49 6f 66 43 6f 6d 70 6c 65 74 65 52 65 71 75 65 73 74 } //1 IofCompleteRequest
		$a_00_20 = {5c 00 4b 00 61 00 62 00 43 00 6c 00 65 00 61 00 6e 00 6e 00 65 00 72 00 } //1 \KabCleanner
		$a_00_21 = {5c 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 73 00 65 00 74 00 5c 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 } //1 \registry\machine\system\currentcontrolset\services\
		$a_00_22 = {5c 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 6f 00 6e 00 63 00 65 00 } //1 \registry\machine\software\microsoft\windows\currentversion\runonce
		$a_00_23 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 } //1 \SystemRoot
		$a_00_24 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 } //1 \SystemRoot\system32\drivers\
		$a_00_25 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 52 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 } //1 \system32\Rundll32.exe 
		$a_00_26 = {53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 44 00 52 00 49 00 56 00 45 00 52 00 53 00 5c 00 } //1 System32\DRIVERS\
		$a_01_27 = {5c 73 79 73 74 65 6d 72 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 25 73 } //1 \systemroot\system32\%s
		$a_01_28 = {73 79 73 74 65 6d 72 6f 6f 74 } //1 systemroot
		$a_00_29 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 } //1 \Device
		$a_00_30 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 } //1 \DosDevices
		$a_00_31 = {2e 00 64 00 6c 00 6c 00 2c 00 44 00 6c 00 6c 00 55 00 6e 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 53 00 65 00 72 00 76 00 65 00 72 00 } //1 .dll,DllUnregisterServer
		$a_81_32 = {4d 6d 49 73 41 64 64 72 65 73 73 56 61 6c 69 64 } //1 MmIsAddressValid
		$a_81_33 = {50 73 53 65 74 43 72 65 61 74 65 50 72 6f 63 65 73 73 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //1 PsSetCreateProcessNotifyRoutine
		$a_81_34 = {4b 65 44 65 6c 61 79 45 78 65 63 75 74 69 6f 6e 54 68 72 65 61 64 } //1 KeDelayExecutionThread
		$a_81_35 = {45 78 41 6c 6c 6f 63 61 74 65 50 6f 6f 6c 57 69 74 68 54 61 67 } //1 ExAllocatePoolWithTag
		$a_81_36 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //1 KeServiceDescriptorTable
		$a_81_37 = {50 73 4c 6f 6f 6b 75 70 50 72 6f 63 65 73 73 42 79 50 72 6f 63 65 73 73 49 64 } //1 PsLookupProcessByProcessId
		$a_81_38 = {50 73 43 72 65 61 74 65 53 79 73 74 65 6d 54 68 72 65 61 64 } //1 PsCreateSystemThread
		$a_81_39 = {50 73 54 65 72 6d 69 6e 61 74 65 53 79 73 74 65 6d 54 68 72 65 61 64 } //1 PsTerminateSystemThread
		$a_81_40 = {4d 6d 47 65 74 53 79 73 74 65 6d 52 6f 75 74 69 6e 65 41 64 64 72 65 73 73 } //1 MmGetSystemRoutineAddress
		$a_81_41 = {4b 65 49 6e 69 74 69 61 6c 69 7a 65 54 69 6d 65 72 } //1 KeInitializeTimer
		$a_01_42 = {2e 74 65 78 74 } //1 .text
		$a_01_43 = {68 2e 64 61 74 61 } //1 h.data
		$a_01_44 = {2e 72 65 6c 6f 63 } //1 .reloc
		$a_01_45 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 } //1 ntoskrnl.exe
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*5+(#a_02_2  & 1)*100+(#a_02_3  & 1)*100+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*1+(#a_81_17  & 1)*1+(#a_81_18  & 1)*1+(#a_81_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*1+(#a_00_23  & 1)*1+(#a_00_24  & 1)*1+(#a_00_25  & 1)*1+(#a_00_26  & 1)*1+(#a_01_27  & 1)*1+(#a_01_28  & 1)*1+(#a_00_29  & 1)*1+(#a_00_30  & 1)*1+(#a_00_31  & 1)*1+(#a_81_32  & 1)*1+(#a_81_33  & 1)*1+(#a_81_34  & 1)*1+(#a_81_35  & 1)*1+(#a_81_36  & 1)*1+(#a_81_37  & 1)*1+(#a_81_38  & 1)*1+(#a_81_39  & 1)*1+(#a_81_40  & 1)*1+(#a_81_41  & 1)*1+(#a_01_42  & 1)*1+(#a_01_43  & 1)*1+(#a_01_44  & 1)*1+(#a_01_45  & 1)*1) >=145
 
}