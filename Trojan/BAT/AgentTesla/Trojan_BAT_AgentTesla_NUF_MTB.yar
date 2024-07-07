
rule Trojan_BAT_AgentTesla_NUF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NUF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {57 3d a2 1d 09 1f 00 00 00 fa 25 33 00 16 00 00 01 } //1
		$a_01_1 = {63 00 3a 00 5c 00 74 00 65 00 6d 00 70 00 5c 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 2e 00 74 00 78 00 74 00 } //1 c:\temp\Decrypted.txt
		$a_01_2 = {5c 00 69 00 6e 00 69 00 5c 00 6d 00 6f 00 64 00 2e 00 69 00 6e 00 69 00 } //1 \ini\mod.ini
		$a_01_3 = {5c 00 43 00 6f 00 4a 00 32 00 5c 00 44 00 61 00 74 00 61 00 5c 00 50 00 6c 00 61 00 79 00 65 00 72 00 5c 00 } //1 \CoJ2\Data\Player\
		$a_01_4 = {47 00 75 00 6e 00 73 00 6c 00 69 00 6e 00 67 00 65 00 72 00 } //1 Gunslinger
		$a_01_5 = {41 00 73 00 53 00 73 00 4d 00 6d 00 42 00 } //1 AsSsMmB
		$a_01_6 = {40 00 53 00 79 00 73 00 74 00 65 00 6d 00 40 00 2e 00 40 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 40 00 2e 00 40 00 41 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 40 00 } //1 @System@.@Reflection@.@Assembly@
		$a_01_7 = {40 00 40 00 40 00 4d 00 65 00 74 00 68 00 6f 00 64 00 30 00 40 00 40 00 40 00 } //1 @@@Method0@@@
		$a_01_8 = {5c 00 43 00 6f 00 4a 00 32 00 5c 00 53 00 65 00 72 00 76 00 65 00 72 00 41 00 64 00 6d 00 69 00 6e 00 73 00 2e 00 69 00 6e 00 69 00 } //1 \CoJ2\ServerAdmins.ini
		$a_01_9 = {5c 00 73 00 65 00 74 00 75 00 70 00 5f 00 4d 00 6f 00 64 00 73 00 43 00 6f 00 6a 00 2e 00 65 00 78 00 65 00 } //1 \setup_ModsCoj.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}