
rule Ransom_Win32_Genasom_BI{
	meta:
		description = "Ransom:Win32/Genasom.BI,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 56 56 49 53 4f 20 50 52 45 4c 49 4d 49 4e 41 52 45 3a 20 50 45 52 20 4f 47 4e 49 20 43 48 49 41 4d 41 54 41 20 44 49 20 53 45 53 53 41 4e 54 41 20 53 45 43 4f 4e 44 49 20 41 4c 20 4e 55 4d 45 52 4f 20 38 39 39 30 32 32 32 39 32 2c 20 41 4c 4c 27 55 54 45 4e 54 45 20 44 45 4c 20 54 45 4c 45 46 4f 4e 4f 20 43 45 4c 4c 55 4c 41 52 45 20 56 45 52 52 } //01 00  AVVISO PRELIMINARE: PER OGNI CHIAMATA DI SESSANTA SECONDI AL NUMERO 899022292, ALL'UTENTE DEL TELEFONO CELLULARE VERR
		$a_01_1 = {41 44 45 42 49 54 41 54 4f 20 55 4e 20 49 4d 50 4f 52 54 4f 20 44 49 20 53 45 49 53 20 45 20 44 49 56 49 41 4e 4e 4f 56 45 20 45 55 52 4f 20 28 49 56 41 20 49 4e 43 4c 55 53 41 29 2e } //01 00  ADEBITATO UN IMPORTO DI SEIS E DIVIANNOVE EURO (IVA INCLUSA).
		$a_01_2 = {77 77 77 2e 6e 65 74 6c 69 6e 6b 69 6e 76 65 73 74 2e 63 6f 6d 2f 73 75 70 70 6f 72 74 2f 69 74 } //00 00  www.netlinkinvest.com/support/it
	condition:
		any of ($a_*)
 
}