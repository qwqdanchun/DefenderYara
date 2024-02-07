
rule Trojan_BAT_AgentTesla_NIQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NIQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 27 42 22 70 70 7c 70 70 70 70 74 70 70 70 70 5e 5e 67 70 70 7b 38 70 70 70 70 70 70 70 70 70 22 70 70 70 70 70 70 } //01 00  %'B"pp|pppptpppp^^gpp{8ppppppppp"pppppp
		$a_01_1 = {70 63 37 46 38 63 70 45 70 3f 7d 78 33 38 71 25 7c 5f 39 27 76 39 41 34 4a 71 48 34 3e 68 3f 34 3e 75 45 78 76 7d 39 33 3e 64 47 35 72 71 3a 2b 24 71 4a 35 28 } //01 00  pc7F8cpEp?}x38q%|_9'v9A4JqH4>h?4>uExv}93>dG5rq:+$qJ5(
		$a_01_2 = {73 22 5f 7a 79 70 70 70 70 70 70 70 70 70 71 22 23 22 70 70 25 70 74 73 70 73 72 32 72 28 78 70 70 70 70 70 70 70 70 70 70 7e 70 70 73 3a 74 7b 70 22 2a 70 70 } //01 00  s"_zypppppppppq"#"pp%ptspsr2r(xpppppppppp~pps:t{p"*pp
		$a_01_3 = {64 70 76 35 3d 35 75 68 2a 70 76 35 3d 35 75 68 2b 70 74 27 49 35 28 75 44 34 48 71 47 35 76 39 3d 34 38 71 47 2a 3e 40 70 23 61 27 5f 24 76 75 4b } //01 00  dpv5=5uh*pv5=5uh+pt'I5(uD4HqG5v9=48qG*>@p#a'_$vuK
		$a_01_4 = {72 3f 62 38 70 70 70 7a 71 38 7d 68 62 48 70 70 72 38 2a 73 36 48 34 71 70 70 41 68 71 48 74 70 72 38 7c 29 37 22 34 71 70 70 40 73 70 38 7d 66 63 70 } //01 00  r?b8pppzq8}hbHppr8*s6H4qppAhqHtpr8|)7"4qpp@sp8}fcp
		$a_01_5 = {78 26 78 70 74 27 74 40 73 22 70 39 7c 70 74 48 74 27 74 40 73 22 70 39 7c 70 74 48 74 7c 78 70 74 72 75 } //01 00  x&xpt't@s"p9|ptHt't@s"p9|ptHt|xptru
		$a_01_6 = {7c 38 62 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 } //01 00  |8bppppppppppppppppppppppppppppppppppppp
		$a_03_7 = {08 07 1f 21 08 07 93 1f 0e 58 1f 5e 5d 58 28 90 01 03 0a 9d 90 00 } //01 00 
		$a_01_8 = {43 72 61 64 69 61 74 6f 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Cradiator.Properties.Resources.resources
		$a_01_9 = {43 72 61 64 69 61 74 6f 72 2e 43 6f 6e 66 69 67 2e 43 68 61 6e 67 65 48 61 6e 64 6c 65 72 73 } //01 00  Cradiator.Config.ChangeHandlers
		$a_80_10 = {53 68 61 72 70 53 74 72 75 63 74 75 72 65 73 2e 53 6f 72 74 69 6e 67 2e 53 6f 72 74 48 65 6c 70 65 72 } //SharpStructures.Sorting.SortHelper  00 00 
	condition:
		any of ($a_*)
 
}