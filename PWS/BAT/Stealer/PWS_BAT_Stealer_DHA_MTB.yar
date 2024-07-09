
rule PWS_BAT_Stealer_DHA_MTB{
	meta:
		description = "PWS:BAT/Stealer.DHA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 11 00 00 "
		
	strings :
		$a_00_0 = {41 00 6e 00 61 00 72 00 63 00 68 00 79 00 47 00 72 00 61 00 62 00 62 00 65 00 72 00 } //1 AnarchyGrabber
		$a_02_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6d 00 65 00 64 00 69 00 61 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 6e 00 65 00 74 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 [0-20] 2f 00 [0-20] 2f 00 41 00 6e 00 61 00 72 00 63 00 68 00 79 00 2e 00 70 00 6e 00 67 00 } //1
		$a_00_2 = {5c 00 4c 00 6f 00 63 00 61 00 6c 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 5c 00 6c 00 65 00 76 00 65 00 6c 00 64 00 62 00 } //1 \Local Storage\leveldb
		$a_00_3 = {52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 } //1 Roaming\Discord
		$a_00_4 = {52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 70 00 74 00 62 00 } //1 Roaming\discordptb
		$a_00_5 = {75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //1 username
		$a_00_6 = {41 00 76 00 61 00 74 00 61 00 72 00 55 00 72 00 6c 00 } //1 AvatarUrl
		$a_00_7 = {41 00 6e 00 61 00 72 00 63 00 68 00 79 00 20 00 54 00 6f 00 6b 00 65 00 6e 00 20 00 47 00 72 00 61 00 62 00 62 00 65 00 72 00 } //1 Anarchy Token Grabber
		$a_00_8 = {5c 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 5c 00 6c 00 65 00 76 00 65 00 6c 00 64 00 62 00 5c 00 } //1 \discord\Local Storage\leveldb\
		$a_00_9 = {57 00 65 00 62 00 68 00 6f 00 6f 00 6b 00 } //1 Webhook
		$a_00_10 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 69 00 70 00 76 00 34 00 62 00 6f 00 74 00 2e 00 77 00 68 00 61 00 74 00 69 00 73 00 6d 00 79 00 69 00 70 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 } //1 http://ipv4bot.whatismyipaddress.com/
		$a_02_11 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6c 00 6f 00 67 00 6f 00 6c 00 79 00 6e 00 78 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 6d 00 61 00 67 00 65 00 73 00 2f 00 6c 00 6f 00 67 00 6f 00 6c 00 79 00 6e 00 78 00 2f 00 31 00 62 00 2f 00 [0-20] 2e 00 70 00 6e 00 67 00 } //1
		$a_00_12 = {44 00 69 00 73 00 63 00 6f 00 72 00 64 00 20 00 54 00 6f 00 6b 00 65 00 6e 00 20 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 } //1 Discord Token Stealer
		$a_00_13 = {4d 00 7a 00 59 00 78 00 4e 00 54 00 67 00 31 00 4d 00 6a 00 41 00 7a 00 4d 00 54 00 63 00 77 00 4d 00 7a 00 63 00 33 00 4e 00 7a 00 49 00 34 00 2e 00 58 00 4f 00 78 00 50 00 39 00 67 00 2e 00 68 00 6f 00 63 00 35 00 6b 00 66 00 4a 00 46 00 52 00 63 00 52 00 76 00 52 00 37 00 37 00 5a 00 70 00 70 00 37 00 6b 00 52 00 78 00 55 00 59 00 33 00 6e 00 6b 00 } //1 MzYxNTg1MjAzMTcwMzc3NzI4.XOxP9g.hoc5kfJFRcRvR77Zpp7kRxUY3nk
		$a_00_14 = {56 00 58 00 59 00 4e 00 20 00 42 00 6f 00 74 00 } //1 VXYN Bot
		$a_00_15 = {61 00 76 00 61 00 74 00 61 00 72 00 5f 00 75 00 72 00 6c 00 } //1 avatar_url
		$a_00_16 = {52 00 61 00 64 00 69 00 63 00 61 00 6c 00 52 00 61 00 69 00 64 00 42 00 6f 00 74 00 } //1 RadicalRaidBot
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_02_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1) >=6
 
}