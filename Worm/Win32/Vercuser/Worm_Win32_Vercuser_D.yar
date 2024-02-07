
rule Worm_Win32_Vercuser_D{
	meta:
		description = "Worm:Win32/Vercuser.D,SIGNATURE_TYPE_PEHSTR_EXT,40 01 36 01 0a 00 00 64 00 "
		
	strings :
		$a_01_0 = {28 42 45 7c 4b 42 29 5c 2e 74 6d 70 5c 2e 28 65 78 65 7c 5b 30 2d 39 5d 7b 31 2c 32 7d 5c 2e 65 78 65 29 } //64 00  (BE|KB)\.tmp\.(exe|[0-9]{1,2}\.exe)
		$a_01_1 = {7c 74 65 6d 70 7e 6d 61 6e 61 67 65 72 5c 2e 65 78 65 7c 53 65 72 76 69 63 65 73 53 74 61 72 74 65 72 5c 2e 65 78 65 24 } //32 00  |temp~manager\.exe|ServicesStarter\.exe$
		$a_01_2 = {41 5f 55 73 65 72 4e 61 6d 65 2c 22 64 72 77 65 62 73 74 61 74 69 63 2e 68 6f 70 74 6f 2e 6f 72 67 } //32 00  A_UserName,"drwebstatic.hopto.org
		$a_01_3 = {33 4f 76 6a 78 4b 79 69 68 4b 50 4e 6e 74 43 38 72 36 69 75 74 5a 47 37 6f 72 6a 62 36 74 } //32 00  3OvjxKyihKPNntC8r6iutZG7orjb6t
		$a_01_4 = {22 77 6f 54 72 73 55 30 6c 38 6b 45 4e 36 49 42 63 59 36 49 74 22 29 } //32 00  "woTrsU0l8kEN6IBcY6It")
		$a_01_5 = {64 65 6c 65 74 65 2c 20 25 73 74 61 72 74 75 70 25 5c 53 65 63 75 72 65 20 57 65 62 2e 6c 6e 6b } //32 00  delete, %startup%\Secure Web.lnk
		$a_01_6 = {61 5f 73 63 72 69 70 74 6e 61 6d 65 20 21 3d 20 22 74 65 6d 70 7e 6d 61 6e 61 67 65 72 2e 65 78 65 22 } //0a 00  a_scriptname != "temp~manager.exe"
		$a_01_7 = {25 66 69 6c 65 5f 6d 6f 76 5f 64 69 72 25 5c 7e 44 46 25 6e 6e 6e 25 4b 42 2e 74 6d 70 2e 65 78 65 } //0a 00  %file_mov_dir%\~DF%nnn%KB.tmp.exe
		$a_01_8 = {34 30 36 33 36 43 36 39 36 35 36 45 37 34 32 34 33 33 33 32 33 31 32 34 } //14 00  40636C69656E742433323124
		$a_01_9 = {25 61 74 65 6d 70 25 5c 7e 74 65 6d 70 7e 25 61 79 64 61 79 25 7e 2e 74 6d 70 } //00 00  %atemp%\~temp~%ayday%~.tmp
		$a_00_10 = {e7 3f 00 00 00 00 3b 00 c7 05 93 17 67 0f ec ed ac 0b 73 ec } //ed f2 
	condition:
		any of ($a_*)
 
}