
rule PWS_Win32_bot_DL_MTB{
	meta:
		description = "PWS:Win32/bot.DL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {99 b9 03 00 00 00 f7 f9 8b 45 e8 0f be 0c 10 8b 95 90 01 04 0f b6 44 15 f4 33 c1 8b 8d 90 01 04 88 44 0d f4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}