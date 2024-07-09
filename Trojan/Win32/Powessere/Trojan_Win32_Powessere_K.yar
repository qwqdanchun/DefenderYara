
rule Trojan_Win32_Powessere_K{
	meta:
		description = "Trojan:Win32/Powessere.K,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {49 00 45 00 58 00 20 00 28 00 5b 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 55 00 4e 00 49 00 43 00 4f 00 44 00 45 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 28 00 67 00 70 00 20 00 48 00 4b 00 43 00 55 00 3a 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 } //2 IEX ([Text.Encoding]::UNICODE.GetString([Convert]::FromBase64String((gp HKCU:\Software\
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*2) >=3
 
}
rule Trojan_Win32_Powessere_K_2{
	meta:
		description = "Trojan:Win32/Powessere.K,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {24 00 28 00 67 00 50 00 20 00 2d 00 50 00 61 00 20 00 48 00 4b 00 4c 00 4d 00 3a 00 5c 00 53 00 59 00 } //1 $(gP -Pa HKLM:\SY
		$a_00_2 = {69 00 65 00 78 00 20 00 24 00 28 00 5b 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 55 00 6e 00 69 00 63 00 6f 00 64 00 65 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 24 00 } //1 iex $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64string($
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}
rule Trojan_Win32_Powessere_K_3{
	meta:
		description = "Trojan:Win32/Powessere.K,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //1 \powershell.exe
		$a_02_1 = {69 00 65 00 78 00 28 00 5b 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 41 00 53 00 43 00 49 00 49 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 28 00 47 00 65 00 74 00 2d 00 49 00 74 00 65 00 6d 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 20 00 27 00 48 00 4b 00 43 00 55 00 3a 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 4c 00 6f 00 77 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 27 00 29 00 2e 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 29 00 29 00 } //2
		$a_02_2 = {69 00 65 00 78 00 20 00 [0-02] 28 00 5b 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 55 00 6e 00 69 00 63 00 6f 00 64 00 65 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 28 00 47 00 65 00 74 00 2d 00 49 00 74 00 65 00 6d 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 20 00 2d 00 50 00 61 00 74 00 68 00 20 00 [0-02] 48 00 4b 00 4c 00 4d 00 3a 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 [0-20] 20 00 2d 00 4e 00 61 00 6d 00 65 00 20 00 [0-20] 29 00 2e 00 [0-20] 29 00 29 00 29 00 } //2
		$a_02_3 = {69 00 65 00 78 00 20 00 28 00 5b 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 41 00 53 00 43 00 49 00 49 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 28 00 67 00 70 00 20 00 [0-02] 48 00 4b 00 ?? ?? ?? ?? 3a 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 [0-40] 29 00 2e 00 [0-20] 29 00 29 00 29 00 } //2
		$a_02_4 = {24 00 74 00 3d 00 47 00 65 00 74 00 2d 00 49 00 74 00 65 00 6d 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 20 00 2d 00 50 00 61 00 74 00 68 00 20 00 27 00 48 00 4b 00 43 00 55 00 3a 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 6c 00 61 00 73 00 73 00 65 00 73 00 5c 00 [0-20] 27 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 20 00 74 00 3b 00 49 00 45 00 58 00 20 00 24 00 74 00 2e 00 74 00 } //2
		$a_02_5 = {49 00 65 00 78 00 20 00 24 00 28 00 5b 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 55 00 6e 00 69 00 63 00 6f 00 64 00 65 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 [0-02] 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 24 00 28 00 67 00 70 00 20 00 [0-08] 48 00 4b 00 [0-04] 3a 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 [0-40] 29 00 2e 00 [0-20] 29 00 29 00 29 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2+(#a_02_3  & 1)*2+(#a_02_4  & 1)*2+(#a_02_5  & 1)*2) >=3
 
}