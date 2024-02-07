
rule TrojanSpy_WinNT_Tracklogger_gen_A{
	meta:
		description = "TrojanSpy:WinNT/Tracklogger.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,2c 00 22 00 10 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 52 00 74 00 76 00 63 00 61 00 6e 00 } //02 00  \Device\Rtvcan
		$a_00_1 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 52 00 74 00 76 00 63 00 61 00 6e 00 } //02 00  \DosDevices\Rtvcan
		$a_00_2 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 43 00 6c 00 61 00 73 00 73 00 30 00 } //03 00  \Device\KeyboardClass0
		$a_00_3 = {52 74 76 63 61 6e 3a 20 45 6e 74 65 72 69 6e 67 20 4b 65 79 62 6f 61 72 64 41 74 74 61 63 68 } //03 00  Rtvcan: Entering KeyboardAttach
		$a_00_4 = {52 74 76 63 61 6e 3a 20 43 6f 75 6c 64 6e 27 74 20 61 74 74 61 63 68 20 74 6f 20 74 61 72 67 65 74 20 64 65 76 69 63 65 } //03 00  Rtvcan: Couldn't attach to target device
		$a_00_5 = {52 74 76 63 61 6e 3a 20 43 6f 75 6c 64 6e 27 74 20 67 65 74 20 74 61 72 67 65 74 20 64 65 76 69 63 65 20 6f 62 6a 65 63 74 20 70 6f 69 6e 74 65 72 } //03 00  Rtvcan: Couldn't get target device object pointer
		$a_00_6 = {52 74 76 63 61 6e 3a 20 43 6f 75 6c 64 6e 27 74 20 63 72 65 61 74 65 20 66 69 6c 74 65 72 20 64 65 76 69 63 65 } //03 00  Rtvcan: Couldn't create filter device
		$a_00_7 = {52 74 76 63 61 6e 3a 20 45 6e 74 65 72 69 6e 67 20 4b 65 79 62 6f 61 72 64 44 65 74 61 63 68 } //03 00  Rtvcan: Entering KeyboardDetach
		$a_00_8 = {52 74 76 63 61 6e 3a 20 43 6f 75 6c 64 6e 27 74 20 64 65 74 61 63 68 2e 20 53 6f 6d 65 6f 6e 65 20 73 69 74 73 20 6f 76 65 72 } //03 00  Rtvcan: Couldn't detach. Someone sits over
		$a_00_9 = {52 74 76 63 61 6e 3a 20 46 69 6c 74 65 72 20 64 65 76 69 63 65 20 69 73 20 73 74 69 6c 6c 20 61 74 74 61 63 68 65 64 } //03 00  Rtvcan: Filter device is still attached
		$a_00_10 = {52 74 76 63 61 6e 3a 20 46 69 6c 74 65 72 20 64 65 76 69 63 65 20 64 65 74 61 63 68 65 64 } //03 00  Rtvcan: Filter device detached
		$a_00_11 = {52 74 76 63 61 6e 3a 20 45 6e 74 65 72 69 6e 67 20 43 44 4f 5f 44 69 73 70 61 74 63 68 43 72 65 61 74 65 } //03 00  Rtvcan: Entering CDO_DispatchCreate
		$a_00_12 = {52 74 76 63 61 6e 3a 20 45 6e 74 65 72 69 6e 67 20 43 44 4f 5f 44 69 73 70 61 74 63 68 43 6c 6f 73 65 } //06 00  Rtvcan: Entering CDO_DispatchClose
		$a_00_13 = {6a 00 68 4b 53 70 79 6a 10 6a 00 6a 00 6a 00 ff 35 } //08 00 
		$a_00_14 = {83 25 34 0f 01 00 00 83 25 38 0f 01 00 00 83 25 28 0f 01 00 00 83 25 3c 0f 01 00 00 83 25 40 0f 01 00 00 8b 45 08 b9 1c } //03 00 
		$a_02_15 = {49 c7 44 88 38 90 01 02 01 00 0b c9 75 f3 c7 40 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}