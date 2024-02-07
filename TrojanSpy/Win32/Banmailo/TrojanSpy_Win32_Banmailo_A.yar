
rule TrojanSpy_Win32_Banmailo_A{
	meta:
		description = "TrojanSpy:Win32/Banmailo.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0c 00 0d 00 00 04 00 "
		
	strings :
		$a_01_0 = {32 00 38 00 34 00 33 00 35 00 46 00 34 00 31 00 34 00 32 00 31 00 39 00 32 00 34 00 35 00 42 00 32 00 37 00 35 00 39 00 35 00 44 00 31 00 45 00 32 00 30 00 35 00 45 00 35 00 44 00 } //04 00  28435F414219245B27595D1E205E5D
		$a_01_1 = {36 00 32 00 35 00 38 00 35 00 46 00 35 00 34 00 35 00 45 00 34 00 37 00 34 00 33 00 31 00 31 00 37 00 38 00 35 00 41 00 34 00 36 00 35 00 36 00 34 00 31 00 35 00 38 00 35 00 30 00 34 00 35 00 31 00 31 00 37 00 35 00 34 00 39 00 34 00 30 00 35 00 43 00 35 00 45 00 34 00 33 00 35 00 31 00 34 00 30 00 31 00 39 00 } //04 00  62585F545E474311785A465641585045117549405C5E43514019
		$a_01_2 = {43 00 37 00 38 00 35 00 38 00 35 00 32 00 34 00 32 00 35 00 45 00 34 00 33 00 35 00 46 00 35 00 37 00 34 00 35 00 31 00 34 00 37 00 42 00 35 00 44 00 34 00 37 00 35 00 33 00 34 00 37 00 35 00 46 00 35 00 34 00 34 00 34 00 } //04 00  C785852425E435F5745147B5D4753475F5444
		$a_01_3 = {39 00 30 00 36 00 33 00 37 00 44 00 37 00 33 00 36 00 36 00 36 00 30 00 30 00 32 00 36 00 34 00 30 00 33 00 36 00 43 00 37 00 43 00 35 00 39 00 32 00 30 00 34 00 33 00 35 00 46 00 34 00 33 00 35 00 36 00 35 00 36 00 } //02 00  90637D7366600264036C7C5920435F435656
		$a_01_4 = {37 00 39 00 35 00 37 00 35 00 44 00 35 00 30 00 35 00 38 00 35 00 43 00 31 00 43 00 35 00 35 00 35 00 43 00 35 00 41 00 } //02 00  79575D50585C1C555C5A
		$a_01_5 = {32 00 34 00 34 00 32 00 35 00 37 00 35 00 34 00 35 00 45 00 30 00 36 00 37 00 33 00 30 00 34 00 37 00 36 00 30 00 33 00 30 00 31 00 30 00 34 00 37 00 33 00 } //02 00  244257545E0673047603010473
		$a_01_6 = {37 00 32 00 35 00 34 00 34 00 33 00 35 00 35 00 35 00 46 00 35 00 33 00 35 00 39 00 35 00 30 00 35 00 35 00 35 00 42 00 34 00 30 00 31 00 33 00 35 00 37 00 35 00 33 00 31 00 35 00 34 00 35 00 35 00 30 00 34 00 32 00 35 00 34 00 35 00 36 00 35 00 31 00 34 00 32 00 31 00 42 00 } //02 00  725443555F535950555B4013575315455042545651421B
		$a_01_7 = {46 00 35 00 39 00 34 00 35 00 35 00 30 00 34 00 31 00 31 00 43 00 35 00 30 00 35 00 43 00 35 00 42 00 31 00 42 00 35 00 33 00 34 00 33 00 } //02 00  F594550411C505C5B1B5343
		$a_01_8 = {46 00 34 00 37 00 34 00 36 00 34 00 36 00 31 00 41 00 35 00 42 00 34 00 37 00 35 00 32 00 34 00 33 00 31 00 42 00 35 00 32 00 35 00 45 00 35 00 44 00 31 00 46 00 35 00 32 00 34 00 32 00 } //02 00  F4746461A5B4752431B525E5D1F5242
		$a_01_9 = {34 00 30 00 32 00 36 00 35 00 34 00 33 00 35 00 37 00 30 00 35 00 36 00 35 00 44 00 32 00 32 00 35 00 38 00 35 00 43 00 31 00 45 00 35 00 41 00 35 00 46 00 35 00 44 00 } //02 00  4026543570565D22585C1E5A5F5D
		$a_01_10 = {42 00 30 00 34 00 34 00 32 00 46 00 35 00 46 00 31 00 31 00 35 00 35 00 32 00 45 00 31 00 31 00 37 00 31 00 35 00 45 00 35 00 43 00 34 00 38 00 35 00 46 00 } //02 00  B0442F5F11552E11715E5C485F
		$a_01_11 = {42 00 4c 00 49 00 4e 00 44 00 41 00 44 00 4f 00 5c 00 50 00 65 00 67 00 61 00 49 00 6e 00 66 00 6f 00 50 00 52 00 49 00 4e 00 43 00 49 00 50 00 41 00 4c 00 } //02 00  BLINDADO\PegaInfoPRINCIPAL
		$a_01_12 = {70 00 69 00 72 00 61 00 6d 00 69 00 64 00 65 00 30 00 32 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //00 00  piramide02@gmail.com
	condition:
		any of ($a_*)
 
}