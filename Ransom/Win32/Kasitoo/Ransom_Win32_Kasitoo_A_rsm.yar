
rule Ransom_Win32_Kasitoo_A_rsm{
	meta:
		description = "Ransom:Win32/Kasitoo.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 13 00 00 03 00 "
		
	strings :
		$a_00_0 = {67 70 67 2e 65 78 65 20 2d 2d 72 65 63 69 70 69 65 6e 74 20 71 77 65 72 74 79 20 20 2d 6f 20 22 25 73 25 73 2e 25 64 2e 71 77 65 72 74 79 22 20 2d 2d 65 6e 63 72 79 70 74 20 22 25 73 25 73 } //03 00  gpg.exe --recipient qwerty  -o "%s%s.%d.qwerty" --encrypt "%s%s
		$a_03_1 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 69 73 20 65 6e 63 72 79 70 74 65 64 20 2e 20 4d 61 69 6c 20 90 02 40 2e 20 53 65 6e 64 20 79 6f 75 72 20 49 44 90 00 } //03 00 
		$a_00_2 = {4e 6f 74 65 21 20 59 6f 75 20 68 61 76 65 20 6f 6e 6c 79 20 37 32 20 68 6f 75 72 73 20 66 6f 72 20 77 72 69 74 65 20 6f 6e 20 65 2d 6d 61 69 6c 20 28 73 65 65 20 62 65 6c 6f 77 29 20 6f 72 20 61 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 77 69 6c 6c 20 62 65 20 6c 6f 73 74 } //01 00  Note! You have only 72 hours for write on e-mail (see below) or all your files will be lost
		$a_03_3 = {65 63 68 6f 20 25 73 20 90 02 04 20 22 25 73 2f 52 45 41 44 4d 45 5f 44 45 43 52 59 50 54 2e 74 78 74 90 00 } //01 00 
		$a_00_4 = {73 68 72 65 64 20 2d 66 20 2d 75 20 2d 6e 20 31 20 22 25 73 25 73 } //01 00  shred -f -u -n 1 "%s%s
		$a_00_5 = {74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 73 71 6c } //01 00  taskkill /F /IM sql
		$a_00_6 = {74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 63 68 72 6f 6d 65 2e 65 78 65 } //01 00  taskkill /F /IM chrome.exe
		$a_00_7 = {74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 69 65 2e 65 78 65 } //01 00  taskkill /F /IM ie.exe
		$a_00_8 = {74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 66 69 72 65 66 6f 78 2e 65 78 65 } //01 00  taskkill /F /IM firefox.exe
		$a_00_9 = {74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 6f 70 65 72 61 2e 65 78 65 } //01 00  taskkill /F /IM opera.exe
		$a_00_10 = {74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 73 61 66 61 72 69 2e 65 78 65 } //01 00  taskkill /F /IM safari.exe
		$a_00_11 = {74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 74 61 73 6b 6d 67 72 2e 65 78 65 } //01 00  taskkill /F /IM taskmgr.exe
		$a_00_12 = {74 61 73 6b 6b 69 6c 6c 20 2f 46 20 2f 49 4d 20 31 63 } //01 00  taskkill /F /IM 1c
		$a_00_13 = {76 73 73 61 64 6d 69 6e 2e 65 78 65 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //01 00  vssadmin.exe delete shadows /all /quiet
		$a_00_14 = {77 6d 69 63 20 73 68 61 64 6f 77 63 6f 70 79 20 64 65 6c 65 74 65 } //01 00  wmic shadowcopy delete
		$a_00_15 = {62 63 64 65 64 69 74 2e 65 78 65 20 62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 20 69 67 6e 6f 72 65 61 6c 6c 66 61 69 6c 75 72 65 73 } //01 00  bcdedit.exe bcdedit /set {default} bootstatuspolicy ignoreallfailures
		$a_00_16 = {62 63 64 65 64 69 74 2e 65 78 65 20 62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 6e 6f } //01 00  bcdedit.exe bcdedit /set {default} recoveryenabled no
		$a_00_17 = {77 62 61 64 6d 69 6e 2e 65 78 65 20 77 62 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 63 61 74 61 6c 6f 67 20 2d 71 75 69 65 74 } //01 00  wbadmin.exe wbadmin delete catalog -quiet
		$a_00_18 = {64 65 6c 20 2f 51 20 2f 46 20 2f 53 20 25 73 24 72 65 63 79 63 6c 65 2e 62 69 6e } //00 00  del /Q /F /S %s$recycle.bin
		$a_00_19 = {5d 04 00 00 9e b3 03 80 5c } //20 00 
	condition:
		any of ($a_*)
 
}