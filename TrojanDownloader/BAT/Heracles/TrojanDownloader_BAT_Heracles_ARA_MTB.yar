
rule TrojanDownloader_BAT_Heracles_ARA_MTB{
	meta:
		description = "TrojanDownloader:BAT/Heracles.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 04 11 05 09 11 05 09 8e 69 5d 91 08 11 05 91 61 d2 6f ?? ?? ?? 0a 11 05 17 58 13 05 11 05 08 8e 69 32 dc } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}