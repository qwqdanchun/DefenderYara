
rule Spyware_Win32_MPSpyTestFile-Low{
	meta:
		description = "Spyware:Win32/MPSpyTestFile-Low,SIGNATURE_TYPE_PEHSTR,0c 00 06 00 0d 00 00 "
		
	strings :
		$a_01_0 = {4d 53 20 41 56 41 53 20 53 70 79 54 65 73 74 46 69 6c 65 2d 4c 6f 77 } //1 MS AVAS SpyTestFile-Low
		$a_01_1 = {49 6e 74 65 72 6e 61 6c 20 74 65 73 74 20 6f 6e 6c 79 21 20 44 6f 20 6e 6f 74 20 64 69 73 74 72 69 62 75 74 65 20 6f 75 74 73 69 64 65 20 79 6f 75 72 20 74 65 61 6d 21 } //1 Internal test only! Do not distribute outside your team!
		$a_01_2 = {38 62 34 32 36 65 61 30 2d 39 61 66 65 2d 34 34 32 62 2d 61 30 64 38 2d 30 32 33 64 33 62 64 65 61 37 33 34 } //1 8b426ea0-9afe-442b-a0d8-023d3bdea734
		$a_01_3 = {34 33 35 33 61 30 64 62 2d 63 62 32 30 2d 34 31 32 34 2d 62 66 61 37 2d 39 38 33 32 38 35 36 61 32 38 35 38 } //1 4353a0db-cb20-4124-bfa7-9832856a2858
		$a_01_4 = {64 32 66 38 39 31 65 33 2d 34 61 62 34 2d 34 34 39 61 2d 38 62 38 38 2d 35 39 32 39 63 32 62 66 37 35 37 37 } //1 d2f891e3-4ab4-449a-8b88-5929c2bf7577
		$a_01_5 = {33 63 35 65 63 34 66 34 2d 61 65 38 62 2d 34 36 61 61 2d 62 32 39 62 2d 62 63 37 37 65 36 38 37 62 32 31 65 } //1 3c5ec4f4-ae8b-46aa-b29b-bc77e687b21e
		$a_01_6 = {30 62 39 65 65 34 30 33 2d 62 33 35 63 2d 34 30 37 61 2d 39 30 36 62 2d 61 30 34 64 63 32 65 35 63 36 31 65 } //1 0b9ee403-b35c-407a-906b-a04dc2e5c61e
		$a_01_7 = {34 36 62 64 38 33 61 34 2d 39 65 64 31 2d 34 66 36 32 2d 38 62 62 36 2d 35 34 37 66 36 61 65 31 34 64 33 62 } //1 46bd83a4-9ed1-4f62-8bb6-547f6ae14d3b
		$a_01_8 = {64 64 36 31 61 33 32 30 2d 39 66 33 61 2d 34 65 34 31 2d 62 37 33 38 2d 32 36 37 32 62 65 30 38 65 35 61 33 } //1 dd61a320-9f3a-4e41-b738-2672be08e5a3
		$a_01_9 = {64 63 36 38 32 39 33 36 2d 66 63 65 64 2d 34 39 31 63 2d 62 36 38 63 2d 37 31 36 38 35 34 64 33 31 30 65 61 } //1 dc682936-fced-491c-b68c-716854d310ea
		$a_01_10 = {62 36 39 37 38 31 64 63 2d 34 34 39 39 2d 34 30 31 32 2d 62 30 36 39 2d 63 30 61 64 62 62 34 63 37 32 38 36 } //1 b69781dc-4499-4012-b069-c0adbb4c7286
		$a_01_11 = {34 64 30 63 38 61 33 64 2d 36 30 63 64 2d 34 62 35 62 2d 38 65 39 36 2d 66 31 34 63 35 35 39 64 66 66 38 63 } //1 4d0c8a3d-60cd-4b5b-8e96-f14c559dff8c
		$a_01_12 = {61 62 33 39 64 39 66 33 2d 34 38 32 36 2d 34 61 66 30 2d 62 33 66 39 2d 33 39 62 62 66 34 38 31 66 37 65 66 } //1 ab39d9f3-4826-4af0-b3f9-39bbf481f7ef
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=6
 
}