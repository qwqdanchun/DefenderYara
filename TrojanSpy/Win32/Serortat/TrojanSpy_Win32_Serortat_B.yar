
rule TrojanSpy_Win32_Serortat_B{
	meta:
		description = "TrojanSpy:Win32/Serortat.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {38 33 55 45 34 4a 49 48 33 58 53 31 53 43 42 56 4f 4c 32 52 37 37 4e 5a 57 45 42 5a 36 55 30 35 4a 47 4f 4f 5a 50 4d 49 32 54 41 4f 35 45 4c 55 33 50 4e 33 33 34 41 34 41 44 43 33 59 4a 4f 38 59 55 4b 32 41 53 4d 56 36 45 52 34 33 34 46 31 46 31 49 4d 4f 46 46 49 55 4b 41 48 52 4a } //01 00  83UE4JIH3XS1SCBVOL2R77NZWEBZ6U05JGOOZPMI2TAO5ELU3PN334A4ADC3YJO8YUK2ASMV6ER434F1F1IMOFFIUKAHRJ
		$a_01_1 = {35 44 4d 35 4e 46 57 47 45 42 31 46 48 49 32 30 57 35 41 39 56 39 43 38 41 41 59 30 47 57 4e 50 47 58 33 53 38 4e 59 45 30 4c 37 52 49 31 4a 44 45 48 33 4d 4b 57 59 52 4a 4f 53 43 54 39 49 5a 31 36 4b 4a 47 58 44 38 56 50 37 50 58 32 33 45 55 39 58 31 4c 44 59 42 43 50 50 50 42 41 } //01 00  5DM5NFWGEB1FHI20W5A9V9C8AAY0GWNPGX3S8NYE0L7RI1JDEH3MKWYRJOSCT9IZ16KJGXD8VP7PX23EU9X1LDYBCPPPBA
		$a_03_2 = {4c 6f 67 69 6e 3a 90 02 20 53 65 6e 68 61 3a 90 02 20 49 45 39 5f 44 65 63 6f 64 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}