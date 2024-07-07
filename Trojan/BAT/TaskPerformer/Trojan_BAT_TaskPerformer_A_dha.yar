
rule Trojan_BAT_TaskPerformer_A_dha{
	meta:
		description = "Trojan:BAT/TaskPerformer.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_00_0 = {38 38 37 39 33 30 63 66 2d 37 61 34 63 2d 34 30 39 64 2d 61 62 32 62 2d 39 37 63 65 38 62 35 64 38 61 65 62 } //3 887930cf-7a4c-409d-ab2b-97ce8b5d8aeb
		$a_01_1 = {5c 74 61 73 6b 70 65 72 66 6f 72 6d 65 72 5f 73 65 72 76 65 72 5c 74 61 73 6b 70 65 72 66 6f 72 6d 65 72 5c } //2 \taskperformer_server\taskperformer\
		$a_01_2 = {74 61 73 6b 70 65 72 66 6f 72 6d 65 72 2e 73 72 63 2e } //2 taskperformer.src.
		$a_01_3 = {37 00 33 00 30 00 30 00 36 00 35 00 30 00 30 00 36 00 33 00 30 00 30 00 36 00 46 00 30 00 30 00 36 00 45 00 30 00 30 00 36 00 34 00 30 00 30 00 36 00 31 00 30 00 30 00 37 00 32 00 30 00 30 00 37 00 39 00 30 00 30 00 32 00 45 00 30 00 30 00 37 00 30 00 30 00 30 00 36 00 38 00 30 00 30 00 37 00 30 00 30 00 30 00 } //1 7300650063006F006E0064006100720079002E00700068007000
		$a_01_4 = {37 00 30 00 30 00 30 00 37 00 32 00 30 00 30 00 36 00 39 00 30 00 30 00 36 00 44 00 30 00 30 00 36 00 31 00 30 00 30 00 37 00 32 00 30 00 30 00 37 00 39 00 30 00 30 00 35 00 46 00 30 00 30 00 36 00 44 00 30 00 30 00 36 00 31 00 30 00 30 00 36 00 39 00 30 00 30 00 36 00 45 00 30 00 30 00 32 00 45 00 30 00 30 00 37 00 30 00 30 00 30 00 36 00 38 00 30 00 30 00 37 00 30 00 30 00 30 00 } //1 7000720069006D006100720079005F006D00610069006E002E00700068007000
		$a_01_5 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 4d 00 41 00 43 00 41 00 64 00 64 00 72 00 65 00 73 00 73 00 2c 00 20 00 49 00 50 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 41 00 64 00 61 00 70 00 74 00 65 00 72 00 43 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //1 select MACAddress, IPEnabled from Win32_NetworkAdapterConfiguration
	condition:
		((#a_00_0  & 1)*3+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}