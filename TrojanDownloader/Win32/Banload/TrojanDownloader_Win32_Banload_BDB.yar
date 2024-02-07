
rule TrojanDownloader_Win32_Banload_BDB{
	meta:
		description = "TrojanDownloader:Win32/Banload.BDB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 43 20 22 72 65 67 2e 65 78 65 20 41 44 44 20 22 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 41 70 70 43 6f 6d 70 61 74 46 6c 61 67 73 5c 4c 61 79 65 72 73 22 20 2f 76 } //01 00  /C "reg.exe ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v
		$a_01_1 = {52 00 55 00 4e 00 41 00 53 00 41 00 44 00 4d 00 49 00 4e 00 20 00 57 00 49 00 4e 00 37 00 52 00 54 00 4d 00 22 00 20 00 2f 00 66 00 } //01 00  RUNASADMIN WIN7RTM" /f
		$a_01_2 = {38 00 35 00 39 00 32 00 42 00 42 00 34 00 31 00 41 00 34 00 42 00 41 00 41 00 38 00 42 00 37 00 43 00 38 00 36 00 44 00 45 00 39 00 31 00 35 00 34 00 43 00 46 00 41 00 32 00 36 00 44 00 30 00 37 00 39 00 39 00 38 00 34 00 35 00 46 00 35 00 31 00 34 00 34 00 42 00 38 00 45 00 41 00 37 00 34 00 37 00 38 00 36 00 43 00 30 00 35 00 37 00 44 00 45 00 30 00 32 00 33 00 32 00 45 00 33 00 31 00 42 00 44 00 44 00 36 00 31 00 38 00 30 00 44 00 31 00 30 00 33 00 33 00 35 00 43 00 38 00 36 00 42 00 39 00 33 00 41 00 38 00 43 00 46 00 } //01 00  8592BB41A4BAA8B7C86DE9154CFA26D0799845F5144B8EA74786C057DE0232E31BDD6180D10335C86B93A8CF
		$a_01_3 = {38 00 34 00 39 00 44 00 42 00 36 00 42 00 46 00 32 00 35 00 33 00 44 00 32 00 44 00 33 00 32 00 34 00 33 00 44 00 37 00 37 00 36 00 46 00 39 00 30 00 39 00 31 00 46 00 32 00 32 00 33 00 43 00 42 00 32 00 42 00 46 00 35 00 43 00 45 00 43 00 31 00 44 00 35 00 30 00 41 00 39 00 42 00 38 00 35 00 38 00 39 00 37 00 44 00 33 00 37 00 41 00 46 00 39 00 31 00 39 00 32 00 44 00 33 00 38 00 32 00 46 00 32 00 39 00 34 00 45 00 39 00 33 00 45 00 43 00 37 00 38 00 } //01 00  849DB6BF253D2D3243D776F9091F223CB2BF5CEC1D50A9B85897D37AF9192D382F294E93EC78
		$a_01_4 = {38 00 45 00 42 00 43 00 36 00 42 00 39 00 43 00 33 00 43 00 33 00 37 00 33 00 35 00 32 00 39 00 41 00 37 00 34 00 35 00 46 00 35 00 32 00 32 00 41 00 31 00 34 00 30 00 46 00 45 00 33 00 42 00 35 00 30 00 38 00 34 00 42 00 46 00 37 00 38 00 38 00 33 00 44 00 39 00 37 00 34 00 42 00 37 00 34 00 43 00 39 00 35 00 43 00 30 00 37 00 41 00 45 00 43 00 30 00 36 00 33 00 33 00 45 00 37 00 34 00 35 00 } //01 00  8EBC6B9C3C373529A745F522A140FE3B5084BF7883D974B74C95C07AEC0633E745
		$a_01_5 = {42 00 31 00 42 00 45 00 41 00 32 00 42 00 44 00 33 00 46 00 46 00 30 00 33 00 33 00 44 00 37 00 37 00 45 00 39 00 37 00 35 00 36 00 44 00 43 00 30 00 41 00 33 00 41 00 44 00 37 00 37 00 44 00 } //01 00  B1BEA2BD3FF033D77E9756DC0A3AD77D
		$a_01_6 = {44 00 41 00 35 00 34 00 44 00 34 00 37 00 32 00 46 00 38 00 32 00 33 00 43 00 32 00 36 00 41 00 45 00 44 00 32 00 44 00 46 00 33 00 31 00 36 00 35 00 44 00 39 00 32 00 34 00 41 00 46 00 37 00 36 00 34 00 39 00 36 00 38 00 31 00 45 00 37 00 31 00 44 00 } //01 00  DA54D472F823C26AED2DF3165D924AF7649681E71D
		$a_01_7 = {41 00 44 00 44 00 20 00 48 00 4b 00 4c 00 4d 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 20 00 43 00 6f 00 6e 00 73 00 65 00 6e 00 74 00 50 00 72 00 6f 00 6d 00 70 00 74 00 42 00 65 00 68 00 61 00 76 00 69 00 6f 00 72 00 41 00 64 00 6d 00 69 00 6e 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 30 00 20 00 2f 00 66 00 } //00 00  ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v  ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
		$a_00_8 = {5d 04 00 } //00 ec 
	condition:
		any of ($a_*)
 
}