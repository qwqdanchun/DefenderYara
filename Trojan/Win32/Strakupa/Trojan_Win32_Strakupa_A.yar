
rule Trojan_Win32_Strakupa_A{
	meta:
		description = "Trojan:Win32/Strakupa.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 08 00 00 "
		
	strings :
		$a_01_0 = {58 75 6e 4c 65 69 2e 58 75 6e 4c 65 69 42 48 4f } //8 XunLei.XunLeiBHO
		$a_01_1 = {2e 63 6e 2f 77 65 62 68 70 3f 63 6c 69 65 6e 74 3d 70 75 62 2d 31 38 32 39 30 39 35 35 37 36 34 30 39 32 36 30 } //2 .cn/webhp?client=pub-1829095576409260
		$a_01_2 = {2e 63 6f 6d 2f 77 65 62 68 70 3f 63 6c 69 65 6e 74 3d 70 75 62 2d 33 37 37 36 33 37 37 37 36 39 31 39 34 31 35 33 } //2 .com/webhp?client=pub-3776377769194153
		$a_01_3 = {73 3d 33 63 33 33 61 37 36 37 26 77 3d 35 35 39 30 31 26 63 3d 33 31 31 26 69 3d 35 32 32 26 6c 3d 30 26 65 3d 7a 77 26 74 3d 68 74 74 70 3a 2f 2f 77 77 77 2e 78 2e 63 6f 6d 2e 63 6e } //1 s=3c33a767&w=55901&c=311&i=522&l=0&e=zw&t=http://www.x.com.cn
		$a_01_4 = {73 3d 66 32 64 61 39 35 64 61 26 77 3d 35 35 39 30 31 26 63 3d 32 35 35 26 69 3d 31 35 30 26 6c 3d 30 26 65 3d 7a 77 26 74 3d 68 74 74 70 3a 2f 2f 77 77 77 2e 76 61 6e 63 6c 2e 63 6f 6d } //1 s=f2da95da&w=55901&c=255&i=150&l=0&e=zw&t=http://www.vancl.com
		$a_01_5 = {73 3d 65 64 30 30 33 33 38 35 26 77 3d 35 35 39 30 31 26 63 3d 32 34 37 26 69 3d 31 35 39 26 6c 3d 30 26 65 3d 7a 77 26 74 3d 68 74 74 70 3a 2f 2f 77 77 77 2e 64 61 6e 67 64 61 6e 67 2e 63 6f 6d } //1 s=ed003385&w=55901&c=247&i=159&l=0&e=zw&t=http://www.dangdang.com
		$a_01_6 = {73 3d 64 34 30 32 65 34 37 35 26 77 3d 35 35 39 30 31 26 63 3d 32 34 35 26 69 3d 32 30 31 26 6c 3d 30 26 65 3d 7a 77 26 74 3d 68 74 74 70 3a 2f 2f 77 77 77 2e 61 6d 61 7a 6f 6e 2e 63 6e } //1 s=d402e475&w=55901&c=245&i=201&l=0&e=zw&t=http://www.amazon.cn
		$a_01_7 = {73 3d 36 62 65 33 61 62 36 66 26 77 3d 35 35 39 30 31 26 63 3d 32 32 38 26 69 3d 31 34 33 26 6c 3d 30 26 65 3d 7a 77 26 74 3d 68 74 74 70 3a 2f 2f 77 77 77 2e 72 65 64 6d 61 6c 6c 2e 63 6f 6d 2e 63 6e } //1 s=6be3ab6f&w=55901&c=228&i=143&l=0&e=zw&t=http://www.redmall.com.cn
	condition:
		((#a_01_0  & 1)*8+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=14
 
}