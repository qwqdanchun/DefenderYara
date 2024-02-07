
rule Trojan_Win32_Qakbot_AMF_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.AMF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 14 00 00 01 00 "
		
	strings :
		$a_81_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_81_1 = {49 36 48 45 57 68 44 30 79 } //01 00  I6HEWhD0y
		$a_81_2 = {49 67 31 6d 5a 44 64 54 67 4e 35 } //01 00  Ig1mZDdTgN5
		$a_81_3 = {4a 61 61 44 52 75 47 6f 37 6e 75 } //01 00  JaaDRuGo7nu
		$a_81_4 = {4b 33 56 69 31 39 61 35 45 5a } //01 00  K3Vi19a5EZ
		$a_81_5 = {4c 6b 41 4a 32 59 72 62 78 6b 69 } //01 00  LkAJ2Yrbxki
		$a_81_6 = {4d 51 39 49 74 49 41 41 59 } //01 00  MQ9ItIAAY
		$a_81_7 = {54 43 77 76 63 61 4a 4b 4a 39 37 } //01 00  TCwvcaJKJ97
		$a_81_8 = {55 39 6d 56 37 6e 63 64 38 30 65 } //01 00  U9mV7ncd80e
		$a_81_9 = {57 77 76 44 6a 36 39 6d 31 46 4c } //01 00  WwvDj69m1FL
		$a_81_10 = {61 4d 4d 6f 79 4f 63 72 54 72 70 } //01 00  aMMoyOcrTrp
		$a_81_11 = {61 7a 79 54 5a 6f 79 36 4f 6c 46 } //01 00  azyTZoy6OlF
		$a_81_12 = {65 33 39 4f 61 6d 74 44 } //01 00  e39OamtD
		$a_81_13 = {68 44 41 67 67 52 73 61 } //01 00  hDAggRsa
		$a_81_14 = {6a 4d 68 73 53 52 4b 50 67 48 46 } //01 00  jMhsSRKPgHF
		$a_81_15 = {6e 59 5a 69 33 43 64 69 75 50 } //01 00  nYZi3CdiuP
		$a_81_16 = {6f 61 31 62 70 31 77 59 69 47 37 } //01 00  oa1bp1wYiG7
		$a_81_17 = {74 45 44 54 51 55 6b 73 75 71 4a } //01 00  tEDTQUksuqJ
		$a_81_18 = {75 30 50 6d 4f 32 77 38 71 } //01 00  u0PmO2w8q
		$a_81_19 = {76 35 42 4d 32 41 66 } //00 00  v5BM2Af
	condition:
		any of ($a_*)
 
}