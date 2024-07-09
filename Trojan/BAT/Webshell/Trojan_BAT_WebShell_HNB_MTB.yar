
rule Trojan_BAT_WebShell_HNB_MTB{
	meta:
		description = "Trojan:BAT/WebShell.HNB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,36 01 36 01 11 00 00 "
		
	strings :
		$a_03_0 = {5f 61 73 70 78 [0-30] 41 53 50 } //50
		$a_03_1 = {46 61 73 74 4f 62 6a 65 63 74 46 61 63 74 6f 72 79 5f 61 70 70 5f 77 65 62 5f [0-30] 5f 5f 41 53 50 00 } //50
		$a_03_2 = {53 79 73 74 65 6d 2e 57 65 62 00 53 79 73 74 65 6d 2e [0-25] 65 62 2e 53 65 73 73 69 6f 6e 53 74 61 74 65 00 49 52 65 71 75 69 72 65 73 53 65 73 73 69 6f 6e 53 74 61 74 65 } //50
		$a_01_3 = {6d 73 63 6f 72 6c 69 62 00 53 79 73 74 65 6d 00 4f 62 6a 65 63 74 } //50 獭潣汲扩匀獹整m扏敪瑣
		$a_03_4 = {43 72 65 61 74 65 5f 41 53 50 5f [0-50] 5f 61 73 ?? 78 00 } //50
		$a_01_5 = {53 79 73 74 65 6d 2e 43 6f 64 65 44 6f 6d 2e 43 6f 6d 70 69 6c 65 72 00 47 65 6e 65 72 61 74 65 64 43 6f 64 65 41 74 74 72 69 62 75 74 65 00 53 79 73 74 65 6d } //50
		$a_01_6 = {43 72 79 70 74 6f 67 72 61 70 68 79 00 52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 00 53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d 00 49 43 72 79 70 74 6f 54 72 61 6e 73 66 6f 72 6d 00 43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 00 54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b 00 53 79 73 74 65 6d 2e 52 65 66 6c 65 63 74 69 6f 6e 00 41 73 73 65 6d 62 6c 79 00 4c 6f 61 64 00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 45 71 75 61 6c 73 00 } //10
		$a_01_7 = {00 67 65 74 5f 49 74 65 6d 00 41 73 73 65 6d 62 6c 79 00 4c 6f 61 64 00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //10 最瑥䥟整m獁敳扭祬䰀慯d牃慥整湉瑳湡散
		$a_01_8 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //3 䘀潲䉭獡㙥匴牴湩g
		$a_01_9 = {00 67 65 74 5f 54 6f 74 61 6c 42 79 74 65 73 00 } //1 最瑥呟瑯污祂整s
		$a_01_10 = {00 43 6f 6e 76 65 72 74 00 } //1
		$a_01_11 = {00 67 65 74 5f 52 65 73 70 6f 6e 73 65 00 } //1 最瑥剟獥潰獮e
		$a_01_12 = {00 48 74 74 70 52 65 73 70 6f 6e 73 65 00 } //1 䠀瑴剰獥潰獮e
		$a_01_13 = {00 42 69 6e 61 72 79 52 65 61 64 00 } //1 䈀湩牡剹慥d
		$a_01_14 = {00 52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 00 } //1
		$a_01_15 = {00 42 69 6e 61 72 79 57 72 69 74 65 00 } //1
		$a_01_16 = {00 42 79 74 65 00 43 6f 6e 63 61 74 00 54 6f 49 6e 74 33 32 00 4c 6f 61 64 00 67 65 74 5f 54 6f 74 61 6c 42 79 74 65 73 } //10 䈀瑹e潃据瑡吀䥯瑮㈳䰀慯d敧彴潔慴䉬瑹獥
	condition:
		((#a_03_0  & 1)*50+(#a_03_1  & 1)*50+(#a_03_2  & 1)*50+(#a_01_3  & 1)*50+(#a_03_4  & 1)*50+(#a_01_5  & 1)*50+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*3+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*10) >=310
 
}