
rule Ransom_Linux_Crygodof_A{
	meta:
		description = "Ransom:Linux/Crygodof.A,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {59 4f 55 52 20 46 49 4c 45 53 20 41 52 45 20 45 4e 43 52 59 50 54 45 44 20 21 21 21 0a 0a 09 54 4f 20 44 45 43 52 59 50 54 2c 20 46 4f 4c 4c 4f } //01 00  余剕䘠䱉卅䄠䕒䔠䍎奒呐䑅℠℡ਊ吉⁏䕄剃偙ⱔ䘠䱏佌
		$a_00_1 = {41 6a 6e 64 4f 57 79 33 75 31 4d 6d 5a 74 71 72 72 78 57 36 4f 6e 35 66 67 63 68 35 46 4c 35 34 61 51 6f 50 57 65 46 34 37 6b 37 4a 42 39 0a 36 6f 46 31 39 38 54 55 2b 5a 39 2f 35 65 63 4f 37 } //01 00  橁摮坏㍹ㅵ浍瑚牱硲㙗湏昵捧㕨䱆㐵兡偯敗㑆欷䨷㥂㘊䙯㤱吸⭕㥚㔯捥㝏
		$a_00_2 = {6d 61 69 6e 2e 45 6e 63 46 69 6c 65 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}