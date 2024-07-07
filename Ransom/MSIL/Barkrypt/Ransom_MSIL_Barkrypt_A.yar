
rule Ransom_MSIL_Barkrypt_A{
	meta:
		description = "Ransom:MSIL/Barkrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 1a 00 00 "
		
	strings :
		$a_80_0 = {67 65 74 5f 72 61 6e 73 6f 6d } //get_ransom  1
		$a_80_1 = {73 65 74 5f 72 61 6e 73 6f 6d } //set_ransom  1
		$a_80_2 = {67 65 74 5f 61 63 63 48 61 78 } //get_accHax  1
		$a_80_3 = {73 65 74 5f 61 63 63 48 61 78 } //set_accHax  1
		$a_80_4 = {67 65 74 5f 64 65 63 72 79 70 74 } //get_decrypt  1
		$a_80_5 = {73 65 74 5f 64 65 63 72 79 70 74 } //set_decrypt  1
		$a_80_6 = {67 65 74 5f 65 6d 61 69 6c 48 61 78 } //get_emailHax  1
		$a_80_7 = {73 65 74 5f 65 6d 61 69 6c 48 61 78 } //set_emailHax  1
		$a_80_8 = {67 65 74 5f 69 70 48 61 78 65 72 } //get_ipHaxer  1
		$a_80_9 = {73 65 74 5f 69 70 48 61 78 65 72 } //set_ipHaxer  1
		$a_80_10 = {68 61 63 6b 65 72 42 6f 69 } //hackerBoi  1
		$a_80_11 = {59 6f 75 72 20 66 69 6c 65 73 20 77 69 6c 6c 20 62 65 20 6c 6f 73 74 20 20 69 6e 20 36 68 72 73 } //Your files will be lost  in 6hrs  1
		$a_80_12 = {48 41 58 45 52 42 4f 49 20 52 41 4e 53 4f 4d } //HAXERBOI RANSOM  1
		$a_80_13 = {4f 4f 50 53 20 59 4f 55 52 20 46 49 4c 45 53 20 48 41 56 45 20 42 45 45 4e } //OOPS YOUR FILES HAVE BEEN  1
		$a_80_14 = {48 61 63 6b 20 47 6f 76 65 72 6d 65 6e 74 } //Hack Goverment  1
		$a_80_15 = {63 68 6f 6f 73 65 20 61 20 63 6f 75 6e 74 72 79 2c 20 62 65 66 6f 72 65 20 68 61 63 6b 69 6e 67 } //choose a country, before hacking  1
		$a_80_16 = {43 72 61 63 6b 69 6e 67 20 46 69 72 65 77 61 6c 6c } //Cracking Firewall  1
		$a_80_17 = {4d 61 6b 69 6e 67 20 52 75 73 73 69 61 6e 20 42 6f 74 73 } //Making Russian Bots  1
		$a_80_18 = {44 65 6c 65 74 69 6e 67 20 49 6d 70 6f 72 74 61 6e 74 20 45 6d 61 69 6c 73 } //Deleting Important Emails  1
		$a_80_19 = {49 6e 6a 65 63 74 69 6e 67 20 52 61 6e 73 6f 6d 57 61 72 65 } //Injecting RansomWare  1
		$a_80_20 = {47 65 74 74 69 6e 67 20 42 61 6e 6b 20 41 63 63 6f 75 6e 74 73 } //Getting Bank Accounts  1
		$a_80_21 = {44 65 6c 65 74 69 6e 67 20 4d 69 63 72 6f 73 6f 66 74 20 4f 66 66 69 63 65 20 33 36 35 } //Deleting Microsoft Office 365  1
		$a_80_22 = {46 69 6e 69 73 68 69 6e 67 20 55 70 } //Finishing Up  1
		$a_80_23 = {48 61 63 6b 65 64 } //Hacked  1
		$a_80_24 = {31 4a 38 66 76 69 59 46 5a 34 4b 61 7a 33 43 43 6e 53 6f 73 35 7a 62 4d 74 50 55 58 39 50 77 70 47 64 } //1J8fviYFZ4Kaz3CCnSos5zbMtPUX9PwpGd  10
		$a_80_25 = {68 61 63 6b 65 72 42 6f 69 5c 68 61 63 6b 65 72 42 6f 69 5c 6f 62 6a 5c 44 65 62 75 67 5c 68 61 63 6b 65 72 42 6f 69 2e 70 64 62 } //hackerBoi\hackerBoi\obj\Debug\hackerBoi.pdb  10
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1+(#a_80_11  & 1)*1+(#a_80_12  & 1)*1+(#a_80_13  & 1)*1+(#a_80_14  & 1)*1+(#a_80_15  & 1)*1+(#a_80_16  & 1)*1+(#a_80_17  & 1)*1+(#a_80_18  & 1)*1+(#a_80_19  & 1)*1+(#a_80_20  & 1)*1+(#a_80_21  & 1)*1+(#a_80_22  & 1)*1+(#a_80_23  & 1)*1+(#a_80_24  & 1)*10+(#a_80_25  & 1)*10) >=15
 
}