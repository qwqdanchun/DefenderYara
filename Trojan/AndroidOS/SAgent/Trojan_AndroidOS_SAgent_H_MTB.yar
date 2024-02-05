
rule Trojan_AndroidOS_SAgent_H_MTB{
	meta:
		description = "Trojan:AndroidOS/SAgent.H!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {04 aa 00 f0 90 01 01 fd 11 20 ff f7 90 01 03 4c 00 21 11 22 02 90 01 01 ff f7 90 01 01 ec a8 1c 02 99 04 aa 01 f0 90 01 01 f8 7c 44 80 21 04 aa 02 98 00 f0 90 01 01 fd 24 68 00 21 80 22 20 1c ff f7 90 01 01 ec 22 1c 29 1c 34 1c 12 31 80 23 92 3c 04 a8 ff f7 90 01 01 fe 20 1c ff f7 90 01 01 ec 29 1c 06 1c 92 31 04 a8 32 1c 23 1c ff f7 90 01 01 fe 21 1c 01 22 01 9b 30 1c ff f7 90 01 01 ec 01 98 ff f7 90 01 01 ec 01 98 90 00 } //01 00 
		$a_03_1 = {11 20 df f8 90 01 01 a0 ff f7 90 01 01 ec 00 21 11 22 83 46 ff f7 90 01 01 ec b0 1c 59 46 6a 46 01 f0 90 01 01 f8 80 21 6a 46 58 46 00 f0 90 01 01 fd fa 44 da f8 90 01 01 a0 00 21 80 22 50 46 ff f7 90 01 01 ec 52 46 06 f1 90 01 01 01 80 23 68 46 ff f7 90 01 01 fd 40 46 ff f7 90 01 01 ec 06 f1 90 01 01 01 43 46 82 46 68 46 52 46 ff f7 90 01 01 fd 41 46 01 22 3b 46 50 46 ff f7 90 01 01 ec 38 46 ff f7 90 01 01 ec 38 46 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}