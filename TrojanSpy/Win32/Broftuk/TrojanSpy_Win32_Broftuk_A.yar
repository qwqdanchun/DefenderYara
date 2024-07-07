
rule TrojanSpy_Win32_Broftuk_A{
	meta:
		description = "TrojanSpy:Win32/Broftuk.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0f 00 00 "
		
	strings :
		$a_01_0 = {44 00 44 00 30 00 37 00 33 00 39 00 45 00 45 00 31 00 42 00 31 00 30 00 37 00 39 00 45 00 46 00 32 00 46 00 45 00 46 00 32 00 44 00 31 00 30 00 33 00 33 00 45 00 38 00 31 00 41 00 43 00 30 00 36 00 35 00 43 00 32 00 37 00 34 00 42 00 30 00 34 00 41 00 } //4 DD0739EE1B1079EF2FEF2D1033E81AC065C274B04A
		$a_01_1 = {33 00 33 00 44 00 41 00 30 00 44 00 43 00 32 00 37 00 37 00 46 00 34 00 36 00 32 00 44 00 36 00 34 00 31 00 33 00 38 00 32 00 32 00 31 00 42 00 31 00 38 00 31 00 44 00 30 00 35 00 37 00 38 00 46 00 38 00 36 00 31 00 44 00 44 00 34 00 33 00 32 00 32 00 30 00 37 00 36 00 30 00 39 00 30 00 35 00 43 00 39 00 45 00 35 00 31 00 34 00 46 00 38 00 36 00 44 00 36 00 37 00 30 00 } //4 33DA0DC277F462D64138221B181D0578F861DD43220760905C9E514F86D670
		$a_01_2 = {42 00 34 00 42 00 41 00 36 00 41 00 38 00 38 00 42 00 35 00 36 00 37 00 45 00 37 00 34 00 46 00 44 00 43 00 30 00 33 00 32 00 45 00 44 00 43 00 30 00 35 00 36 00 38 00 38 00 32 00 42 00 45 00 38 00 45 00 38 00 34 00 41 00 31 00 34 00 32 00 46 00 44 00 33 00 46 00 46 00 32 00 } //2 B4BA6A88B567E74FDC032EDC056882BE8E84A142FD3FF2
		$a_01_3 = {43 00 33 00 34 00 41 00 46 00 35 00 31 00 34 00 33 00 39 00 45 00 30 00 35 00 44 00 33 00 41 00 33 00 37 00 45 00 44 00 30 00 35 00 32 00 35 00 44 00 44 00 42 00 30 00 35 00 42 00 38 00 35 00 46 00 35 00 36 00 43 00 38 00 39 00 41 00 42 00 34 00 37 00 45 00 36 00 31 00 41 00 } //2 C34AF51439E05D3A37ED0525DDB05B85F56C89AB47E61A
		$a_01_4 = {43 00 41 00 34 00 43 00 46 00 33 00 32 00 32 00 30 00 42 00 43 00 34 00 36 00 38 00 39 00 31 00 42 00 44 00 36 00 34 00 43 00 45 00 37 00 42 00 41 00 36 00 38 00 42 00 39 00 46 00 34 00 45 00 45 00 31 00 31 00 36 00 32 00 41 00 43 00 41 00 36 00 45 00 38 00 43 00 46 00 41 00 37 00 30 00 43 00 39 00 37 00 43 00 38 00 } //2 CA4CF3220BC46891BD64CE7BA68B9F4EE1162ACA6E8CFA70C97C8
		$a_01_5 = {39 00 36 00 42 00 46 00 37 00 36 00 41 00 39 00 35 00 45 00 39 00 34 00 38 00 38 00 46 00 30 00 36 00 38 00 39 00 36 00 34 00 34 00 46 00 30 00 35 00 33 00 46 00 37 00 32 00 39 00 44 00 37 00 36 00 46 00 38 00 41 00 42 00 44 00 42 00 38 00 34 00 38 00 } //2 96BF76A95E9488F0689644F053F729D76F8ABDB848
		$a_01_6 = {41 00 44 00 42 00 42 00 36 00 39 00 41 00 30 00 34 00 45 00 46 00 46 00 32 00 41 00 43 00 43 00 35 00 38 00 38 00 45 00 42 00 36 00 36 00 30 00 38 00 39 00 42 00 41 00 36 00 31 00 46 00 37 00 33 00 31 00 43 00 45 00 36 00 31 00 38 00 33 00 41 00 45 00 41 00 34 00 34 00 37 00 46 00 30 00 33 00 44 00 45 00 37 00 } //2 ADBB69A04EFF2ACC588EB66089BA61F731CE6183AEA447F03DE7
		$a_01_7 = {45 00 33 00 37 00 30 00 39 00 44 00 35 00 42 00 38 00 30 00 41 00 39 00 35 00 30 00 46 00 36 00 37 00 32 00 41 00 38 00 35 00 44 00 39 00 41 00 34 00 43 00 46 00 37 00 32 00 32 00 33 00 36 00 43 00 46 00 36 00 46 00 38 00 31 00 41 00 33 00 34 00 46 00 43 00 37 00 36 00 32 00 39 00 42 00 35 00 36 00 39 00 45 00 } //2 E3709D5B80A950F672A85D9A4CF72236CF6F81A34FC7629B569E
		$a_01_8 = {38 00 37 00 39 00 42 00 34 00 36 00 45 00 38 00 31 00 31 00 33 00 38 00 31 00 45 00 32 00 35 00 44 00 43 00 30 00 39 00 31 00 32 00 33 00 46 00 45 00 35 00 30 00 36 00 32 00 37 00 44 00 34 00 41 00 34 00 41 00 42 00 34 00 37 00 46 00 46 00 32 00 33 00 } //2 879B46E811381E25DC09123FE50627D4A4AB47FF23
		$a_01_9 = {41 00 31 00 42 00 35 00 35 00 43 00 38 00 32 00 41 00 41 00 35 00 32 00 33 00 34 00 33 00 46 00 45 00 36 00 30 00 33 00 31 00 38 00 33 00 31 00 44 00 37 00 37 00 30 00 39 00 44 00 35 00 44 00 32 00 44 00 44 00 32 00 36 00 45 00 38 00 30 00 41 00 33 00 } //2 A1B55C82AA52343FE6031831D7709D5D2DD26E80A3
		$a_01_10 = {43 00 34 00 36 00 43 00 41 00 32 00 35 00 34 00 38 00 30 00 46 00 46 00 36 00 39 00 44 00 46 00 31 00 46 00 44 00 46 00 31 00 44 00 30 00 30 00 32 00 34 00 44 00 45 00 31 00 44 00 43 00 35 00 37 00 37 00 42 00 31 00 34 00 43 00 32 00 39 00 44 00 38 00 31 00 44 00 44 00 43 00 } //2 C46CA25480FF69DF1FDF1D0024DE1DC577B14C29D81DDC
		$a_01_11 = {33 00 30 00 44 00 45 00 31 00 33 00 33 00 44 00 46 00 36 00 32 00 45 00 30 00 38 00 37 00 32 00 } //1 30DE133DF62E0872
		$a_01_12 = {32 00 34 00 32 00 38 00 44 00 34 00 30 00 41 00 33 00 38 00 44 00 43 00 30 00 39 00 } //1 2428D40A38DC09
		$a_01_13 = {42 00 37 00 34 00 31 00 46 00 32 00 32 00 34 00 44 00 35 00 37 00 32 00 39 00 44 00 34 00 44 00 32 00 35 00 31 00 42 00 } //1 B741F224D5729D4D251B
		$a_01_14 = {39 00 34 00 41 00 39 00 36 00 33 00 38 00 46 00 34 00 30 00 46 00 31 00 31 00 31 00 43 00 34 00 } //1 94A9638F40F111C4
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*4+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*2+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=5
 
}