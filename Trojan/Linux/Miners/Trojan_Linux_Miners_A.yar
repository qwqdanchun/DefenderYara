
rule Trojan_Linux_Miners_A{
	meta:
		description = "Trojan:Linux/Miners.A,SIGNATURE_TYPE_CMDHSTR_EXT,fffffff4 01 0a 00 3a 00 00 "
		
	strings :
		$a_00_0 = {2f 00 2e 00 78 00 31 00 6d 00 75 00 6e 00 69 00 78 00 } //10 /.x1munix
		$a_00_1 = {2f 00 77 00 69 00 70 00 65 00 66 00 73 00 65 00 } //10 /wipefse
		$a_00_2 = {2f 00 63 00 70 00 75 00 6d 00 69 00 6e 00 65 00 72 00 2d 00 6d 00 75 00 6c 00 74 00 69 00 } //10 /cpuminer-multi
		$a_00_3 = {2f 00 67 00 65 00 74 00 6d 00 6f 00 6e 00 65 00 72 00 6f 00 } //10 /getmonero
		$a_00_4 = {2f 00 78 00 6d 00 72 00 2e 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 } //10 /xmr.service
		$a_00_5 = {2f 00 78 00 6d 00 36 00 34 00 } //10 /xm64
		$a_00_6 = {2f 00 78 00 6d 00 33 00 32 00 } //10 /xm32
		$a_00_7 = {2f 00 64 00 6f 00 63 00 6b 00 65 00 72 00 6d 00 69 00 6e 00 65 00 72 00 } //10 /dockerminer
		$a_00_8 = {2f 00 78 00 6d 00 72 00 64 00 65 00 6d 00 6f 00 } //10 /xmrdemo
		$a_00_9 = {2f 00 6f 00 63 00 65 00 61 00 6e 00 68 00 6f 00 6c 00 65 00 } //10 /oceanhole
		$a_00_10 = {2f 00 77 00 61 00 74 00 63 00 68 00 62 00 6f 00 67 00 } //10 /watchbog
		$a_00_11 = {2f 00 63 00 72 00 79 00 70 00 74 00 6f 00 6e 00 69 00 67 00 68 00 74 00 } //10 /cryptonight
		$a_00_12 = {2f 00 6e 00 69 00 63 00 65 00 68 00 61 00 73 00 68 00 6d 00 69 00 6e 00 65 00 72 00 } //10 /nicehashminer
		$a_00_13 = {2f 00 65 00 74 00 68 00 6d 00 69 00 6e 00 65 00 72 00 } //10 /ethminer
		$a_00_14 = {2f 00 65 00 71 00 75 00 69 00 68 00 61 00 73 00 68 00 } //10 /equihash
		$a_00_15 = {2f 00 4e 00 73 00 43 00 70 00 75 00 43 00 4e 00 4d 00 69 00 6e 00 65 00 72 00 36 00 34 00 } //10 /NsCpuCNMiner64
		$a_00_16 = {2f 00 6d 00 69 00 6e 00 65 00 72 00 67 00 61 00 74 00 65 00 } //10 /minergate
		$a_00_17 = {2f 00 6d 00 69 00 6e 00 65 00 72 00 64 00 } //10 /minerd
		$a_00_18 = {2f 00 78 00 6d 00 72 00 2d 00 73 00 74 00 61 00 6b 00 2d 00 63 00 70 00 75 00 } //10 /xmr-stak-cpu
		$a_00_19 = {2f 00 78 00 6d 00 72 00 69 00 67 00 } //10 /xmrig
		$a_00_20 = {2f 00 78 00 6d 00 72 00 2d 00 73 00 74 00 61 00 6b 00 } //10 /xmr-stak
		$a_00_21 = {2f 00 73 00 74 00 72 00 61 00 74 00 75 00 6d 00 } //10 /stratum
		$a_00_22 = {2f 00 41 00 6e 00 58 00 71 00 56 00 2e 00 79 00 61 00 6d 00 } //10 /AnXqV.yam
		$a_00_23 = {2f 00 78 00 6d 00 72 00 69 00 67 00 44 00 61 00 65 00 6d 00 6f 00 6e 00 } //10 /xmrigDaemon
		$a_00_24 = {2f 00 78 00 6d 00 72 00 69 00 67 00 4d 00 69 00 6e 00 65 00 72 00 } //10 /xmrigMiner
		$a_00_25 = {2f 00 61 00 70 00 61 00 63 00 65 00 68 00 61 00 } //10 /apaceha
		$a_00_26 = {2f 00 6d 00 69 00 78 00 6e 00 65 00 72 00 64 00 78 00 } //10 /mixnerdx
		$a_00_27 = {2f 00 62 00 61 00 73 00 68 00 78 00 } //10 /bashx
		$a_00_28 = {2f 00 62 00 61 00 73 00 68 00 67 00 } //10 /bashg
		$a_00_29 = {2f 00 62 00 61 00 73 00 68 00 65 00 } //10 /bashe
		$a_00_30 = {2f 00 62 00 61 00 73 00 68 00 66 00 } //10 /bashf
		$a_00_31 = {2f 00 62 00 61 00 73 00 68 00 68 00 } //10 /bashh
		$a_00_32 = {2f 00 58 00 62 00 61 00 73 00 68 00 59 00 } //10 /XbashY
		$a_00_33 = {2f 00 63 00 72 00 79 00 70 00 74 00 6f 00 2d 00 70 00 6f 00 6f 00 6c 00 } //10 /crypto-pool
		$a_00_34 = {2f 00 6d 00 69 00 6e 00 65 00 78 00 6d 00 72 00 } //10 /minexmr
		$a_00_35 = {2f 00 58 00 4a 00 6e 00 52 00 6a 00 } //10 /XJnRj
		$a_00_36 = {2f 00 4e 00 58 00 4c 00 41 00 69 00 } //10 /NXLAi
		$a_00_37 = {2f 00 42 00 49 00 35 00 7a 00 6a 00 } //10 /BI5zj
		$a_00_38 = {2f 00 61 00 73 00 6b 00 64 00 6c 00 6a 00 6c 00 71 00 77 00 } //10 /askdljlqw
		$a_00_39 = {2f 00 79 00 73 00 61 00 79 00 64 00 68 00 } //10 /ysaydh
		$a_00_40 = {2f 00 62 00 6f 00 6e 00 6e 00 73 00 } //10 /bonns
		$a_00_41 = {2f 00 64 00 6f 00 6e 00 6e 00 73 00 } //10 /donns
		$a_00_42 = {2f 00 6b 00 78 00 6a 00 64 00 } //10 /kxjd
		$a_00_43 = {2f 00 44 00 75 00 63 00 6b 00 2e 00 73 00 68 00 } //10 /Duck.sh
		$a_00_44 = {2f 00 62 00 6f 00 6e 00 6e 00 2e 00 73 00 68 00 } //10 /bonn.sh
		$a_00_45 = {2f 00 6b 00 77 00 6f 00 72 00 6b 00 65 00 72 00 33 00 34 00 } //10 /kworker34
		$a_00_46 = {2f 00 69 00 72 00 71 00 62 00 61 00 6c 00 61 00 6e 00 63 00 31 00 } //10 /irqbalanc1
		$a_00_47 = {2f 00 64 00 64 00 67 00 2e 00 32 00 30 00 31 00 31 00 } //10 /ddg.2011
		$a_00_48 = {2f 00 77 00 6e 00 54 00 4b 00 59 00 67 00 } //10 /wnTKYg
		$a_00_49 = {2f 00 64 00 65 00 61 00 6d 00 6f 00 6e 00 } //10 /deamon
		$a_00_50 = {2f 00 4a 00 6e 00 4b 00 69 00 68 00 47 00 6a 00 6e 00 } //10 /JnKihGjn
		$a_00_51 = {2f 00 69 00 72 00 71 00 62 00 61 00 32 00 61 00 6e 00 63 00 31 00 } //10 /irqba2anc1
		$a_00_52 = {2f 00 69 00 72 00 71 00 62 00 61 00 35 00 78 00 6e 00 63 00 31 00 } //10 /irqba5xnc1
		$a_00_53 = {2f 00 69 00 72 00 71 00 62 00 6e 00 63 00 31 00 } //10 /irqbnc1
		$a_00_54 = {2f 00 69 00 72 00 32 00 39 00 78 00 63 00 31 00 } //10 /ir29xc1
		$a_00_55 = {2f 00 78 00 69 00 67 00 } //10 /xig
		$a_00_56 = {2f 00 63 00 72 00 61 00 6e 00 62 00 65 00 72 00 72 00 79 00 } //10 /cranberry
		$a_00_57 = {2f 00 2e 00 67 00 70 00 67 00 2d 00 61 00 67 00 65 00 6e 00 74 00 } //10 /.gpg-agent
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10+(#a_00_11  & 1)*10+(#a_00_12  & 1)*10+(#a_00_13  & 1)*10+(#a_00_14  & 1)*10+(#a_00_15  & 1)*10+(#a_00_16  & 1)*10+(#a_00_17  & 1)*10+(#a_00_18  & 1)*10+(#a_00_19  & 1)*10+(#a_00_20  & 1)*10+(#a_00_21  & 1)*10+(#a_00_22  & 1)*10+(#a_00_23  & 1)*10+(#a_00_24  & 1)*10+(#a_00_25  & 1)*10+(#a_00_26  & 1)*10+(#a_00_27  & 1)*10+(#a_00_28  & 1)*10+(#a_00_29  & 1)*10+(#a_00_30  & 1)*10+(#a_00_31  & 1)*10+(#a_00_32  & 1)*10+(#a_00_33  & 1)*10+(#a_00_34  & 1)*10+(#a_00_35  & 1)*10+(#a_00_36  & 1)*10+(#a_00_37  & 1)*10+(#a_00_38  & 1)*10+(#a_00_39  & 1)*10+(#a_00_40  & 1)*10+(#a_00_41  & 1)*10+(#a_00_42  & 1)*10+(#a_00_43  & 1)*10+(#a_00_44  & 1)*10+(#a_00_45  & 1)*10+(#a_00_46  & 1)*10+(#a_00_47  & 1)*10+(#a_00_48  & 1)*10+(#a_00_49  & 1)*10+(#a_00_50  & 1)*10+(#a_00_51  & 1)*10+(#a_00_52  & 1)*10+(#a_00_53  & 1)*10+(#a_00_54  & 1)*10+(#a_00_55  & 1)*10+(#a_00_56  & 1)*10+(#a_00_57  & 1)*10) >=10
 
}