
rule Worm_Linux_Darlloz_A{
	meta:
		description = "Worm:Linux/Darlloz.A,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 76 61 72 2f 72 75 6e 2f 2e 7a 6f 6c 6c 61 72 64 2f } //01 00  /var/run/.zollard/
		$a_01_1 = {69 6e 73 6d 6f 64 20 2f 6c 69 62 2f 6d 6f 64 75 6c 65 73 2f 60 75 6e 61 6d 65 20 2d 72 60 2f 6b 65 72 6e 65 6c 2f 6e 65 74 2f 69 70 76 34 2f 6e 65 74 66 69 6c 74 65 72 2f 69 70 74 61 62 6c 65 } //01 00  insmod /lib/modules/`uname -r`/kernel/net/ipv4/netfilter/iptable
		$a_01_2 = {69 70 74 61 62 6c 65 73 20 2d 44 20 49 4e 50 55 54 20 2d 70 20 74 63 70 20 2d 2d 64 70 6f 72 74 20 32 33 20 2d 6a 20 44 52 4f 50 } //01 00  iptables -D INPUT -p tcp --dport 23 -j DROP
		$a_03_3 = {77 67 65 74 20 2d 4f 20 2f 74 6d 70 2f 78 38 36 20 90 02 40 2f 78 38 36 90 00 } //01 00 
		$a_01_4 = {37 30 25 37 32 25 36 35 25 37 30 25 36 35 25 36 45 25 36 34 25 35 46 25 36 36 25 36 39 25 36 43 25 36 35 25 33 44 25 37 30 25 36 38 25 37 30 25 33 41 25 32 } //01 00  70%72%65%70%65%6E%64%5F%66%69%6C%65%3D%70%68%70%3A%2
		$a_01_5 = {65 6c 73 65 69 66 20 28 69 73 5f 63 61 6c 6c 61 62 6c 65 28 22 70 61 73 73 74 68 72 75 22 29 20 61 6e 64 20 21 69 6e 5f 61 72 72 61 79 28 22 70 61 73 73 74 68 72 75 22 2c 24 64 69 73 61 62 6c 65 66 75 6e 63 29 29 20 7b 24 76 20 3d 20 40 6f 62 5f 67 65 74 5f 63 6f 6e 74 65 6e 74 73 28 29 3b 20 40 6f 62 5f 63 6c 65 61 6e 28 29 3b 20 70 61 73 73 74 68 72 75 28 24 63 6d 64 29 3b } //00 00  elseif (is_callable("passthru") and !in_array("passthru",$disablefunc)) {$v = @ob_get_contents(); @ob_clean(); passthru($cmd);
		$a_00_6 = {5d 04 00 } //00 2e 
	condition:
		any of ($a_*)
 
}