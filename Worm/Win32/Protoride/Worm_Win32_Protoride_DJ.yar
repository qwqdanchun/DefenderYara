
rule Worm_Win32_Protoride_DJ{
	meta:
		description = "Worm:Win32/Protoride.DJ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 32 21 53 6b 61 6e 6e 65 72 } //01 00  12!Skanner
		$a_01_1 = {31 32 20 4e 6f 20 70 75 64 65 20 63 72 65 61 72 20 65 6c 20 61 72 63 68 69 76 6f 20 22 25 73 22 20 28 45 6e 20 75 73 6f 3f 29 } //01 00  12 No pude crear el archivo "%s" (En uso?)
		$a_01_2 = {69 66 20 6e 6f 74 20 65 78 69 73 74 20 22 22 25 2a 22 22 20 67 6f 74 6f 20 64 6f 6e 65 } //01 00  if not exist ""%*"" goto done
		$a_01_3 = {31 32 20 55 70 6c 6f 61 64 65 64 21 3a 20 25 69 2e 25 69 2e 25 69 2e 25 69 3a 25 75 20 3a 20 22 25 73 25 73 22 20 28 25 2e 31 66 6b 62 20 5c 20 25 2e 31 66 6b 62 2f 73 29 } //01 00  12 Uploaded!: %i.%i.%i.%i:%u : "%s%s" (%.1fkb \ %.1fkb/s)
		$a_01_4 = {31 32 20 45 72 72 6f 72 20 61 62 72 69 65 6e 64 6f 20 57 69 6e 69 6e 65 74 21 } //01 00  12 Error abriendo Wininet!
		$a_01_5 = {31 32 20 46 61 6c 73 6f 20 4e 65 74 62 75 73 } //01 00  12 Falso Netbus
		$a_01_6 = {5c 69 70 63 24 } //00 00  \ipc$
	condition:
		any of ($a_*)
 
}