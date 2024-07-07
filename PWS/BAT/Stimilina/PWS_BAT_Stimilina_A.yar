
rule PWS_BAT_Stimilina_A{
	meta:
		description = "PWS:BAT/Stimilina.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 "
		
	strings :
		$a_00_0 = {63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 76 00 64 00 66 00 } //2 config.vdf
		$a_00_1 = {73 00 74 00 65 00 61 00 6c 00 } //2 steal
		$a_80_2 = {73 73 66 6e 2a } //ssfn*  5
		$a_00_3 = {73 00 6d 00 74 00 70 00 2e 00 6d 00 61 00 69 00 6c 00 2e 00 72 00 75 00 } //4 smtp.mail.ru
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_80_2  & 1)*5+(#a_00_3  & 1)*4) >=11
 
}
rule PWS_BAT_Stimilina_A_2{
	meta:
		description = "PWS:BAT/Stimilina.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 2b 00 00 "
		
	strings :
		$a_80_0 = {73 73 66 6e 2a } //ssfn*  2
		$a_00_1 = {63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 76 00 64 00 66 00 } //2 config.vdf
		$a_00_2 = {73 00 74 00 65 00 61 00 6c 00 } //2 steal
		$a_80_3 = {31 38 35 2e 32 38 2e 32 30 2e 39 39 } //185.28.20.99  3
		$a_80_4 = {33 31 2e 32 32 30 2e 31 36 2e 31 31 30 } //31.220.16.110  3
		$a_80_5 = {31 38 35 2e 32 38 2e 32 30 2e 38 33 } //185.28.20.83  3
		$a_80_6 = {33 31 2e 32 32 30 2e 31 36 2e 32 38 } //31.220.16.28  3
		$a_02_7 = {74 00 73 00 65 00 63 00 72 00 65 00 74 00 34 00 36 00 37 00 90 02 20 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 90 00 } //3
		$a_02_8 = {74 73 65 63 72 65 74 34 36 37 90 02 20 40 67 6d 61 69 6c 2e 63 6f 6d 90 00 } //3
		$a_80_9 = {6a 72 72 78 51 69 53 49 5a 34 52 54 6d 4b 71 40 6d 61 69 6c 2e 72 75 } //jrrxQiSIZ4RTmKq@mail.ru  3
		$a_80_10 = {68 65 7a 67 6f 76 79 31 76 75 78 66 30 40 6d 61 69 6c 2e 72 75 } //hezgovy1vuxf0@mail.ru  3
		$a_80_11 = {73 74 65 61 6c 65 72 62 79 66 72 61 6d 65 40 6d 61 69 6c 2e 72 75 } //stealerbyframe@mail.ru  3
		$a_80_12 = {6d 72 66 72 61 6d 65 35 39 40 67 6d 61 69 6c 2e 63 6f 6d } //mrframe59@gmail.com  3
		$a_80_13 = {73 74 69 6c 6c 65 74 6d 61 6a 6c 6f 79 32 32 38 40 6d 61 69 6c 2e 72 75 } //stilletmajloy228@mail.ru  3
		$a_80_14 = {6b 70 61 72 6e 61 6b 40 6d 61 69 6c 2e 72 75 } //kparnak@mail.ru  3
		$a_80_15 = {61 76 61 6e 67 61 72 64 2e 6d 61 6e 73 75 72 40 6d 61 69 6c 2e 72 75 } //avangard.mansur@mail.ru  3
		$a_80_16 = {6d 61 6e 73 75 72 32 40 6d 61 69 6c 2e 75 61 } //mansur2@mail.ua  3
		$a_80_17 = {73 74 65 61 6c 65 72 32 32 38 40 6d 61 69 6c 2e 75 61 } //stealer228@mail.ua  3
		$a_80_18 = {56 75 6c 66 62 72 75 74 40 6d 61 69 6c 2e 72 75 } //Vulfbrut@mail.ru  3
		$a_80_19 = {64 6f 74 61 32 74 6f 75 72 6e 61 6d 65 40 6d 61 69 6c 2e 72 75 } //dota2tourname@mail.ru  3
		$a_80_20 = {61 61 61 73 73 73 65 65 64 66 40 6d 61 69 6c 2e 72 75 } //aaassseedf@mail.ru  3
		$a_80_21 = {6c 6f 6c 6f 79 66 76 66 79 76 40 6d 61 69 6c 2e 72 75 } //loloyfvfyv@mail.ru  3
		$a_80_22 = {72 61 64 69 6b 2e 74 61 72 61 73 6b 61 40 6d 61 69 6c 2e 72 75 } //radik.taraska@mail.ru  3
		$a_80_23 = {64 6d 75 76 6b 61 40 6d 61 69 6c 2e 72 75 } //dmuvka@mail.ru  3
		$a_80_24 = {66 61 6e 2e 61 76 61 6e 40 6d 61 69 6c 2e 72 75 } //fan.avan@mail.ru  3
		$a_80_25 = {66 61 6e 6e 69 6b 2e 6e 61 76 69 40 6d 61 69 6c 2e 72 75 } //fannik.navi@mail.ru  3
		$a_80_26 = {73 74 65 61 6c 6c 65 72 32 32 38 40 69 6e 62 6f 78 2e 72 75 } //stealler228@inbox.ru  3
		$a_80_27 = {76 6c 61 64 31 32 33 34 35 36 37 38 39 39 39 39 40 6d 61 69 6c 2e 72 75 } //vlad123456789999@mail.ru  3
		$a_80_28 = {6b 6f 72 6f 62 69 74 73 79 6e 31 39 39 39 40 6d 61 69 6c 2e 72 75 } //korobitsyn1999@mail.ru  3
		$a_80_29 = {6d 61 6a 6c 6f 79 73 74 65 61 6c 32 32 38 40 6d 61 69 6c 2e 72 75 } //majloysteal228@mail.ru  3
		$a_80_30 = {6d 61 6e 73 75 72 31 39 39 36 6d 61 6e 73 75 72 32 40 6d 61 69 6c 2e 75 61 3f 64 69 6d 6f 6e 6f 35 30 } //mansur1996mansur2@mail.ua?dimono50  3
		$a_80_31 = {6e 69 6b 6f 32 33 35 37 37 40 67 6d 61 69 6c 2e 63 6f 6d } //niko23577@gmail.com  3
		$a_80_32 = {70 65 74 79 61 2d 70 75 70 6b 69 6e 2d 70 75 70 6b 69 6e 40 69 6e 62 6f 78 2e 72 75 } //petya-pupkin-pupkin@inbox.ru  3
		$a_80_33 = {72 75 73 74 2e 72 75 73 74 2e 38 34 40 6d 61 69 6c 2e 72 75 } //rust.rust.84@mail.ru  3
		$a_80_34 = {73 6f 6c 65 6b 35 36 37 40 6d 61 69 6c 2e 72 75 } //solek567@mail.ru  3
		$a_80_35 = {73 74 65 61 6c 65 72 62 79 6d 61 6a 6c 6f 79 40 6d 61 69 6c 2e 72 75 } //stealerbymajloy@mail.ru  3
		$a_80_36 = {73 74 65 61 6c 65 72 6d 61 6a 6c 6f 79 31 34 38 38 40 6d 61 69 6c 2e 72 75 } //stealermajloy1488@mail.ru  3
		$a_80_37 = {73 74 69 6c 6c 65 72 2e 6d 61 6c 6f 79 32 32 38 40 6d 61 69 6c 2e 72 75 } //stiller.maloy228@mail.ru  3
		$a_80_38 = {73 74 69 6c 6c 65 72 34 36 40 6d 61 69 6c 2e 72 75 } //stiller46@mail.ru  3
		$a_80_39 = {62 68 64 73 62 63 40 6d 61 69 6c 2e 72 75 } //bhdsbc@mail.ru  3
		$a_80_40 = {56 75 6c 66 62 72 75 74 74 74 40 6d 61 69 6c 2e 72 75 } //Vulfbruttt@mail.ru  3
		$a_80_41 = {79 76 70 5f 66 79 70 40 6d 61 69 6c 2e 72 75 } //yvp_fyp@mail.ru  3
		$a_80_42 = {73 61 64 6c 61 73 64 6c 6c 40 6d 61 69 6c 2e 72 75 } //sadlasdll@mail.ru  3
	condition:
		((#a_80_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_80_3  & 1)*3+(#a_80_4  & 1)*3+(#a_80_5  & 1)*3+(#a_80_6  & 1)*3+(#a_02_7  & 1)*3+(#a_02_8  & 1)*3+(#a_80_9  & 1)*3+(#a_80_10  & 1)*3+(#a_80_11  & 1)*3+(#a_80_12  & 1)*3+(#a_80_13  & 1)*3+(#a_80_14  & 1)*3+(#a_80_15  & 1)*3+(#a_80_16  & 1)*3+(#a_80_17  & 1)*3+(#a_80_18  & 1)*3+(#a_80_19  & 1)*3+(#a_80_20  & 1)*3+(#a_80_21  & 1)*3+(#a_80_22  & 1)*3+(#a_80_23  & 1)*3+(#a_80_24  & 1)*3+(#a_80_25  & 1)*3+(#a_80_26  & 1)*3+(#a_80_27  & 1)*3+(#a_80_28  & 1)*3+(#a_80_29  & 1)*3+(#a_80_30  & 1)*3+(#a_80_31  & 1)*3+(#a_80_32  & 1)*3+(#a_80_33  & 1)*3+(#a_80_34  & 1)*3+(#a_80_35  & 1)*3+(#a_80_36  & 1)*3+(#a_80_37  & 1)*3+(#a_80_38  & 1)*3+(#a_80_39  & 1)*3+(#a_80_40  & 1)*3+(#a_80_41  & 1)*3+(#a_80_42  & 1)*3) >=7
 
}