
rule VirTool_WinNT_Rootkitdrv_gen_B{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.gen!B,SIGNATURE_TYPE_PEHSTR,46 00 32 00 25 00 00 "
		
	strings :
		$a_01_0 = {5b 41 6c 61 72 6d 5d 20 57 72 69 74 65 4d 65 6d 6f 65 79 20 44 65 74 65 63 74 65 64 } //5 [Alarm] WriteMemoey Detected
		$a_01_1 = {5b 41 6c 61 72 6d 5d 20 52 65 61 64 4d 65 6d 6f 65 79 20 44 65 74 65 63 74 65 64 } //5 [Alarm] ReadMemoey Detected
		$a_01_2 = {5b 41 6c 61 72 6d 5d 20 4f 70 65 6e 50 72 6f 63 65 73 73 20 44 65 74 65 63 74 65 64 } //5 [Alarm] OpenProcess Detected
		$a_01_3 = {5b 41 6c 61 72 6d 5d 20 50 72 6f 63 65 73 73 53 63 61 6e 20 44 65 74 65 63 74 65 64 } //5 [Alarm] ProcessScan Detected
		$a_01_4 = {5b 41 6c 61 72 6d 5d 20 44 65 62 75 67 50 6f 72 74 20 43 68 65 63 6b 20 44 65 74 65 63 74 65 64 } //5 [Alarm] DebugPort Check Detected
		$a_01_5 = {5b 41 4c 41 52 4d 5d 4e 6f 20 53 75 70 70 6f 72 74 20 4f 53 20 56 65 72 73 69 6f 6e } //5 [ALARM]No Support OS Version
		$a_01_6 = {5b 41 4c 41 52 4d 5d 20 57 69 6e 64 6f 77 73 20 58 50 } //5 [ALARM] Windows XP
		$a_01_7 = {5b 41 4c 41 52 4d 5d 20 57 69 6e 64 6f 77 73 20 32 30 30 30 } //5 [ALARM] Windows 2000
		$a_01_8 = {5b 41 6c 61 72 6d 5d 20 48 6f 6f 6b 53 65 74 75 70 } //5 [Alarm] HookSetup
		$a_01_9 = {5b 41 6c 61 72 6d 5d 20 48 6f 6f 6b 55 6e 73 65 74 75 70 } //5 [Alarm] HookUnsetup
		$a_01_10 = {45 6e 65 6d 79 20 50 72 6f 63 65 73 73 20 77 61 73 20 74 65 72 6d 69 6e 61 74 65 64 } //5 Enemy Process was terminated
		$a_01_11 = {3a 3a 3a 3a 3a 3a 3a 47 61 6d 65 20 52 65 73 69 73 74 61 6e 63 65 20 44 72 69 76 65 72 3a 3a 3a 3a 3a 3a 3a } //5 :::::::Game Resistance Driver:::::::
		$a_01_12 = {4f 75 74 20 50 72 6f 63 65 73 73 20 77 61 73 20 74 65 72 6d 69 6e 61 74 65 64 } //2 Out Process was terminated
		$a_01_13 = {5a 77 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 20 48 6f 6f 6b 20 55 6e 73 65 74 75 70 } //5 ZwWriteVirtualMemory Hook Unsetup
		$a_01_14 = {5a 77 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 20 48 6f 6f 6b 20 53 65 74 75 70 } //5 ZwWriteVirtualMemory Hook Setup
		$a_01_15 = {5a 77 52 65 61 64 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 20 48 6f 6f 6b 20 55 6e 73 65 74 75 70 } //5 ZwReadVirtualMemory Hook Unsetup
		$a_01_16 = {5a 77 52 65 61 64 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 20 48 6f 6f 6b 20 53 65 74 75 70 } //5 ZwReadVirtualMemory Hook Setup
		$a_01_17 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e 20 48 6f 6f 6b 20 55 6e 73 65 74 75 70 } //5 ZwQuerySystemInformation Hook Unsetup
		$a_01_18 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e 20 48 6f 6f 6b 20 53 65 74 75 70 } //5 ZwQuerySystemInformation Hook Setup
		$a_01_19 = {5a 77 4f 70 65 6e 54 68 72 65 61 64 20 48 6f 6f 6b 20 55 6e 73 65 74 75 70 } //5 ZwOpenThread Hook Unsetup
		$a_01_20 = {5a 77 4f 70 65 6e 54 68 72 65 61 64 20 48 6f 6f 6b 20 53 65 74 75 70 } //5 ZwOpenThread Hook Setup
		$a_01_21 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 47 00 52 00 } //2 \DosDevices\GR
		$a_01_22 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 63 00 3a 00 5c 00 61 00 6e 00 74 00 69 00 70 00 72 00 65 00 76 00 65 00 6e 00 74 00 2e 00 69 00 6e 00 69 00 } //5 \DosDevices\c:\antiprevent.ini
		$a_01_23 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 63 00 3a 00 5c 00 61 00 6e 00 74 00 69 00 70 00 72 00 65 00 76 00 65 00 6e 00 74 00 32 00 2e 00 69 00 6e 00 69 00 } //5 \DosDevices\c:\antiprevent2.ini
		$a_01_24 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 47 00 52 00 } //2 \Device\GR
		$a_01_25 = {c7 44 24 60 18 00 00 00 89 74 24 64 c7 44 24 6c 40 00 00 00 89 4c 24 68 89 74 24 70 89 74 24 74 ff 15 } //10
		$a_01_26 = {68 e0 40 01 00 52 56 56 56 50 ff 15 } //10
		$a_01_27 = {c7 05 24 41 01 00 a0 00 00 } //1
		$a_01_28 = {c7 05 0c 41 01 00 9c 00 00 } //1
		$a_01_29 = {c7 05 20 41 01 00 28 01 00 } //1
		$a_01_30 = {c7 05 20 41 01 00 c4 00 00 } //1
		$a_01_31 = {c7 05 00 41 01 00 a4 01 00 } //1
		$a_01_32 = {c7 05 08 41 01 00 e4 01 00 } //1
		$a_01_33 = {c7 05 0c 41 01 00 84 00 00 } //1
		$a_01_34 = {c7 05 24 41 01 00 88 00 00 } //1
		$a_01_35 = {c7 05 00 41 01 00 b0 01 00 } //1
		$a_01_36 = {8d 4c 24 6c 68 08 40 01 00 51 ff d3 8b 2d 1c 30 01 00 8d 54 24 6c 6a 01 8d 44 24 20 52 50 ff d5 56 56 6a 20 6a 03 56 68 80 } //5
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5+(#a_01_6  & 1)*5+(#a_01_7  & 1)*5+(#a_01_8  & 1)*5+(#a_01_9  & 1)*5+(#a_01_10  & 1)*5+(#a_01_11  & 1)*5+(#a_01_12  & 1)*2+(#a_01_13  & 1)*5+(#a_01_14  & 1)*5+(#a_01_15  & 1)*5+(#a_01_16  & 1)*5+(#a_01_17  & 1)*5+(#a_01_18  & 1)*5+(#a_01_19  & 1)*5+(#a_01_20  & 1)*5+(#a_01_21  & 1)*2+(#a_01_22  & 1)*5+(#a_01_23  & 1)*5+(#a_01_24  & 1)*2+(#a_01_25  & 1)*10+(#a_01_26  & 1)*10+(#a_01_27  & 1)*1+(#a_01_28  & 1)*1+(#a_01_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_01_32  & 1)*1+(#a_01_33  & 1)*1+(#a_01_34  & 1)*1+(#a_01_35  & 1)*1+(#a_01_36  & 1)*5) >=50
 
}