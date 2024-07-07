
rule Trojan_BAT_CryptOne_A_MTB{
	meta:
		description = "Trojan:BAT/CryptOne.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 "
		
	strings :
		$a_01_0 = {66 00 6f 00 72 00 20 00 28 00 24 00 63 00 6f 00 75 00 6e 00 74 00 20 00 3d 00 20 00 30 00 3b 00 20 00 24 00 63 00 6f 00 75 00 6e 00 74 00 20 00 2d 00 6c 00 74 00 20 00 24 00 42 00 79 00 74 00 65 00 73 00 2e 00 43 00 6f 00 75 00 6e 00 74 00 3b 00 20 00 24 00 63 00 6f 00 75 00 6e 00 74 00 2b 00 2b 00 29 00 } //2 for ($count = 0; $count -lt $Bytes.Count; $count++)
		$a_01_1 = {5b 00 42 00 79 00 74 00 65 00 5d 00 24 00 62 00 20 00 3d 00 20 00 24 00 42 00 79 00 74 00 65 00 73 00 5b 00 24 00 63 00 6f 00 75 00 6e 00 74 00 5d 00 } //2 [Byte]$b = $Bytes[$count]
		$a_01_2 = {24 00 63 00 6f 00 75 00 6e 00 74 00 20 00 2b 00 20 00 31 00 29 00 20 00 2d 00 65 00 71 00 20 00 24 00 42 00 79 00 74 00 65 00 73 00 2e 00 4c 00 65 00 6e 00 67 00 74 00 68 00 } //2 $count + 1) -eq $Bytes.Length
		$a_01_3 = {2b 00 3d 00 20 00 22 00 30 00 78 00 7b 00 30 00 3a 00 78 00 32 00 7d 00 22 00 20 00 2d 00 66 00 20 00 24 00 } //2 += "0x{0:x2}" -f $
		$a_01_4 = {24 00 63 00 6f 00 75 00 6e 00 74 00 20 00 2b 00 20 00 31 00 29 00 20 00 25 00 20 00 31 00 35 00 20 00 2d 00 65 00 71 00 20 00 30 00 } //2 $count + 1) % 15 -eq 0
		$a_01_5 = {2b 00 3d 00 20 00 22 00 7b 00 30 00 7d 00 22 00 20 00 2d 00 66 00 } //2 += "{0}" -f
		$a_01_6 = {5b 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 55 00 6e 00 69 00 63 00 6f 00 64 00 65 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 24 00 } //2 [System.Text.Encoding]::Unicode.GetString($
		$a_01_7 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 45 00 78 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 20 00 2d 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 24 00 } //2 Invoke-Expression -Command $
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2) >=16
 
}