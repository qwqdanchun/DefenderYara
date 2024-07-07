
rule Trojan_Win32_Mespam_gen_A{
	meta:
		description = "Trojan:Win32/Mespam.gen!A,SIGNATURE_TYPE_PEHSTR,14 00 14 00 15 00 00 "
		
	strings :
		$a_01_0 = {8a 07 3c 45 75 12 80 7f 01 48 75 0c 80 7f 02 4c 75 06 80 7f 03 4f 74 d3 3c 48 75 12 80 7f 01 45 75 0c 80 7f 02 4c 75 06 80 7f 03 4f 74 bd 3b cb 75 32 83 7d 10 06 75 20 80 3f 44 75 1b 80 7f 01 41 75 15 80 7f 02 54 75 0f 80 7f 03 41 75 09 } //10
		$a_01_1 = {80 3e 59 0f 85 e4 02 00 00 80 7e 01 4d 0f 85 da 02 00 00 80 7e 02 53 0f 85 d0 02 00 00 80 7e 03 47 0f 85 c6 02 00 00 89 73 34 66 8b 46 04 89 45 e4 8d 45 e4 50 } //10
		$a_01_2 = {80 3c 06 c0 75 1c 80 7c 06 01 80 75 15 80 7c 06 02 35 75 0e 80 7c 06 03 c0 75 07 80 7c 06 04 80 74 07 40 3b c7 72 d9 eb 5b 8d 48 06 80 3c 0e c0 75 07 80 7c 0e 01 80 } //10
		$a_01_3 = {68 74 74 70 3a 2f 2f 36 36 2e 31 34 38 2e 37 34 2e 37 2f 7a 75 32 2f 7a 63 2e 70 68 70 } //2 http://66.148.74.7/zu2/zc.php
		$a_01_4 = {4d 45 53 53 41 47 45 20 57 49 54 48 20 41 44 56 20 54 45 58 54 20 53 45 4e 44 45 44 } //2 MESSAGE WITH ADV TEXT SENDED
		$a_01_5 = {53 65 6e 64 69 6e 67 20 41 44 56 45 52 54 20 54 45 58 54 20 74 6f 3a } //2 Sending ADVERT TEXT to:
		$a_01_6 = {43 4f 4e 54 41 43 54 20 54 4f 3a 3a 3a 3a 3e 3e 3e } //2 CONTACT TO::::>>>
		$a_01_7 = {3f 6c 3d 25 73 26 64 3d 25 73 26 76 3d 25 73 } //2 ?l=%s&d=%s&v=%s
		$a_01_8 = {72 76 7a 31 3d 25 64 26 72 76 7a 32 3d 25 2e 31 30 75 } //2 rvz1=%d&rvz2=%.10u
		$a_01_9 = {47 6c 6f 62 61 6c 5c 69 6f 77 65 72 6a 66 67 69 6f 77 65 6a 72 6f 69 67 65 75 38 39 34 33 38 39 } //2 Global\iowerjfgiowejroigeu894389
		$a_01_10 = {50 61 63 6b 65 74 20 6c 65 6e 20 3e 20 31 30 30 20 61 6e 64 20 61 64 76 5f 74 78 74 20 3e 33 } //2 Packet len > 100 and adv_txt >3
		$a_01_11 = {77 65 62 6d 61 69 6c 2e 74 69 73 63 61 6c 69 2e 63 6f 2e 75 6b 2f 6d 61 69 6c 2f 4d 65 73 73 61 67 65 53 65 6e 64 } //1 webmail.tiscali.co.uk/mail/MessageSend
		$a_01_12 = {3f 63 6d 64 3d 43 6f 6d 70 6f 73 65 4d 61 6e 61 67 65 26 } //1 ?cmd=ComposeManage&
		$a_01_13 = {68 74 74 70 3a 2f 2f 6d 61 69 6c 2e 72 61 6d 62 6c 65 72 2e 72 75 2f 6d 61 69 6c 2f 6d 61 69 6c 2e 63 67 69 3f 6d 6f 64 65 3d 63 6f 6d 70 6f 73 65 } //1 http://mail.rambler.ru/mail/mail.cgi?mode=compose
		$a_01_14 = {68 74 74 70 3a 2f 2f 6d 61 69 6c 2e 67 6f 6f 67 6c 65 2e 63 6f 6d 2f 6d 61 69 6c 2f } //1 http://mail.google.com/mail/
		$a_01_15 = {2f 6e 65 77 74 68 72 65 61 64 2e 70 68 70 3f 64 6f 3d 70 6f 73 74 74 68 72 65 61 64 } //1 /newthread.php?do=postthread
		$a_01_16 = {6d 61 69 6c 2f 4d 61 69 6c 43 6f 6d 70 6f 73 65 2e 6c 79 63 6f 73 } //1 mail/MailCompose.lycos
		$a_01_17 = {6e 65 77 72 65 70 6c 79 2e 70 68 70 3f 64 6f 3d 70 6f 73 74 72 65 70 6c 79 } //1 newreply.php?do=postreply
		$a_01_18 = {49 63 71 45 6e 67 69 6e 65 } //1 IcqEngine
		$a_01_19 = {4a 61 62 62 65 72 45 6e 67 69 6e 65 } //1 JabberEngine
		$a_01_20 = {55 6e 69 76 65 72 73 61 6c 57 65 62 45 6e 67 69 6e 65 } //1 UniversalWebEngine
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*2+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1) >=20
 
}