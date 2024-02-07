
rule PWS_Win32_Payazol_A{
	meta:
		description = "PWS:Win32/Payazol.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 12 00 0a 00 00 02 00 "
		
	strings :
		$a_01_0 = {70 61 73 73 70 6f 72 74 2e 74 68 65 39 2e 63 6f 6d 2f 69 6e 64 65 78 2f 6c 6f 67 69 6e } //02 00  passport.the9.com/index/login
		$a_01_1 = {70 61 79 2e 69 70 73 2e 63 6f 6d 2e 63 6e } //02 00  pay.ips.com.cn
		$a_01_2 = {75 00 70 00 61 00 79 00 2e 00 31 00 30 00 30 00 31 00 30 00 2e 00 63 00 6f 00 6d 00 2f 00 77 00 65 00 62 00 2f 00 42 00 75 00 79 00 63 00 61 00 72 00 64 00 } //02 00  upay.10010.com/web/Buycard
		$a_01_3 = {63 00 61 00 73 00 68 00 69 00 65 00 72 00 2e 00 61 00 6c 00 69 00 70 00 61 00 79 00 2e 00 63 00 6f 00 6d 00 } //02 00  cashier.alipay.com
		$a_01_4 = {70 00 61 00 79 00 2e 00 7a 00 74 00 67 00 61 00 6d 00 65 00 2e 00 63 00 6f 00 6d 00 3a 00 38 00 31 00 } //02 00  pay.ztgame.com:81
		$a_01_5 = {6e 00 65 00 74 00 70 00 61 00 79 00 2e 00 63 00 6d 00 62 00 63 00 68 00 69 00 6e 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 6e 00 65 00 74 00 70 00 61 00 79 00 6d 00 65 00 6e 00 74 00 } //01 00  netpay.cmbchina.com/netpayment
		$a_01_6 = {70 61 79 6d 65 6e 74 49 6e 66 6f 2e 62 61 6e 6b 53 65 6c 65 63 74 3d } //01 00  paymentInfo.bankSelect=
		$a_01_7 = {65 00 62 00 61 00 6e 00 6b 00 44 00 65 00 70 00 6f 00 73 00 69 00 74 00 2e 00 68 00 74 00 6d 00 } //04 00  ebankDeposit.htm
		$a_01_8 = {69 3d 30 3b 66 6f 72 28 69 3d 30 3b 69 3c 64 6f 63 75 6d 65 6e 74 2e 69 6d 61 67 65 73 2e 6c 65 6e 67 74 68 3b 69 2b 2b 29 7b 69 66 28 64 6f 63 75 6d 65 6e 74 2e 69 6d 61 67 65 73 5b 69 5d } //08 00  i=0;for(i=0;i<document.images.length;i++){if(document.images[i]
		$a_03_9 = {8b 08 ff 51 68 a1 90 01 02 49 00 8b 00 8b 80 14 03 00 00 8b 80 20 02 00 00 8b 55 fc 8b 08 ff 51 38 a1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}