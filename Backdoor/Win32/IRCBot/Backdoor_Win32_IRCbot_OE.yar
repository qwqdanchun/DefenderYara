
rule Backdoor_Win32_IRCbot_OE{
	meta:
		description = "Backdoor:Win32/IRCbot.OE,SIGNATURE_TYPE_PEHSTR_EXT,2c 00 1e 00 2d 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 67 6d 76 76 6d 6f 6b 71 69 2e 65 78 65 } //1 C:\WINDOWS\SYSTEM32\gmvvmokqi.exe
		$a_00_1 = {4d 65 73 73 61 67 65 20 77 61 73 20 73 65 6e 64 65 64 21 } //1 Message was sended!
		$a_00_2 = {41 74 61 63 6b 20 61 6c 6c 72 65 61 64 79 20 73 74 61 72 74 65 64 2e 2e 2e } //1 Atack allready started...
		$a_00_3 = {49 43 4d 50 20 66 6c 6f 6f 64 20 73 74 61 72 74 65 64 2e 2e 2e } //1 ICMP flood started...
		$a_00_4 = {53 59 4e 20 66 6c 6f 6f 64 20 73 74 61 72 74 65 64 2e 2e 2e } //1 SYN flood started...
		$a_00_5 = {46 6c 6f 6f 64 20 69 73 20 6e 6f 74 20 61 63 74 69 76 65 2e 2e 2e } //1 Flood is not active...
		$a_00_6 = {41 74 61 63 6b 20 74 65 72 6d 69 6e 61 74 65 64 2e 2e 2e } //1 Atack terminated...
		$a_00_7 = {44 6f 77 6e 6c 6f 61 64 69 6e 67 20 66 69 6c 65 2e 2e } //1 Downloading file..
		$a_00_8 = {55 70 64 61 74 69 6e 67 20 70 6c 75 67 69 6e 73 2e 2e 2e } //1 Updating plugins...
		$a_00_9 = {44 65 6c 65 74 69 6e 67 20 70 6c 75 67 69 6e 2e 2e 2e } //1 Deleting plugin...
		$a_00_10 = {78 63 68 61 6e } //1 xchan
		$a_00_11 = {78 70 6f 72 74 } //1 xport
		$a_00_12 = {78 68 6f 73 74 } //1 xhost
		$a_00_13 = {52 65 63 6f 6e 6e 65 63 74 69 6e 67 20 74 6f 20 49 52 43 20 73 65 72 76 65 72 2e 2e 2e } //1 Reconnecting to IRC server...
		$a_00_14 = {4e 6f 77 20 66 72 65 71 20 69 73 20 25 73 } //1 Now freq is %s
		$a_00_15 = {4e 6f 77 20 70 61 63 6b 65 74 73 69 7a 65 20 69 73 20 25 73 } //1 Now packetsize is %s
		$a_00_16 = {4b 65 79 20 66 6f 72 20 47 49 44 20 25 73 20 75 70 64 61 74 65 64 } //1 Key for GID %s updated
		$a_00_17 = {21 21 21 20 53 45 4c 46 44 45 53 54 52 55 43 54 49 4f 4e 20 21 21 21 } //1 !!! SELFDESTRUCTION !!!
		$a_00_18 = {64 65 6c 70 6c 75 67 69 6e } //1 delplugin
		$a_00_19 = {75 70 64 61 74 65 70 6c 75 67 69 6e 73 } //1 updateplugins
		$a_00_20 = {42 6f 74 6e 65 74 20 4c 6f 61 64 65 72 2f 31 2e 30 30 } //1 Botnet Loader/1.00
		$a_00_21 = {63 73 72 73 73 2e 65 78 65 } //1 csrss.exe
		$a_00_22 = {4a 4f 49 4e 20 25 73 } //1 JOIN %s
		$a_01_23 = {4e 49 43 4b 20 25 73 } //1 NICK %s
		$a_00_24 = {55 53 45 52 20 25 73 20 25 73 20 25 73 20 3a 25 73 } //1 USER %s %s %s :%s
		$a_00_25 = {53 55 69 43 69 44 45 } //1 SUiCiDE
		$a_00_26 = {66 75 63 6b 2e 61 6c 6c } //1 fuck.all
		$a_00_27 = {53 55 69 43 69 44 45 20 44 44 6f 53 20 45 6e 64 69 6e 65 } //1 SUiCiDE DDoS Endine
		$a_00_28 = {50 52 49 56 4d 53 47 20 25 73 20 3a 57 65 6c 63 6f 6d 65 21 20 41 64 6d 69 6e 20 69 64 3a 20 25 73 3b 20 47 49 44 3a 20 25 64 3b } //1 PRIVMSG %s :Welcome! Admin id: %s; GID: %d;
		$a_00_29 = {50 52 49 56 4d 53 47 20 25 73 20 3a 46 61 69 6c 65 64 20 74 6f 20 61 64 64 20 6e 65 77 20 61 64 6d 69 6e } //1 PRIVMSG %s :Failed to add new admin
		$a_00_30 = {50 52 49 56 4d 53 47 20 25 73 20 3a 47 6f 20 61 76 61 79 2c 20 6c 61 6d 30 20 3d 29 } //1 PRIVMSG %s :Go avay, lam0 =)
		$a_00_31 = {55 53 45 52 48 4f 53 54 20 25 73 } //1 USERHOST %s
		$a_00_32 = {50 4f 4e 47 20 25 73 } //1 PONG %s
		$a_00_33 = {68 74 74 70 3a 2f 2f 25 73 2f 25 73 3f 61 63 74 3d 67 65 74 70 6c 75 67 69 6e 73 } //1 http://%s/%s?act=getplugins
		$a_00_34 = {53 55 69 43 69 44 45 2f 31 2e 35 } //1 SUiCiDE/1.5
		$a_00_35 = {68 74 74 70 3a 2f 2f 25 73 2f 25 73 3f 6e 69 63 6b 3d 25 73 26 69 6e 66 6f 3d 25 73 } //1 http://%s/%s?nick=%s&info=%s
		$a_00_36 = {73 75 69 63 69 64 65 2e 65 78 65 } //1 suicide.exe
		$a_00_37 = {73 76 63 72 6f 6f 74 2e 65 78 65 } //1 svcroot.exe
		$a_00_38 = {73 75 69 63 69 64 65 2e 73 79 73 } //1 suicide.sys
		$a_00_39 = {73 76 63 72 6f 6f 74 } //1 svcroot
		$a_01_40 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_00_41 = {50 65 65 6b 4e 61 6d 65 64 50 69 70 65 } //1 PeekNamedPipe
		$a_00_42 = {57 72 69 74 65 46 69 6c 65 } //1 WriteFile
		$a_01_43 = {43 72 65 61 74 65 54 68 72 65 61 64 } //1 CreateThread
		$a_00_44 = {8b ec 50 52 51 ba 82 27 00 00 b8 50 bf 14 13 89 45 fc 81 45 fc cc 52 ff ff 8b 4d fc 8b 01 35 d7 d7 d7 d7 89 01 83 45 fc 04 4a 75 ed 59 5a 58 } //4
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*1+(#a_01_23  & 1)*1+(#a_00_24  & 1)*1+(#a_00_25  & 1)*1+(#a_00_26  & 1)*1+(#a_00_27  & 1)*1+(#a_00_28  & 1)*1+(#a_00_29  & 1)*1+(#a_00_30  & 1)*1+(#a_00_31  & 1)*1+(#a_00_32  & 1)*1+(#a_00_33  & 1)*1+(#a_00_34  & 1)*1+(#a_00_35  & 1)*1+(#a_00_36  & 1)*1+(#a_00_37  & 1)*1+(#a_00_38  & 1)*1+(#a_00_39  & 1)*1+(#a_01_40  & 1)*1+(#a_00_41  & 1)*1+(#a_00_42  & 1)*1+(#a_01_43  & 1)*1+(#a_00_44  & 1)*4) >=30
 
}