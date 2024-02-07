
rule Trojan_Win32_Kraziomel_C{
	meta:
		description = "Trojan:Win32/Kraziomel.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {61 62 6c 65 c7 45 90 01 01 2e 79 74 00 e8 90 01 04 68 90 01 04 8d 4e 04 e8 90 01 04 68 90 01 04 8d 4e 0c e8 90 00 } //01 00 
		$a_01_1 = {3e 3e 3e 49 44 3a 20 42 69 74 46 4f 52 43 45 20 53 48 41 32 35 36 20 56 65 72 73 69 6f 6e 20 31 2e 30 3e 3e 3e } //01 00  >>>ID: BitFORCE SHA256 Version 1.0>>>
		$a_01_2 = {31 30 66 61 35 39 37 62 33 30 66 37 36 36 63 30 31 31 64 66 64 38 34 65 38 38 31 33 36 30 61 35 30 61 61 39 32 37 39 35 34 31 35 37 65 65 34 37 } //00 00  10fa597b30f766c011dfd84e881360a50aa927954157ee47
	condition:
		any of ($a_*)
 
}