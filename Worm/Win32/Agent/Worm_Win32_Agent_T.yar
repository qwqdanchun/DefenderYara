
rule Worm_Win32_Agent_T{
	meta:
		description = "Worm:Win32/Agent.T,SIGNATURE_TYPE_PEHSTR,ffffff8e 03 ffffff8e 03 20 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 6f 6f 6b 20 68 6f 77 20 77 61 73 74 65 64 20 50 61 72 69 73 20 48 69 6c 74 6f 6e 20 69 73 2c 20 61 66 74 65 72 20 73 68 65 20 67 6f 74 20 6a 61 69 6c 65 64 20 3a 28 } //01 00  Look how wasted Paris Hilton is, after she got jailed :(
		$a_01_1 = {59 6f 75 20 61 6e 64 20 4d 65 20 21 21 21 20 2e 2e 2e 2e 20 6c 6f 6f 6f 6f 6b 20 3a 70 } //01 00  You and Me !!! .... looook :p
		$a_01_2 = {4c 6f 6f 6b 20 61 74 20 6d 79 20 70 68 6f 74 6f 73 20 68 69 68 69 20 3a 70 } //01 00  Look at my photos hihi :p
		$a_01_3 = {48 65 79 20 70 6c 65 61 73 65 20 61 63 63 65 70 74 20 6d 79 20 70 68 6f 74 6f 73 20 3a 6f 20 21 21 } //01 00  Hey please accept my photos :o !!
		$a_01_4 = {41 20 70 68 6f 74 6f 20 77 69 74 68 20 6d 65 20 61 6e 64 20 6d 79 20 62 65 73 74 20 66 72 69 65 6e 64 20 3a 24 20 21 21 } //01 00  A photo with me and my best friend :$ !!
		$a_01_5 = {54 68 69 73 20 69 73 20 6d 65 20 74 6f 74 61 6c 79 20 6e 61 6b 65 64 20 3a 6f 20 70 6c 65 61 73 65 20 64 6f 6e 74 20 73 65 6e 64 20 74 6f 20 61 6e 79 6f 6e 65 20 65 6c 73 65 } //01 00  This is me totaly naked :o please dont send to anyone else
		$a_01_6 = {4c 6f 6f 6b 20 77 68 61 74 20 69 20 66 6f 75 6e 64 20 6f 6e 20 74 68 65 20 4e 45 54 20 3a 6f 20 4a 65 73 73 69 63 61 20 41 6c 62 61 20 4e 55 44 45 20 21 21 } //01 00  Look what i found on the NET :o Jessica Alba NUDE !!
		$a_01_7 = {62 61 6b 20 73 61 6e 61 20 20 50 61 72 69 73 20 48 69 6c 74 6f 6e 20 6e 65 20 68 61 6c 65 20 67 65 6c 6d 69 73 20 68 61 70 69 73 74 65 20 3a 28 } //01 00  bak sana  Paris Hilton ne hale gelmis hapiste :(
		$a_01_8 = {53 65 6e 20 76 65 20 42 65 6e 20 21 21 21 20 2e 2e 2e 2e 20 42 41 4b 20 3a 70 } //01 00  Sen ve Ben !!! .... BAK :p
		$a_01_9 = {42 61 6b 73 61 6e 61 20 62 65 6e 69 6d 20 66 6f 74 6f 67 72 61 66 6c 61 72 61 20 68 69 68 69 20 3a 70 } //01 00  Baksana benim fotograflara hihi :p
		$a_01_10 = {48 65 79 20 62 65 6e 69 6d 20 66 6f 74 6f 6c 61 72 69 6d 69 20 6b 61 62 75 6c 20 65 74 20 3a 6f 20 21 21 } //01 00  Hey benim fotolarimi kabul et :o !!
		$a_01_11 = {49 79 69 20 61 72 6b 61 64 61 73 69 6d 6c 61 20 66 6f 74 6f 72 61 66 64 61 79 69 6d 20 3a 24 20 21 21 } //01 00  Iyi arkadasimla fotorafdayim :$ !!
		$a_01_12 = {62 65 6e 69 6d 20 62 75 20 63 69 70 6c 61 6b 20 66 6f 74 6f 64 61 20 3a 6f 20 61 6d 61 20 62 61 73 6b 61 73 69 6e 61 20 79 6f 6c 6c 61 6d 61 } //01 00  benim bu ciplak fotoda :o ama baskasina yollama
		$a_01_13 = {62 61 6b 20 6e 65 20 62 75 6c 64 75 6d 20 3a 6f 20 4a 65 73 73 69 63 61 20 61 6c 62 61 20 63 69 70 6c 61 6b 20 21 21 } //01 00  bak ne buldum :o Jessica alba ciplak !!
		$a_01_14 = {52 65 67 61 72 64 65 20 63 6f 6d 6d 65 6e 74 20 50 61 72 69 73 20 48 69 6c 74 6f 6e 20 70 61 72 61 69 74 20 65 66 6f 6e 64 72 } //01 00  Regarde comment Paris Hilton parait efondr
		$a_01_15 = {73 20 71 75 27 65 6c 6c 65 20 61 69 20 } //01 00  s qu'elle ai 
		$a_01_16 = {20 6a 65 74 65 72 20 65 6e 20 70 72 69 73 6f 6e 20 3a 28 } //01 00   jeter en prison :(
		$a_01_17 = {54 6f 69 20 65 74 20 6d 6f 69 20 21 21 21 20 2e 2e 2e 2e 20 72 65 67 61 72 64 65 20 3a 70 } //01 00  Toi et moi !!! .... regarde :p
		$a_01_18 = {52 65 67 61 72 64 65 20 6d 65 73 20 70 68 6f 74 6f 73 20 3a 70 } //01 00  Regarde mes photos :p
		$a_01_19 = {48 65 79 20 73 27 69 6c 20 74 65 20 70 6c 61 69 74 20 61 63 63 65 70 74 65 20 6d 65 73 20 70 68 6f 74 6f 73 20 3a 6f 20 21 21 } //01 00  Hey s'il te plait accepte mes photos :o !!
		$a_01_20 = {55 6e 65 20 70 68 6f 74 6f 20 64 65 20 6d 6f 69 20 65 74 20 6d 6f 6e 20 6d 65 69 6c 6c 65 75 72 20 61 6d 69 20 3a 24 20 21 21 } //01 00  Une photo de moi et mon meilleur ami :$ !!
		$a_01_21 = {43 27 65 73 74 20 6d 6f 69 20 74 6f 74 61 6c 65 6d 65 6e 74 20 6e 75 20 3a 6f 20 73 27 69 6c 20 74 65 20 70 6c 61 69 74 20 6e 65 20 6c 27 65 6e 76 6f 69 65 20 61 20 70 65 72 73 6f 6e 6e 65 20 64 27 61 75 74 72 65 } //01 00  C'est moi totalement nu :o s'il te plait ne l'envoie a personne d'autre
		$a_01_22 = {52 65 67 61 72 64 65 20 63 65 20 71 75 65 20 6a 27 61 69 20 74 72 6f 75 76 } //64 00  Regarde ce que j'ai trouv
		$a_01_23 = {4e 49 43 4b 20 6e 65 77 5b 25 73 5d 5b 25 69 48 5d 25 73 } //64 00  NICK new[%s][%iH]%s
		$a_01_24 = {6e 65 77 2e 74 78 74 } //64 00  new.txt
		$a_01_25 = {55 53 45 52 20 25 73 } //64 00  USER %s
		$a_01_26 = {4a 4f 49 4e 20 25 73 } //64 00  JOIN %s
		$a_01_27 = {50 49 4e 47 20 3a } //64 00  PING :
		$a_01_28 = {50 4f 4e 47 20 3a 25 73 } //64 00  PONG :%s
		$a_01_29 = {4e 49 43 4b 20 5b 25 73 5d 5b 25 69 48 5d 25 73 } //64 00  NICK [%s][%iH]%s
		$a_01_30 = {4b 49 43 4b } //64 00  KICK
		$a_01_31 = {2e 62 61 62 79 } //00 00  .baby
	condition:
		any of ($a_*)
 
}