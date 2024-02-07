
rule Worm_Win32_Brontok@mm{
	meta:
		description = "Worm:Win32/Brontok@mm,SIGNATURE_TYPE_PEHSTR,05 00 03 00 1f 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 20 20 20 20 20 20 20 20 20 20 20 4e 6f 62 72 6f 6e 20 26 20 52 6f 6d 64 69 6c 20 2d 2d 3e 3e 20 4b 69 63 6b 65 64 20 62 79 20 54 68 65 20 41 6d 61 7a 69 6e 67 20 42 72 6f 6e 74 6f 6b } //01 00              Nobron & Romdil -->> Kicked by The Amazing Brontok
		$a_01_1 = {20 20 20 20 20 20 20 20 20 4e 6f 62 72 6f 6e 20 3d 20 53 61 74 72 69 61 20 44 75 6e 67 75 20 3d 20 4e 6f 74 68 69 6e 67 20 21 21 21 } //01 00           Nobron = Satria Dungu = Nothing !!!
		$a_01_2 = {20 20 20 20 20 20 20 20 20 52 6f 6d 64 69 6c 20 3d 20 54 75 6b 61 6e 67 20 4a 69 70 6c 61 6b 20 3d 20 4e 6f 74 68 69 6e 67 20 21 21 21 } //01 00           Romdil = Tukang Jiplak = Nothing !!!
		$a_01_3 = {20 20 20 20 4e 6f 62 72 6f 6e 20 26 20 52 6f 6d 64 69 6c 20 3d 20 4f 74 61 6b 20 4b 6f 73 6f 6e 67 2c 20 4d 75 6c 75 74 20 42 65 73 61 72 2c 20 43 75 6d 61 20 42 69 73 61 20 42 61 63 61 20 50 75 69 73 69 } //01 00      Nobron & Romdil = Otak Kosong, Mulut Besar, Cuma Bisa Baca Puisi
		$a_01_4 = {20 20 20 42 52 4f 4e 54 4f 4b 2e 43 5b 32 32 5d } //01 00     BRONTOK.C[22]
		$a_01_5 = {20 7e 42 72 6f 6e 74 6f 6b 7e 42 61 63 6b 7e 4c 6f 67 7e } //01 00   ~Brontok~Back~Log~
		$a_01_6 = {20 7e 42 72 6f 6e 74 6f 6b 7e 49 73 7e 54 68 65 7e 42 65 73 74 7e } //01 00   ~Brontok~Is~The~Best~
		$a_01_7 = {20 7e 42 72 6f 6e 74 6f 6b 7e 4c 6f 67 7e } //01 00   ~Brontok~Log~
		$a_01_8 = {20 7e 42 72 6f 6e 74 6f 6b 7e 4e 65 74 77 6f 72 6b 7e } //01 00   ~Brontok~Network~
		$a_01_9 = {20 7e 42 72 6f 6e 74 6f 6b 7e 50 61 79 6c 6f 61 64 7e 53 68 6f 77 7e } //01 00   ~Brontok~Payload~Show~
		$a_01_10 = {20 7e 42 72 6f 6e 74 6f 6b 7e 53 65 72 76 7e } //01 00   ~Brontok~Serv~
		$a_01_11 = {20 7e 42 72 6f 6e 74 6f 6b 7e 53 70 72 65 61 64 4d 61 69 6c 7e } //01 00   ~Brontok~SpreadMail~
		$a_01_12 = {20 7e 42 72 6f 6e 74 6f 6b 7e 54 6f 7e 4c 6f 61 64 69 6e 67 49 6e 66 6f 7e } //01 00   ~Brontok~To~LoadingInfo~
		$a_01_13 = {23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 20 42 52 4f 4e 54 4f 4b 2e 43 5b 32 32 5d 20 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 } //01 00  ######################### BRONTOK.C[22] #########################
		$a_01_14 = {23 4a 6f 77 6f 42 6f 74 2d 43 72 61 63 6b 48 6f 73 74 } //01 00  #JowoBot-CrackHost
		$a_01_15 = {23 4a 6f 77 6f 42 6f 74 2d 56 4d 20 43 6f 6d 6d 75 6e 69 74 79 } //01 00  #JowoBot-VM Community
		$a_01_16 = {42 72 6f 6e 74 6f 6b 2e 41 } //01 00  Brontok.A
		$a_01_17 = {42 72 6f 6e 74 6f 6b 46 6f 72 6d } //01 00  BrontokForm
		$a_01_18 = {54 6d 72 42 72 6f 6e 74 6f 6b } //01 00  TmrBrontok
		$a_01_19 = {42 72 6f 6e 74 6f 6b 2e 41 2e 48 56 4d 33 31 } //01 00  Brontok.A.HVM31
		$a_01_20 = {42 52 4f 4e 54 4f 4b 5f 41 } //01 00  BRONTOK_A
		$a_01_21 = {23 00 49 00 4e 00 49 00 5f 00 42 00 72 00 6f 00 6e 00 74 00 6f 00 6b 00 5f 00 41 00 } //01 00  #INI_Brontok_A
		$a_01_22 = {42 00 79 00 3a 00 20 00 48 00 56 00 4d 00 33 00 31 00 } //01 00  By: HVM31
		$a_01_23 = {2d 00 2d 00 20 00 4a 00 6f 00 77 00 6f 00 42 00 6f 00 74 00 20 00 23 00 56 00 4d 00 20 00 43 00 6f 00 6d 00 6d 00 75 00 6e 00 69 00 74 00 79 00 20 00 2d 00 2d 00 } //01 00  -- JowoBot #VM Community --
		$a_01_24 = {5c 00 61 00 62 00 6f 00 75 00 74 00 2e 00 42 00 72 00 6f 00 6e 00 74 00 6f 00 6b 00 2e 00 41 00 2e 00 68 00 74 00 6d 00 6c 00 } //01 00  \about.Brontok.A.html
		$a_01_25 = {5c 00 42 00 72 00 6f 00 6e 00 2e 00 74 00 6f 00 6b 00 2d 00 } //01 00  \Bron.tok-
		$a_01_26 = {5c 00 42 00 72 00 6f 00 6e 00 2e 00 74 00 6f 00 6b 00 2e 00 41 00 } //01 00  \Bron.tok.A
		$a_01_27 = {5c 00 4b 00 6f 00 73 00 6f 00 6e 00 67 00 2e 00 42 00 72 00 6f 00 6e 00 2e 00 54 00 6f 00 6b 00 2e 00 74 00 78 00 74 00 } //01 00  \Kosong.Bron.Tok.txt
		$a_01_28 = {5c 00 4f 00 6b 00 2d 00 53 00 65 00 6e 00 64 00 4d 00 61 00 69 00 6c 00 2d 00 42 00 72 00 6f 00 6e 00 2d 00 74 00 6f 00 6b 00 } //01 00  \Ok-SendMail-Bron-tok
		$a_01_29 = {23 00 20 00 4a 00 6f 00 77 00 6f 00 42 00 6f 00 74 00 2d 00 43 00 72 00 61 00 63 00 6b 00 48 00 6f 00 73 00 74 00 73 00 } //01 00  # JowoBot-CrackHosts
		$a_01_30 = {2a 00 5c 00 41 00 46 00 3a 00 5c 00 56 00 50 00 52 00 4f 00 4a 00 45 00 43 00 54 00 5c 00 53 00 54 00 41 00 42 00 4c 00 45 00 5c 00 31 00 37 00 2d 00 42 00 65 00 74 00 61 00 5c 00 42 00 52 00 4f 00 4e 00 54 00 4f 00 4b 00 2e 00 41 00 5c 00 42 00 72 00 6f 00 6e 00 74 00 6f 00 6b 00 2e 00 41 00 2e 00 76 00 62 00 70 00 } //00 00  *\AF:\VPROJECT\STABLE\17-Beta\BRONTOK.A\Brontok.A.vbp
	condition:
		any of ($a_*)
 
}