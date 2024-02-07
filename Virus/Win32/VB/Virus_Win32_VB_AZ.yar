
rule Virus_Win32_VB_AZ{
	meta:
		description = "Virus:Win32/VB.AZ,SIGNATURE_TYPE_PEHSTR_EXT,14 00 0f 00 1a 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 00 20 00 20 00 20 00 20 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 2d 00 3d 00 59 00 4f 00 55 00 20 00 53 00 45 00 45 00 20 00 42 00 45 00 45 00 20 00 43 00 52 00 45 00 57 00 3d 00 2d 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 } //01 00       __________-=YOU SEE BEE CREW=-__________
		$a_01_1 = {42 00 6c 00 61 00 63 00 6b 00 5f 00 50 00 6c 00 61 00 6e 00 6b 00 74 00 6f 00 6e 00 } //01 00  Black_Plankton
		$a_01_2 = {7b 00 59 00 34 00 37 00 39 00 43 00 36 00 44 00 30 00 2d 00 4f 00 54 00 52 00 57 00 2d 00 55 00 35 00 47 00 48 00 2d 00 53 00 31 00 45 00 45 00 2d 00 45 00 30 00 41 00 43 00 31 00 30 00 42 00 34 00 45 00 36 00 36 00 36 00 7d 00 } //01 00  {Y479C6D0-OTRW-U5GH-S1EE-E0AC10B4E666}
		$a_01_3 = {7b 00 46 00 31 00 34 00 36 00 43 00 39 00 42 00 31 00 2d 00 56 00 4d 00 56 00 51 00 2d 00 41 00 39 00 52 00 43 00 2d 00 4e 00 55 00 46 00 4c 00 2d 00 44 00 30 00 42 00 41 00 30 00 30 00 42 00 34 00 45 00 39 00 39 00 39 00 7d 00 } //01 00  {F146C9B1-VMVQ-A9RC-NUFL-D0BA00B4E999}
		$a_01_4 = {6e 00 65 00 74 00 20 00 75 00 73 00 65 00 72 00 20 00 4d 00 61 00 74 00 72 00 69 00 58 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 20 00 2f 00 61 00 64 00 64 00 } //01 00  net user MatriX shadow /add
		$a_01_5 = {6e 00 65 00 74 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 67 00 72 00 6f 00 75 00 70 00 20 00 61 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 73 00 20 00 4d 00 61 00 74 00 72 00 69 00 58 00 20 00 2f 00 61 00 64 00 64 00 } //01 00  net localgroup administrators MatriX /add
		$a_01_6 = {59 00 6f 00 75 00 20 00 53 00 65 00 65 00 20 00 42 00 65 00 65 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  You See Bee Corporation
		$a_01_7 = {6e 00 65 00 74 00 20 00 73 00 65 00 6e 00 64 00 20 00 2a 00 20 00 59 00 6f 00 75 00 20 00 53 00 65 00 65 00 20 00 42 00 65 00 65 00 20 00 43 00 72 00 65 00 77 00 20 00 57 00 61 00 73 00 20 00 48 00 65 00 72 00 65 00 21 00 21 00 } //01 00  net send * You See Bee Crew Was Here!!
		$a_01_8 = {6e 00 65 00 74 00 20 00 73 00 65 00 6e 00 64 00 20 00 2a 00 20 00 4f 00 72 00 61 00 6e 00 67 00 20 00 50 00 69 00 6e 00 74 00 65 00 72 00 20 00 4c 00 61 00 6e 00 6a 00 75 00 74 00 20 00 6b 00 65 00 20 00 73 00 6f 00 61 00 6c 00 20 00 62 00 65 00 72 00 69 00 6b 00 75 00 74 00 6e 00 79 00 61 00 20 00 6b 00 61 00 72 00 65 00 6e 00 61 00 20 00 74 00 65 00 6c 00 6f 00 72 00 20 00 64 00 61 00 6e 00 20 00 61 00 79 00 61 00 6d 00 } //01 00  net send * Orang Pinter Lanjut ke soal berikutnya karena telor dan ayam
		$a_01_9 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 62 00 6c 00 61 00 63 00 6b 00 70 00 6c 00 61 00 6e 00 6b 00 74 00 6f 00 6e 00 2e 00 63 00 6a 00 62 00 2e 00 6e 00 65 00 74 00 } //01 00  http://www.blackplankton.cjb.net
		$a_01_10 = {3c 00 74 00 69 00 74 00 6c 00 65 00 3e 00 46 00 75 00 63 00 6b 00 69 00 6e 00 67 00 20 00 4c 00 6f 00 76 00 65 00 5f 00 46 00 75 00 63 00 6b 00 69 00 6e 00 67 00 20 00 46 00 72 00 69 00 65 00 6e 00 64 00 3c 00 2f 00 74 00 69 00 74 00 6c 00 65 00 3e 00 } //01 00  <title>Fucking Love_Fucking Friend</title>
		$a_01_11 = {5c 00 50 00 61 00 68 00 61 00 6d 00 69 00 20 00 43 00 69 00 6e 00 74 00 61 00 2e 00 74 00 78 00 74 00 } //01 00  \Pahami Cinta.txt
		$a_01_12 = {5c 00 46 00 61 00 76 00 6f 00 72 00 69 00 74 00 65 00 73 00 5c 00 4b 00 61 00 6d 00 70 00 75 00 73 00 20 00 43 00 69 00 6e 00 74 00 61 00 2e 00 65 00 78 00 65 00 20 00 2f 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 } //01 00  \Favorites\Kampus Cinta.exe /register
		$a_01_13 = {42 00 6c 00 61 00 63 00 6b 00 5f 00 50 00 6c 00 61 00 6e 00 6b 00 74 00 6f 00 6e 00 40 00 59 00 6f 00 75 00 53 00 65 00 65 00 42 00 65 00 65 00 } //01 00  Black_Plankton@YouSeeBee
		$a_01_14 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 4e 00 6f 00 52 00 6f 00 63 00 61 00 72 00 20 00 74 00 65 00 6d 00 65 00 6e 00 20 00 73 00 65 00 6e 00 64 00 69 00 72 00 69 00 2c 00 20 00 62 00 65 00 6e 00 61 00 72 00 20 00 61 00 74 00 6f 00 20 00 73 00 61 00 6c 00 61 00 68 00 3f 00 } //01 00  Software\Microsoft\Windows\ShellNoRocar temen sendiri, benar ato salah?
		$a_01_15 = {41 00 6e 00 64 00 61 00 20 00 53 00 61 00 6c 00 61 00 68 00 21 00 21 00 20 00 41 00 6e 00 64 00 61 00 20 00 67 00 61 00 20 00 43 00 6f 00 63 00 6f 00 6b 00 20 00 70 00 75 00 6e 00 79 00 61 00 20 00 74 00 65 00 6d 00 65 00 6e 00 21 00 21 00 2e 00 20 00 42 00 75 00 62 00 79 00 65 00 20 00 66 00 6f 00 72 00 20 00 74 00 6f 00 64 00 61 00 79 00 2e 00 2e 00 2e 00 } //01 00  Anda Salah!! Anda ga Cocok punya temen!!. Bubye for today...
		$a_01_16 = {4d 00 75 00 73 00 69 00 62 00 61 00 68 00 20 00 67 00 65 00 6d 00 70 00 61 00 20 00 6a 00 6f 00 67 00 6a 00 61 00 20 00 6d 00 65 00 72 00 65 00 6e 00 67 00 75 00 74 00 20 00 6e 00 79 00 61 00 77 00 61 00 20 00 31 00 30 00 72 00 62 00 20 00 6a 00 69 00 77 00 61 00 2c 00 20 00 62 00 65 00 6e 00 61 00 72 00 20 00 61 00 74 00 6f 00 20 00 73 00 61 00 6c 00 61 00 68 00 3f 00 } //01 00  Musibah gempa jogja merengut nyawa 10rb jiwa, benar ato salah?
		$a_01_17 = {41 00 6e 00 64 00 61 00 20 00 53 00 61 00 6c 00 61 00 68 00 21 00 21 00 20 00 4b 00 65 00 62 00 61 00 6e 00 79 00 61 00 6b 00 61 00 6e 00 20 00 74 00 75 00 68 00 20 00 6d 00 61 00 73 00 21 00 21 00 20 00 67 00 61 00 20 00 6b 00 61 00 73 00 69 00 61 00 6e 00 20 00 61 00 70 00 61 00 21 00 21 00 2e 00 20 00 42 00 75 00 62 00 79 00 65 00 20 00 66 00 6f 00 72 00 20 00 74 00 6f 00 64 00 61 00 79 00 2e 00 2e 00 2e 00 } //01 00  Anda Salah!! Kebanyakan tuh mas!! ga kasian apa!!. Bubye for today...
		$a_01_18 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 20 00 73 00 6f 00 63 00 6b 00 65 00 74 00 20 00 37 00 37 00 35 00 20 00 73 00 75 00 70 00 70 00 6f 00 72 00 74 00 20 00 64 00 20 00 6d 00 6f 00 74 00 68 00 65 00 72 00 62 00 6f 00 61 00 72 00 64 00 20 00 73 00 6f 00 63 00 6b 00 65 00 74 00 20 00 34 00 37 00 38 00 2c 00 20 00 62 00 65 00 6e 00 61 00 72 00 20 00 61 00 74 00 6f 00 20 00 73 00 61 00 6c 00 61 00 68 00 3f 00 } //01 00  Processor socket 775 support d motherboard socket 478, benar ato salah?
		$a_01_19 = {41 00 6e 00 64 00 61 00 20 00 53 00 61 00 6c 00 61 00 68 00 21 00 21 00 20 00 6d 00 61 00 6e 00 61 00 20 00 6d 00 75 00 6e 00 67 00 6b 00 69 00 6e 00 20 00 62 00 69 00 73 00 61 00 21 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 20 00 37 00 37 00 35 00 20 00 67 00 61 00 20 00 61 00 64 00 61 00 20 00 6b 00 61 00 6b 00 69 00 6e 00 79 00 61 00 20 00 6b 00 6f 00 71 00 21 00 2e 00 20 00 42 00 75 00 62 00 79 00 65 00 20 00 66 00 6f 00 72 00 20 00 74 00 6f 00 64 00 61 00 79 00 2e 00 2e 00 2e 00 } //01 00  Anda Salah!! mana mungkin bisa! processor 775 ga ada kakinya koq!. Bubye for today...
		$a_01_20 = {6b 00 61 00 6c 00 6f 00 20 00 71 00 74 00 61 00 20 00 70 00 75 00 6e 00 79 00 61 00 20 00 74 00 65 00 6d 00 65 00 6e 00 20 00 62 00 72 00 65 00 6e 00 67 00 73 00 65 00 6b 00 2c 00 20 00 68 00 61 00 72 00 75 00 73 00 20 00 6b 00 69 00 74 00 61 00 20 00 68 00 61 00 6a 00 61 00 72 00 21 00 21 00 2c 00 20 00 62 00 65 00 6e 00 61 00 72 00 20 00 61 00 74 00 6f 00 20 00 73 00 61 00 6c 00 61 00 68 00 3f 00 } //01 00  kalo qta punya temen brengsek, harus kita hajar!!, benar ato salah?
		$a_01_21 = {41 00 6e 00 64 00 61 00 20 00 53 00 61 00 6c 00 61 00 68 00 21 00 21 00 20 00 4a 00 61 00 6e 00 67 00 61 00 6e 00 20 00 64 00 6f 00 6e 00 6b 00 21 00 20 00 47 00 69 00 74 00 75 00 32 00 20 00 64 00 79 00 61 00 20 00 6a 00 75 00 67 00 61 00 20 00 74 00 65 00 6d 00 65 00 6e 00 20 00 6b 00 69 00 74 00 61 00 2e 00 20 00 62 00 69 00 61 00 72 00 69 00 6e 00 20 00 64 00 79 00 61 00 20 00 6b 00 65 00 6e 00 61 00 20 00 6b 00 68 00 61 00 72 00 6d 00 61 00 70 00 68 00 61 00 6c 00 61 00 2e 00 20 00 42 00 75 00 62 00 79 00 65 00 20 00 66 00 6f 00 72 00 20 00 74 00 6f 00 64 00 61 00 79 00 2e 00 2e 00 2e 00 } //01 00  Anda Salah!! Jangan donk! Gitu2 dya juga temen kita. biarin dya kena kharmaphala. Bubye for today...
		$a_01_22 = {54 00 65 00 6c 00 6f 00 72 00 20 00 61 00 6d 00 61 00 20 00 61 00 79 00 61 00 6d 00 20 00 79 00 61 00 6e 00 67 00 20 00 64 00 75 00 6c 00 75 00 61 00 6e 00 20 00 61 00 64 00 61 00 20 00 61 00 79 00 61 00 6d 00 2c 00 20 00 62 00 65 00 6e 00 65 00 72 00 20 00 61 00 74 00 6f 00 20 00 73 00 61 00 6c 00 61 00 68 00 } //01 00  Telor ama ayam yang duluan ada ayam, bener ato salah
		$a_01_23 = {41 00 6e 00 64 00 61 00 20 00 4d 00 65 00 72 00 61 00 73 00 61 00 20 00 74 00 65 00 72 00 67 00 61 00 6e 00 67 00 67 00 75 00 20 00 64 00 65 00 6e 00 67 00 61 00 6e 00 20 00 41 00 64 00 61 00 6e 00 79 00 61 00 20 00 62 00 61 00 6e 00 79 00 61 00 6b 00 20 00 76 00 69 00 72 00 75 00 73 00 32 00 20 00 6c 00 6f 00 6b 00 61 00 6c 00 3f 00 } //01 00  Anda Merasa terganggu dengan Adanya banyak virus2 lokal?
		$a_01_24 = {48 00 65 00 6d 00 6d 00 2c 00 2e 00 2e 00 2e 00 20 00 4d 00 61 00 6b 00 61 00 6e 00 79 00 61 00 20 00 6a 00 61 00 64 00 69 00 20 00 6f 00 72 00 61 00 6e 00 67 00 20 00 68 00 61 00 72 00 75 00 73 00 20 00 74 00 65 00 6c 00 69 00 74 00 69 00 21 00 21 00 20 00 6a 00 61 00 6e 00 67 00 61 00 6e 00 20 00 61 00 73 00 61 00 6c 00 20 00 6b 00 6c 00 69 00 6b 00 2e 00 20 00 47 00 69 00 6e 00 69 00 20 00 64 00 61 00 68 00 20 00 61 00 6b 00 69 00 62 00 61 00 74 00 6e 00 79 00 61 00 21 00 21 00 20 00 42 00 75 00 62 00 79 00 65 00 20 00 66 00 6f 00 72 00 20 00 74 00 6f 00 64 00 61 00 79 00 2e 00 2e 00 2e 00 } //01 00  Hemm,... Makanya jadi orang harus teliti!! jangan asal klik. Gini dah akibatnya!! Bubye for today...
		$a_01_25 = {57 00 61 00 68 00 2c 00 20 00 61 00 6e 00 64 00 61 00 20 00 62 00 65 00 6e 00 61 00 72 00 32 00 20 00 6d 00 65 00 6e 00 64 00 75 00 6b 00 75 00 6e 00 67 00 20 00 6b 00 65 00 62 00 61 00 6e 00 67 00 6b 00 69 00 74 00 61 00 6e 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 6d 00 65 00 72 00 32 00 20 00 62 00 61 00 72 00 75 00 20 00 69 00 6e 00 64 00 6f 00 6e 00 65 00 73 00 69 00 61 00 2e 00 20 00 41 00 77 00 61 00 6c 00 20 00 73 00 75 00 6b 00 73 00 65 00 73 00 20 00 64 00 61 00 72 00 69 00 20 00 6a 00 61 00 68 00 69 00 6c 00 32 00 20 00 6b 00 61 00 79 00 61 00 20 00 67 00 69 00 6e 00 69 00 20 00 74 00 6f 00 68 00 21 00 21 00 } //00 00  Wah, anda benar2 mendukung kebangkitan programmer2 baru indonesia. Awal sukses dari jahil2 kaya gini toh!!
	condition:
		any of ($a_*)
 
}