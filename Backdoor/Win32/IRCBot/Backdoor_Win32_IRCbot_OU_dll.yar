
rule Backdoor_Win32_IRCbot_OU_dll{
	meta:
		description = "Backdoor:Win32/IRCbot.OU!dll,SIGNATURE_TYPE_PEHSTR_EXT,39 00 39 00 20 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6a 6f 68 6e 2e 66 72 65 65 34 70 65 6f 70 6c 65 2e 6e 65 74 } //0a 00  john.free4people.net
		$a_01_1 = {4a 4f 49 4e 00 } //0a 00 
		$a_01_2 = {4e 49 43 4b 00 } //0a 00 
		$a_01_3 = {50 52 49 56 4d 53 47 00 } //0a 00  剐噉卍G
		$a_01_4 = {25 73 20 6e 65 77 5b 25 73 5d 5b 25 69 48 5d 25 73 } //07 00  %s new[%s][%iH]%s
		$a_01_5 = {66 75 63 6b 6f 66 66 } //01 00  fuckoff
		$a_01_6 = {48 65 79 20 70 6c 65 61 73 65 20 6c 6f 6f 6b 20 61 74 20 6d 65 20 61 6e 64 20 6d 79 20 70 65 74 20 2e 2e 20 20 3a 70 } //01 00  Hey please look at me and my pet ..  :p
		$a_01_7 = {4c 6f 6f 6b 69 6e 67 20 66 6f 72 20 68 6f 74 20 73 75 6d 6d 65 72 20 70 69 63 74 75 72 65 73 20 20 3f 20 77 65 6c 6c 20 68 65 72 65 20 74 68 65 79 20 61 72 65 20 21 21 20 28 68 29 } //01 00  Looking for hot summer pictures  ? well here they are !! (h)
		$a_01_8 = {4c 6f 6f 6b 20 61 74 20 6d 65 20 61 6e 64 20 6d 79 20 76 6f 6c 6c 65 79 62 61 6c 6c 20 74 65 61 6d 2c 20 77 6f 72 6b 69 6e 67 20 6f 75 72 20 61 73 73 65 73 20 6f 66 66 66 66 20 28 68 29 } //01 00  Look at me and my volleyball team, working our asses offff (h)
		$a_01_9 = {48 65 79 20 70 6c 65 61 73 65 20 6c 6f 6f 6b 20 61 74 20 6d 65 20 61 6e 64 20 6d 79 20 70 65 74 20 2e 2e 20 3a 70 } //01 00  Hey please look at me and my pet .. :p
		$a_01_10 = {50 73 73 73 73 73 73 74 20 2e 2e 2e 2e 20 6a 75 73 74 20 62 65 74 77 65 65 6e 20 6d 65 20 61 6e 64 20 79 6f 75 2c 20 70 6c 65 61 73 65 20 61 63 63 65 70 74 20 3a 24 } //01 00  Psssssst .... just between me and you, please accept :$
		$a_00_11 = {54 68 69 73 20 69 73 20 6d 65 20 74 6f 74 61 6c 79 20 6e 61 6b 65 64 20 3a 6f 20 70 6c 65 61 73 65 20 64 6f 6e 74 20 73 65 6e 64 20 74 6f 20 61 6e 79 6f 6e 65 20 65 6c 73 65 } //01 00  This is me totaly naked :o please dont send to anyone else
		$a_00_12 = {62 61 6b 20 73 61 6e 61 20 20 50 61 72 69 73 20 48 69 6c 74 6f 6e 20 6e 65 20 68 61 6c 65 20 67 65 6c 6d 69 73 20 68 61 70 69 73 74 65 20 3a 28 } //01 00  bak sana  Paris Hilton ne hale gelmis hapiste :(
		$a_00_13 = {53 65 6e 20 76 65 20 42 65 6e 20 21 21 21 20 2e 2e 2e 2e 20 42 41 4b 20 3a 70 } //01 00  Sen ve Ben !!! .... BAK :p
		$a_00_14 = {42 61 6b 73 61 6e 61 20 62 65 6e 69 6d 20 66 6f 74 6f 67 72 61 66 6c 61 72 61 20 68 69 68 69 20 3a 70 } //01 00  Baksana benim fotograflara hihi :p
		$a_00_15 = {48 65 79 20 62 65 6e 69 6d 20 66 6f 74 6f 6c 61 72 69 6d 69 20 6b 61 62 75 6c 20 65 74 20 3a 6f 20 21 21 } //01 00  Hey benim fotolarimi kabul et :o !!
		$a_00_16 = {49 79 69 20 61 72 6b 61 64 61 73 69 6d 6c 61 20 66 6f 74 6f 72 61 66 64 61 79 69 6d 20 3a 24 20 21 21 } //01 00  Iyi arkadasimla fotorafdayim :$ !!
		$a_00_17 = {62 65 6e 69 6d 20 62 75 20 63 69 70 6c 61 6b 20 66 6f 74 6f 64 61 20 3a 6f 20 61 6d 61 20 62 61 73 6b 61 73 69 6e 61 20 79 6f 6c 6c 61 6d 61 } //01 00  benim bu ciplak fotoda :o ama baskasina yollama
		$a_00_18 = {52 65 67 61 72 64 65 20 6c 65 73 20 74 6f 66 20 64 65 20 6d 65 73 20 76 61 63 61 6e 63 65 73 20 65 6e 20 74 75 6e 69 73 69 65 20 6c 6f 6f 6f 6c } //01 00  Regarde les tof de mes vacances en tunisie loool
		$a_00_19 = {54 6f 69 20 65 74 20 6d 6f 69 20 21 21 21 20 2e 2e 2e 2e 20 72 65 67 61 72 64 65 20 3a 70 } //01 00  Toi et moi !!! .... regarde :p
		$a_00_20 = {68 65 79 20 73 74 70 20 72 65 67 61 72 64 65 20 6d 65 73 20 74 6f 66 20 21 } //01 00  hey stp regarde mes tof !
		$a_00_21 = {48 65 79 20 73 27 69 6c 20 74 65 20 70 6c 61 69 74 20 61 63 63 65 70 74 65 20 6d 65 73 20 70 68 6f 74 6f 73 20 3a 6f 20 21 21 } //01 00  Hey s'il te plait accepte mes photos :o !!
		$a_00_22 = {55 6e 65 20 74 6f 66 20 64 65 20 6d 6f 69 20 65 74 20 2e 2e 2e 3a 24 20 21 21 } //01 00  Une tof de moi et ...:$ !!
		$a_00_23 = {4b 69 6a 6b 20 68 6f 65 20 65 72 67 20 50 61 72 69 73 20 48 69 6c 74 6f 6e 20 65 72 20 61 61 6e 20 74 6f 65 20 69 73 20 6e 61 20 67 65 76 61 6e 67 65 6e 73 63 68 61 70 20 3a 28 } //01 00  Kijk hoe erg Paris Hilton er aan toe is na gevangenschap :(
		$a_00_24 = {4a 69 6a 20 65 6e 20 49 6b 20 21 21 21 21 20 2e 2e 2e 2e 20 6b 69 6a 6b 20 3a 70 } //01 00  Jij en Ik !!!! .... kijk :p
		$a_00_25 = {4b 69 6a 6b 20 65 65 6e 73 20 6e 61 61 72 20 6d 69 6a 6e 20 66 6f 74 6f 73 20 68 69 68 69 20 3a 70 } //01 00  Kijk eens naar mijn fotos hihi :p
		$a_00_26 = {48 45 59 20 21 21 20 61 63 63 65 70 74 65 65 72 20 6d 6e 20 66 6f 74 6f 73 20 64 61 6e 20 21 } //01 00  HEY !! accepteer mn fotos dan !
		$a_00_27 = {6d 65 74 20 6d 69 6a 6e 20 62 65 73 74 65 20 76 72 69 65 6e 64 20 6f 70 20 64 65 20 66 6f 74 6f 20 21 21 20 3a 24 } //01 00  met mijn beste vriend op de foto !! :$
		$a_00_28 = {44 69 74 20 62 65 6e 20 69 6b 20 6e 61 61 6b 74 20 6f 70 20 64 65 20 66 6f 74 6f 2c 20 73 74 75 75 72 20 61 6c 73 6a 65 62 6c 69 65 66 74 20 6e 69 65 74 20 64 6f 6f 72 2e } //01 00  Dit ben ik naakt op de foto, stuur alsjeblieft niet door.
		$a_00_29 = {67 75 63 6b 20 77 69 65 20 73 63 68 65 69 73 73 65 20 50 61 72 69 73 20 48 69 6c 74 6f 6e 20 61 75 73 73 69 65 68 74 2c 20 73 65 69 74 64 65 6d 20 73 69 65 20 77 69 65 64 65 72 20 61 75 73 20 64 65 6d 20 6b 6e 61 73 74 20 69 73 74 20 3a 28 } //01 00  guck wie scheisse Paris Hilton aussieht, seitdem sie wieder aus dem knast ist :(
		$a_00_30 = {64 75 20 75 6e 64 20 69 63 68 20 21 21 21 20 2e 2e 2e 2e 67 75 63 6b 20 3a 70 } //01 00  du und ich !!! ....guck :p
		$a_00_31 = {73 69 65 68 65 20 6d 65 69 6e 65 20 66 6f 74 6f 73 20 68 69 68 69 20 3a 70 } //00 00  siehe meine fotos hihi :p
	condition:
		any of ($a_*)
 
}