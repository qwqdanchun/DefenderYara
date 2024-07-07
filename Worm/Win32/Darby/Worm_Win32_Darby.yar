
rule Worm_Win32_Darby{
	meta:
		description = "Worm:Win32/Darby,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1b 00 26 00 00 "
		
	strings :
		$a_00_0 = {45 00 73 00 63 00 72 00 69 00 74 00 6f 00 72 00 69 00 6f 00 } //1 Escritorio
		$a_00_1 = {73 00 76 00 68 00 6f 00 73 00 74 00 } //1 svhost
		$a_00_2 = {42 00 61 00 72 00 64 00 69 00 65 00 6c 00 } //1 Bardiel
		$a_00_3 = {50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 } //1 Proyecto
		$a_00_4 = {63 00 6f 00 6e 00 65 00 63 00 74 00 } //1 conect
		$a_00_5 = {63 00 65 00 72 00 72 00 6f 00 } //1 cerro
		$a_00_6 = {4e 00 49 00 43 00 4b 00 } //1 NICK
		$a_00_7 = {55 00 53 00 45 00 52 00 } //1 USER
		$a_00_8 = {74 00 65 00 72 00 72 00 61 00 2e 00 63 00 6f 00 6d 00 } //1 terra.com
		$a_00_9 = {68 00 6f 00 74 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 hotmail.com
		$a_00_10 = {7a 00 6f 00 6e 00 61 00 76 00 2e 00 6f 00 72 00 67 00 } //1 zonav.org
		$a_00_11 = {61 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 aol.com
		$a_00_12 = {6d 00 73 00 6e 00 2e 00 63 00 6f 00 6d 00 } //1 msn.com
		$a_00_13 = {6c 00 61 00 74 00 69 00 6e 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 latinmail.com
		$a_00_14 = {79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 } //1 yahoo.com
		$a_00_15 = {73 00 74 00 61 00 72 00 74 00 6d 00 65 00 64 00 69 00 61 00 2e 00 63 00 6f 00 6d 00 } //1 startmedia.com
		$a_00_16 = {70 00 72 00 6f 00 64 00 69 00 67 00 79 00 2e 00 6d 00 78 00 } //1 prodigy.mx
		$a_00_17 = {75 00 73 00 65 00 72 00 73 00 2e 00 75 00 6e 00 64 00 65 00 72 00 6e 00 65 00 74 00 2e 00 6f 00 72 00 67 00 } //1 users.undernet.org
		$a_00_18 = {63 00 72 00 61 00 63 00 6b 00 2e 00 65 00 78 00 65 00 } //1 crack.exe
		$a_00_19 = {45 00 78 00 70 00 6c 00 6f 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //1 Exploit.exe
		$a_00_20 = {43 00 72 00 61 00 63 00 6b 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //2 Cracker.exe
		$a_00_21 = {67 00 65 00 6e 00 65 00 72 00 61 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 } //2 generator.exe
		$a_00_22 = {41 72 63 68 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 } //1 Archivos de programa
		$a_01_23 = {49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 } //1 InternetGetConnectedState
		$a_00_24 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //1 GetWindowsDirectoryA
		$a_00_25 = {57 53 41 43 61 6e 63 65 6c 42 6c 6f 63 6b 69 6e 67 43 61 6c 6c } //1 WSACancelBlockingCall
		$a_00_26 = {66 35 07 00 0f bf c0 50 8d 4d } //3
		$a_00_27 = {6f 00 73 00 73 00 77 00 3d 00 28 00 28 00 } //3 ossw=((
		$a_00_28 = {54 00 68 00 61 00 73 00 70 00 66 00 75 00 62 00 } //3 Thaspfub
		$a_00_29 = {4a 00 6e 00 64 00 75 00 68 00 74 00 68 00 61 00 73 00 } //3 Jnduhthas
		$a_00_30 = {50 00 6e 00 69 00 63 00 68 00 70 00 74 00 } //2 Pnichpt
		$a_00_31 = {44 00 72 00 75 00 75 00 62 00 69 00 73 00 } //2 Druubis
		$a_00_32 = {57 00 68 00 6b 00 6e 00 64 00 6e 00 62 00 74 00 } //3 Whkndnbt
		$a_00_33 = {7e 00 53 00 68 00 68 00 6b 00 74 00 } //3 ~Shhkt
		$a_00_34 = {54 00 7e 00 74 00 73 00 62 00 6a 00 } //2 T~tsbj
		$a_00_35 = {43 00 6e 00 74 00 66 00 65 00 6b 00 62 00 55 00 62 00 } //3 CntfekbUb
		$a_00_36 = {72 00 69 00 63 00 62 00 75 00 69 00 62 00 73 00 } //2 ricbuibs
		$a_00_37 = {5b 00 45 00 73 00 36 00 29 00 65 00 } //2 [Es6)e
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*2+(#a_00_21  & 1)*2+(#a_00_22  & 1)*1+(#a_01_23  & 1)*1+(#a_00_24  & 1)*1+(#a_00_25  & 1)*1+(#a_00_26  & 1)*3+(#a_00_27  & 1)*3+(#a_00_28  & 1)*3+(#a_00_29  & 1)*3+(#a_00_30  & 1)*2+(#a_00_31  & 1)*2+(#a_00_32  & 1)*3+(#a_00_33  & 1)*3+(#a_00_34  & 1)*2+(#a_00_35  & 1)*3+(#a_00_36  & 1)*2+(#a_00_37  & 1)*2) >=27
 
}