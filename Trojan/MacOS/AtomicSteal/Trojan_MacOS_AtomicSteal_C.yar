
rule Trojan_MacOS_AtomicSteal_C{
	meta:
		description = "Trojan:MacOS/AtomicSteal.C,SIGNATURE_TYPE_MACHOHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_00_0 = {6c 6f 67 69 6e 75 73 65 72 73 2e 76 64 66 00 63 6f 6e 66 69 67 2e 76 64 66 00 53 74 65 61 6d 2f 6c 6f 67 69 6e 75 73 65 72 73 2e 76 64 66 00 53 74 65 61 6d 2f 63 6f 6e 66 69 67 2e 76 64 66 } //2
		$a_00_1 = {73 65 63 75 72 69 74 79 20 32 3e 26 31 20 3e 20 2f 64 65 76 2f 6e 75 6c 6c 20 66 69 6e 64 2d 67 65 6e 65 72 69 63 2d 70 61 73 73 77 6f 72 64 20 2d 67 61 20 27 43 68 72 6f 6d 65 27 } //2 security 2>&1 > /dev/null find-generic-password -ga 'Chrome'
		$a_00_2 = {73 79 73 74 65 6d 5f 70 72 6f 66 69 6c 65 72 20 53 50 48 61 72 64 77 61 72 65 44 61 74 61 54 79 70 65 00 75 73 65 72 00 55 53 45 52 00 75 73 65 72 6e 61 6d 65 00 2f 66 67 2f 00 46 69 6c 65 47 72 61 62 62 65 72 2f } //1
		$a_00_3 = {73 79 73 74 65 6d 5f 70 72 6f 66 69 6c 65 72 20 53 50 53 6f 66 74 77 61 72 65 44 61 74 61 54 79 70 65 20 53 50 53 6f 66 74 77 61 72 65 44 61 74 61 54 79 70 65 00 25 73 00 75 73 65 72 00 55 53 45 52 00 75 73 65 72 6e 61 6d 65 00 2f 66 67 2f 00 46 69 6c 65 47 72 61 62 62 65 72 2f } //1
		$a_00_4 = {61 74 6f 6d 69 63 2f 4c 6f 63 61 6c 20 53 74 6f 72 61 67 65 2f 6c 65 76 65 6c 64 62 2f 00 64 65 73 6b 77 61 6c 6c 65 74 73 2f 45 6c 65 63 74 72 75 6d 2f 00 64 65 73 6b 77 61 6c 6c 65 74 73 2f 43 6f 69 6e 6f 6d 69 2f 00 64 65 73 6b 77 61 6c 6c 65 74 73 2f 45 78 6f 64 75 73 2f 00 64 65 73 6b 77 61 6c 6c 65 74 73 2f 41 74 6f 6d 69 63 2f } //2 瑡浯捩䰯捯污匠潴慲敧氯癥汥扤/敤歳慷汬瑥⽳汅捥牴浵/敤歳慷汬瑥⽳潃湩浯⽩搀獥睫污敬獴䔯潸畤⽳搀獥睫污敬獴䄯潴業⽣
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*2) >=7
 
}