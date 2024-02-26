
rule Trojan_BAT_AsyncRAT_ASFO_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.ASFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {4a 00 54 00 47 00 53 00 43 00 56 00 44 00 49 00 4e 00 46 00 5a 00 53 00 41 00 34 00 44 00 53 00 4e 00 35 00 54 00 58 00 7e 00 59 00 4c 00 4e 00 7e 00 25 00 52 00 57 00 43 00 33 00 54 00 4f 00 4e 00 35 00 32 00 43 00 41 00 59 00 54 00 46 00 7e 00 25 00 5a 00 48 00 4b 00 33 00 52 00 41 00 4e 00 46 00 58 00 43 00 41 00 52 00 43 00 50 00 4b 00 4d 00 51 00 47 00 32 00 33 00 33 00 7e 00 4d 00 55 00 58 00 41 00 32 00 44 00 49 00 4b 00 7e 00 51 00 } //01 00  JTGSCVDINFZSA4DSN5TX~YLN~%RWC3TON52CAYTF~%ZHK3RANFXCARCPKMQG233~MUXA2DIK~Q
		$a_01_1 = {4f 00 47 00 41 00 58 00 44 00 41 00 4c 00 52 00 51 00 46 00 51 00 51 00 7e 00 47 00 35 00 4c 00 4d 00 4f 00 52 00 32 00 58 00 7e 00 5a 00 4a 00 35 00 4e 00 5a 00 53 00 58 00 4b 00 35 00 44 00 53 00 4d 00 46 00 57 00 43 00 59 00 49 00 43 00 51 00 4f 00 56 00 52 00 47 00 59 00 32 00 4c 00 44 00 4a 00 4e 00 53 00 58 00 53 00 56 00 44 00 50 00 4e 00 4e 00 53 00 57 00 34 00 50 00 4c 00 43 00 47 00 34 00 33 00 57 00 43 00 4e 00 4c 00 44 } //00 00 
	condition:
		any of ($a_*)
 
}