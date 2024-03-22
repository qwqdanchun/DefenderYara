
rule Trojan_Win32_Amadey_B_MTB{
	meta:
		description = "Trojan:Win32/Amadey.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 57 52 41 56 31 49 56 34 4d 70 41 50 53 4e 64 54 5a 61 51 4c 59 4a 49 4d 47 64 50 56 76 46 42 7a 79 63 57 50 6e 44 3d } //02 00  CWRAV1IV4MpAPSNdTZaQLYJIMGdPVvFBzycWPnD=
		$a_01_1 = {4c 58 70 56 52 4a 59 49 32 79 43 36 38 66 4b 69 62 73 47 46 32 35 58 33 67 71 64 75 57 5a 30 34 4f 41 52 78 38 73 55 74 67 57 6d 68 51 4f 36 6d 64 4c 4b 6d 4c 70 64 6e 33 30 64 65 53 58 64 53 4d 42 4e 52 50 4b 41 52 58 4f 47 4b 4f 54 78 3d } //02 00  LXpVRJYI2yC68fKibsGF25X3gqduWZ04OARx8sUtgWmhQO6mdLKmLpdn30deSXdSMBNRPKARXOGKOTx=
		$a_01_2 = {50 53 4e 6c 56 4c 59 68 34 57 37 75 36 65 75 70 62 31 55 78 33 4b 78 42 67 37 57 33 66 6b 69 38 36 54 73 79 49 59 4c 75 53 78 4a 37 49 72 68 32 4c 30 58 3d } //02 00  PSNlVLYh4W7u6eupb1Ux3KxBg7W3fki86TsyIYLuSxJ7Irh2L0X=
		$a_01_3 = {43 53 5a 36 56 31 51 57 69 41 61 41 37 66 43 73 62 4c 61 6c 35 56 74 42 33 30 36 78 66 44 30 44 32 53 68 77 56 31 54 62 51 4f 4f 75 37 79 56 64 49 6c 3d 3d } //00 00  CSZ6V1QWiAaA7fCsbLal5VtB306xfD0D2ShwV1TbQOOu7yVdIl==
	condition:
		any of ($a_*)
 
}