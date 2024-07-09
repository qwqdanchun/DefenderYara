
rule VirTool_Win32_Obfuscator_AQE{
	meta:
		description = "VirTool:Win32/Obfuscator.AQE,SIGNATURE_TYPE_PEHSTR_EXT,06 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {[] 7[] 4[]  [] 6[] 5[]  [] 6[] 4[]  [] 2[] e[]  [] 6[] 4[]  [] 6[] c[]  [] 6[] c[]  [] 0[] []  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][]  [] c[] ][]  [] 0[] 0[]  [] } //1
		$a_03_1 = {[] 6[] 9[]  [] 6[] e[]  [] 6[] 7[]  [] 2[] e[]  [] 6[] 4[]  [] 6[] c[]  [] 6[] c[]  [] 0[] []  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][] [ [] 0[] [] ]  5[] a[] ] [0[]  [] 0] [] 5[]  [] 1[] 0[]  [] 0[] [[] 4[[ c[]  []] 6[] ][]  [] c[] ][]  [] 0[] 0[]  [] } //1
		$a_03_2 = {[] 5[] 2[]  [] 6[] 5[]  [] 6[] 6[]  [] 6[] c[]  [] 6[] 5[]  [] 6[] 3[]  [] 7[] 4[]  [] 2[] e[]  [] 6[] 4[]  [] 6[] c[]  [] 6[] c[]  [] 0[] 0[]  [] [[] 4[] 1[] -[] 5[] a[] ][]  [] 9[1[] [[] [[] 4[] ] [[[] [] 6[] ][]]   [] c[][ 0[]  []] [[] 4[] 1[] -[] 5[] a[] ][]  [] 9[1[] [[] [[] 4[] ] [[[] [] 6[] ][]]   [] c[][ 0[]  []] [[] 4[] 1[] -[] 5[] a[] ][]  [] 9[1[] [[] [[] 4[] ] [[[] [] 6[] ][]]   [] c[][ 0[]  []] [[] 4[] 1[] -[] 5[] a[] ][]  [] 9[1[] [[] [[] 4[] ] [[[] [] 6[] ][]]   [] c[][ 0[]  []] [[] 4[] 1[] -[] 5[] a[] ][]  [] 9[1[] [[] [[] 4[] ] [[[] [] 6[] ][]]   [] c[][ 0[]  []] [[] 4[] 1[] -[] 5[] a[] ][]  [] 9[1[] [[] [[] 4[] ] [[[] [] 6[] ][]]   [] c[][ 0[]  []] } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}