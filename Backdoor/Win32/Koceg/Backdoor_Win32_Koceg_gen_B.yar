
rule Backdoor_Win32_Koceg_gen_B{
	meta:
		description = "Backdoor:Win32/Koceg.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,46 00 3c 00 31 00 00 "
		
	strings :
		$a_01_0 = {6e 74 75 73 65 72 } //1 ntuser
		$a_01_1 = {58 50 54 50 53 57 } //1 XPTPSW
		$a_01_2 = {5f 63 6f 6e 74 72 6f 6c 66 70 } //1 _controlfp
		$a_01_3 = {25 25 25 30 32 58 } //1 %%%02X
		$a_01_4 = {49 6d 61 67 65 50 61 74 68 } //1 ImagePath
		$a_01_5 = {63 66 74 6d 6f 6e 2e 65 78 65 } //1 cftmon.exe
		$a_01_6 = {77 69 6e 69 6e 65 74 2e 64 6c 6c } //1 wininet.dll
		$a_01_7 = {73 70 6f 6f 6c 73 2e 65 78 65 } //1 spools.exe
		$a_00_8 = {77 00 69 00 6e 00 69 00 6e 00 65 00 74 00 2e 00 } //1 wininet.
		$a_01_9 = {2e 65 78 74 72 61 } //1 .extra
		$a_01_10 = {66 74 70 33 33 2e 64 6c 6c } //1 ftp33.dll
		$a_01_11 = {5c 65 78 65 66 69 6c 65 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 5c } //1 \exefile\shell\open\command\
		$a_01_12 = {3c 66 6f 72 6d 20 6d 65 74 68 6f 64 3d } //2 <form method=
		$a_01_13 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_01_14 = {73 74 72 63 6d 70 } //1 strcmp
		$a_01_15 = {5f 69 6e 69 74 74 65 72 6d } //1 _initterm
		$a_01_16 = {73 74 72 6c 65 6e } //1 strlen
		$a_01_17 = {5f 73 74 72 64 75 70 } //1 _strdup
		$a_01_18 = {6d 65 6d 73 65 74 } //1 memset
		$a_01_19 = {5f 73 74 72 63 6d 70 69 } //1 _strcmpi
		$a_01_20 = {53 74 61 72 74 75 70 49 6e 66 6f } //1 StartupInfo
		$a_01_21 = {73 74 72 74 6f 6b } //1 strtok
		$a_01_22 = {5f 5f 73 65 74 75 73 65 72 6d 61 74 68 65 72 72 } //1 __setusermatherr
		$a_01_23 = {74 6f 75 70 70 65 72 } //1 toupper
		$a_01_24 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c } //1 Software\Microsoft\Windows\CurrentVersion\Run\
		$a_01_25 = {5c 4c 6f 63 61 6c 20 53 65 74 74 69 6e 67 73 5c 41 70 70 6c 69 63 61 74 69 6f 6e 20 44 61 74 61 5c } //1 \Local Settings\Application Data\
		$a_01_26 = {5c 64 72 69 76 65 72 73 5c } //1 \drivers\
		$a_01_27 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 53 63 68 65 64 75 6c 65 } //1 SYSTEM\CurrentControlSet\Services\Schedule
		$a_01_28 = {47 45 54 20 25 73 20 48 54 54 50 2f 31 2e 31 } //2 GET %s HTTP/1.1
		$a_01_29 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //1 Content-Type: application/x-www-form-urlencoded
		$a_01_30 = {43 6f 6e 74 65 6e 74 2d 6c 65 6e 67 74 68 3a 20 25 64 } //1 Content-length: %d
		$a_01_31 = {48 6f 73 74 3a 20 25 73 } //1 Host: %s
		$a_01_32 = {50 4f 53 54 20 25 73 20 48 54 54 50 2f 31 2e 31 } //2 POST %s HTTP/1.1
		$a_01_33 = {72 6d 2b 69 6f 6e } //3 rm+ion
		$a_01_34 = {68 74 74 70 3a 2f 2f 66 65 77 66 77 65 2e 63 6f 6d 2f } //2 http://fewfwe.com/
		$a_01_35 = {68 74 74 70 3a 2f 2f 66 65 77 66 77 65 2e 6e 65 74 2f } //2 http://fewfwe.net/
		$a_01_36 = {6d 61 6e 64 61 2e 70 68 70 } //10 manda.php
		$a_01_37 = {5c 6d 70 72 2e 64 61 74 } //5 \mpr.dat
		$a_01_38 = {5c 63 73 2e 64 61 74 } //10 \cs.dat
		$a_01_39 = {64 61 74 61 2e 70 68 70 } //5 data.php
		$a_01_40 = {63 3a 5c 73 74 6f 70 } //10 c:\stop
		$a_01_41 = {5c 6d 70 72 32 2e 64 61 74 } //5 \mpr2.dat
		$a_01_42 = {67 75 64 75 67 2c 61 6d 6f 2d } //2 gudug,amo-
		$a_01_43 = {6d 70 7a 2e 74 6d 70 } //10 mpz.tmp
		$a_01_44 = {25 73 3f 69 64 3d 25 73 26 6c 3d 25 73 } //3 %s?id=%s&l=%s
		$a_01_45 = {30 5c 31 62 31 } //2 0\1b1
		$a_01_46 = {22 30 2e 30 38 30 } //2 "0.080
		$a_01_47 = {20 22 25 31 22 20 25 2a } //3  "%1" %*
		$a_01_48 = {76 62 73 2e 70 68 70 } //4 vbs.php
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*2+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_01_27  & 1)*1+(#a_01_28  & 1)*2+(#a_01_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_01_32  & 1)*2+(#a_01_33  & 1)*3+(#a_01_34  & 1)*2+(#a_01_35  & 1)*2+(#a_01_36  & 1)*10+(#a_01_37  & 1)*5+(#a_01_38  & 1)*10+(#a_01_39  & 1)*5+(#a_01_40  & 1)*10+(#a_01_41  & 1)*5+(#a_01_42  & 1)*2+(#a_01_43  & 1)*10+(#a_01_44  & 1)*3+(#a_01_45  & 1)*2+(#a_01_46  & 1)*2+(#a_01_47  & 1)*3+(#a_01_48  & 1)*4) >=60
 
}