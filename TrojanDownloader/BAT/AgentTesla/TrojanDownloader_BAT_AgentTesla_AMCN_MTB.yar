
rule TrojanDownloader_BAT_AgentTesla_AMCN_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.AMCN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_01_0 = {7e 13 00 00 04 1a 9a 7e 14 00 00 04 7e 15 00 00 04 28 } //2
		$a_01_1 = {56 00 6a 00 4a 00 30 00 61 00 6b 00 35 00 58 00 55 00 6b 00 64 00 69 00 52 00 6d 00 68 00 70 00 55 00 30 00 5a 00 61 00 63 00 56 00 70 00 58 00 4e 00 57 00 35 00 6b 00 4d 00 58 00 42 00 57 00 59 00 55 00 5a 00 4b 00 55 00 56 00 56 00 55 00 4d 00 44 00 6b 00 3d 00 } //1 VjJ0ak5XUkdiRmhpU0ZacVpXNW5kMXBWYUZKUVVUMDk=
		$a_01_2 = {56 00 31 00 68 00 77 00 54 00 31 00 59 00 79 00 52 00 6c 00 64 00 52 00 61 00 32 00 78 00 57 00 59 00 57 00 78 00 4b 00 63 00 6c 00 56 00 57 00 55 00 58 00 64 00 50 00 55 00 54 00 30 00 39 00 } //1 V1hwT1YyRldRa2xWYWxKclVWUXdPUT09
		$a_01_3 = {56 00 31 00 5a 00 53 00 53 00 31 00 59 00 77 00 4e 00 56 00 64 00 52 00 61 00 32 00 78 00 57 00 59 00 57 00 78 00 4b 00 63 00 6c 00 56 00 57 00 55 00 58 00 64 00 50 00 55 00 54 00 30 00 39 00 } //1 V1ZSS1YwNVdRa2xWYWxKclVWUXdPUT09
		$a_01_4 = {56 00 6a 00 46 00 61 00 62 00 31 00 4d 00 79 00 52 00 6e 00 52 00 53 00 61 00 31 00 5a 00 73 00 55 00 6b 00 5a 00 77 00 62 00 31 00 59 00 77 00 56 00 6b 00 5a 00 50 00 55 00 54 00 30 00 39 00 } //1 VjFab1MyRnRSa1ZsUkZwb1YwVkZPUT09
		$a_01_5 = {56 00 31 00 64 00 77 00 54 00 31 00 45 00 77 00 4d 00 55 00 68 00 53 00 62 00 47 00 68 00 51 00 56 00 30 00 5a 00 61 00 63 00 56 00 70 00 58 00 4e 00 57 00 35 00 6b 00 4d 00 58 00 42 00 57 00 59 00 55 00 5a 00 4b 00 55 00 56 00 56 00 55 00 4d 00 44 00 6b 00 3d 00 } //1 V1dwT1EwMUhSbGhQV0ZacVpXNW5kMXBWYUZKUVVUMDk=
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}