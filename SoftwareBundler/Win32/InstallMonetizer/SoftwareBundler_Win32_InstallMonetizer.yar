
rule SoftwareBundler_Win32_InstallMonetizer{
	meta:
		description = "SoftwareBundler:Win32/InstallMonetizer,SIGNATURE_TYPE_PEHSTR_EXT,24 00 24 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 61 69 6c 40 67 75 74 73 63 68 65 69 6e 72 61 75 73 63 68 2e 64 65 2e 78 70 69 } //01 00  mail@gutscheinrausch.de.xpi
		$a_01_1 = {49 6e 73 74 61 6c 6c 4d 61 6e 61 67 65 72 20 53 65 74 75 70 } //01 00  InstallManager Setup
		$a_01_2 = {73 3d 27 27 3b 20 61 3d 72 38 3b 20 62 3d 72 37 3b 20 23 7b 62 2d 2d 3e 30 2c 73 3d 73 2b 68 65 78 5b 61 2f 31 36 25 31 36 5d 2b 68 65 78 5b 61 25 31 36 5d 2b 23 5b 62 3e 30 2c 27 2d 27 2c 27 27 5d 3b 20 61 3d 61 2f 32 35 36 3b 7d 3b 20 72 39 3d 73 3b } //01 00  s=''; a=r8; b=r7; #{b-->0,s=s+hex[a/16%16]+hex[a%16]+#[b>0,'-','']; a=a/256;}; r9=s;
		$a_01_3 = {26 73 74 61 74 75 73 3d 31 33 26 6f 66 66 69 64 3d 32 26 6c 6f 67 3d } //01 00  &status=13&offid=2&log=
		$a_01_4 = {69 6e 73 74 61 6c 6c 6d 6f 6e 65 74 69 7a 65 72 2e 63 6f 6d } //20 00  installmonetizer.com
		$a_03_5 = {2f 49 4d 5f 90 02 03 61 70 70 69 6e 74 65 72 61 63 74 90 02 03 2e 70 68 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_InstallMonetizer_2{
	meta:
		description = "SoftwareBundler:Win32/InstallMonetizer,SIGNATURE_TYPE_PEHSTR_EXT,37 00 37 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 4f 66 66 65 72 53 63 72 65 65 6e 5f } //01 00  \OfferScreen_
		$a_01_1 = {5c 4f 66 66 65 72 31 2e 7a 69 70 } //01 00  \Offer1.zip
		$a_01_2 = {26 42 75 6e 64 6c 65 56 65 72 73 69 6f 6e 49 44 3d } //01 00  &BundleVersionID=
		$a_01_3 = {26 6d 6f 64 65 3d 63 68 65 63 6b 65 72 26 70 75 62 69 64 3d } //01 00  &mode=checker&pubid=
		$a_01_4 = {44 69 64 20 6e 6f 74 20 67 65 74 20 66 69 72 73 74 20 63 61 6c 6c 20 72 65 73 70 6f 6e 73 65 21 21 20 51 75 69 74 74 69 6e 67 20 65 78 65 } //01 00  Did not get first call response!! Quitting exe
		$a_01_5 = {44 6f 77 6e 6c 6f 61 64 69 6e 67 20 4f 6e 65 20 6f 66 66 65 72 20 7a 69 70 20 66 69 6c 65 } //01 00  Downloading One offer zip file
		$a_01_6 = {4f 66 66 65 72 33 41 64 76 49 6e 66 6f 55 52 4c } //01 00  Offer3AdvInfoURL
		$a_01_7 = {4d 30 4c 33 5a 35 53 30 47 31 4d 45 } //32 00  M0L3Z5S0G1ME
		$a_03_8 = {2f 46 43 4c 5f 43 6f 5f 90 02 07 72 65 6d 6f 74 65 90 02 07 2e 70 68 70 90 00 } //00 00 
		$a_00_9 = {78 01 01 } //00 24 
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_InstallMonetizer_3{
	meta:
		description = "SoftwareBundler:Win32/InstallMonetizer,SIGNATURE_TYPE_PEHSTR_EXT,24 00 24 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 4f 66 66 65 72 53 63 72 65 65 6e 5f } //01 00  \OfferScreen_
		$a_01_1 = {5c 4f 66 66 65 72 31 2e 7a 69 70 } //01 00  \Offer1.zip
		$a_01_2 = {73 3d 27 27 3b 20 61 3d 72 38 3b 20 62 3d 72 37 3b 20 23 7b 62 2d 2d 3e 30 2c 73 3d 73 2b 68 65 78 5b 61 2f 31 36 25 31 36 5d 2b 68 65 78 5b 61 25 31 36 5d 2b 23 5b 62 3e 30 2c 27 2d 27 2c 27 27 5d 3b 20 61 3d 61 2f 32 35 36 3b 7d 3b 20 72 39 3d 73 3b } //01 00  s=''; a=r8; b=r7; #{b-->0,s=s+hex[a/16%16]+hex[a%16]+#[b>0,'-','']; a=a/256;}; r9=s;
		$a_01_3 = {49 6e 73 74 61 6c 6c 4d 61 6e 61 67 65 72 20 53 65 74 75 70 } //01 00  InstallManager Setup
		$a_01_4 = {4e 30 4b 33 59 35 54 30 46 31 4e 44 } //01 00  N0K3Y5T0F1ND
		$a_01_5 = {26 74 79 70 65 3d 73 74 75 62 26 6d 6f 64 65 3d 69 6e 73 74 61 6c 6c 65 72 26 61 64 76 44 65 74 61 69 6c 73 3d } //01 00  &type=stub&mode=installer&advDetails=
		$a_01_6 = {26 6f 66 66 69 64 3d 31 26 73 74 61 74 75 73 3d 35 33 } //20 00  &offid=1&status=53
		$a_03_7 = {2f 66 69 72 73 74 5f 63 61 6c 6c 5f 90 02 07 2e 70 68 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_InstallMonetizer_4{
	meta:
		description = "SoftwareBundler:Win32/InstallMonetizer,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 72 6f 6d 3d 6e 73 69 73 26 74 79 70 65 3d 73 74 75 62 26 69 74 65 6d 69 64 3d } //01 00  from=nsis&type=stub&itemid=
		$a_01_1 = {43 42 31 53 74 61 74 65 00 43 42 32 53 74 61 74 65 } //01 00 
		$a_01_2 = {51 75 69 63 6b 49 6e 73 74 61 6c 6c 00 4d 75 6c 74 69 4f 66 66 65 72 } //01 00 
		$a_01_3 = {4d 30 4c 33 5a 35 53 30 47 31 4d 45 } //01 00  M0L3Z5S0G1ME
		$a_01_4 = {26 74 79 70 65 3d 73 74 75 62 26 6d 6f 64 65 3d 69 6e 73 74 61 6c 6c 65 72 26 61 64 76 44 65 74 61 69 6c 73 3d } //01 00  &type=stub&mode=installer&advDetails=
		$a_01_5 = {73 3d 27 27 3b 20 61 3d 72 38 3b 20 62 3d 72 37 3b 20 23 7b 62 2d 2d 3e 30 2c 73 3d 73 2b 68 65 78 5b 61 2f 31 36 25 31 36 5d 2b 68 65 78 5b 61 25 31 36 5d 2b 23 5b 62 3e 30 2c 27 2d 27 2c 27 27 5d 3b 20 61 3d 61 2f 32 35 36 3b 7d 3b 20 72 39 3d 73 3b } //20 00  s=''; a=r8; b=r7; #{b-->0,s=s+hex[a/16%16]+hex[a%16]+#[b>0,'-','']; a=a/256;}; r9=s;
		$a_03_6 = {68 74 74 70 3a 2f 2f 77 77 77 2e 90 11 05 00 90 12 05 00 2e 75 73 90 05 02 01 2f 90 11 02 00 90 02 13 2e 70 68 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_InstallMonetizer_5{
	meta:
		description = "SoftwareBundler:Win32/InstallMonetizer,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 41 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 4f 66 66 65 72 53 63 72 65 65 6e 5f } //01 00  \OfferScreen_
		$a_01_1 = {5c 4f 66 66 65 72 31 2e 7a 69 70 } //01 00  \Offer1.zip
		$a_01_2 = {26 42 75 6e 64 6c 65 56 65 72 73 69 6f 6e 49 44 3d } //01 00  &BundleVersionID=
		$a_01_3 = {26 6d 6f 64 65 3d 63 68 65 63 6b 65 72 26 70 75 62 69 64 3d } //01 00  &mode=checker&pubid=
		$a_01_4 = {26 6f 66 66 69 64 3d 31 26 73 74 61 74 75 73 3d 35 33 } //01 00  &offid=1&status=53
		$a_01_5 = {4d 30 4c 33 5a 35 53 30 47 31 4d 45 } //01 00  M0L3Z5S0G1ME
		$a_01_6 = {4e 30 4b 33 59 35 54 30 46 31 4e 44 } //01 00  N0K3Y5T0F1ND
		$a_01_7 = {77 77 77 2e 69 6e 73 74 61 6c 6c 6d 6f 6e 65 74 69 7a 65 72 2e 63 6f 6d } //01 00  www.installmonetizer.com
		$a_01_8 = {49 6e 73 74 61 6c 6c 4d 61 6e 61 67 65 72 20 53 65 74 75 70 } //9c ff  InstallManager Setup
		$a_01_9 = {38 30 30 35 00 37 33 30 39 } //20 00 
		$a_03_10 = {2f 46 43 4c 5f 43 6f 5f 55 6e 71 5f 65 74 6f 6d 65 72 90 02 03 2e 70 68 70 90 00 } //20 00 
		$a_03_11 = {2f 46 43 4c 5f 43 6f 5f 55 6e 71 5f 77 65 65 64 65 90 02 03 2e 70 68 70 90 00 } //20 00 
		$a_03_12 = {2f 46 43 4c 5f 43 6f 5f 4e 6f 61 65 72 65 72 5f 75 74 61 73 72 90 02 03 2e 70 68 70 90 00 } //20 00 
		$a_03_13 = {2f 46 43 4c 5f 43 6f 5f 90 02 08 2e 70 68 70 90 00 } //20 00 
		$a_03_14 = {2f 46 43 4c 5f 90 02 0f 2e 70 68 70 90 00 } //20 00 
		$a_03_15 = {2f 4c 43 46 5f 4f 63 5f 51 6e 75 5f 65 74 6f 6d 65 72 90 02 03 2e 70 68 70 90 00 } //20 00 
		$a_03_16 = {2f 66 69 72 73 74 5f 63 61 6c 6c 5f 90 02 07 2e 70 68 70 90 00 } //20 00 
		$a_03_17 = {2f 43 46 4c 5f 57 69 74 68 5f 90 02 05 2e 70 68 70 90 00 } //20 00 
		$a_01_18 = {2f 4d 6c 61 5f 62 63 64 65 66 72 2e 70 68 70 } //20 00  /Mla_bcdefr.php
		$a_01_19 = {2f 70 69 63 68 75 5f 6b 6f 6b 2e 70 68 70 } //20 00  /pichu_kok.php
		$a_01_20 = {77 77 77 2e 66 63 65 73 6e 65 69 6d 2e 75 73 } //20 00  www.fcesneim.us
		$a_01_21 = {77 77 77 2e 66 63 69 6d 65 77 6e 73 2e 75 73 } //20 00  www.fcimewns.us
		$a_01_22 = {77 77 77 2e 66 63 6d 75 6d 6f 76 69 2e 75 73 } //20 00  www.fcmumovi.us
		$a_01_23 = {77 77 77 2e 6e 74 6b 65 6d 75 2e 75 73 } //20 00  www.ntkemu.us
		$a_01_24 = {2f 73 77 61 79 61 5f 76 61 72 5f 70 72 2e 70 68 70 } //20 00  /swaya_var_pr.php
		$a_01_25 = {77 77 77 2e 65 78 70 72 6a 64 6d 6e 2e 75 73 } //20 00  www.exprjdmn.us
		$a_01_26 = {2f 65 64 69 5f 70 69 76 61 64 69 5f 64 65 73 69 67 6e 2e 70 68 70 } //20 00  /edi_pivadi_design.php
		$a_01_27 = {2f 67 61 5f 70 64 6d 5f 6d 6e 6d 2e 70 68 70 } //20 00  /ga_pdm_mnm.php
		$a_03_28 = {77 77 77 2e 66 63 90 11 06 00 2e 75 73 90 00 } //20 00 
		$a_03_29 = {77 77 77 2e 66 63 90 11 03 00 90 12 05 00 2e 75 73 2f 90 11 03 00 90 02 12 2e 70 68 70 90 00 } //20 00 
		$a_03_30 = {68 74 74 70 3a 2f 2f 77 77 77 2e 90 11 05 00 90 12 10 00 2e 75 73 2f 90 11 02 00 90 02 13 2e 70 68 70 90 00 } //20 00 
		$a_01_31 = {77 77 77 2e 79 69 73 65 72 77 6c 65 6e 2e 63 6f 6d } //20 00  www.yiserwlen.com
		$a_01_32 = {67 64 5f 62 6e 6b 2e 70 68 70 } //20 00  gd_bnk.php
		$a_01_33 = {77 77 77 2e 76 6c 61 6e 6d 6a 65 72 2e 63 6f 6d } //20 00  www.vlanmjer.com
		$a_01_34 = {62 6f 61 72 64 62 61 6e 2e 70 68 70 } //20 00  boardban.php
		$a_01_35 = {77 77 77 2e 70 7a 6c 65 72 73 65 6b 72 2e 63 6f 6d } //20 00  www.pzlersekr.com
		$a_01_36 = {2f 72 65 66 6c 61 6e 6b 65 72 5f 66 6b 2e 70 68 70 } //20 00  /reflanker_fk.php
		$a_01_37 = {77 77 77 2e 70 65 6c 72 73 6f 68 65 72 2e 63 6f 6d } //20 00  www.pelrsoher.com
		$a_01_38 = {2f 70 63 5f 76 6c 64 61 72 2e 70 68 70 } //20 00  /pc_vldar.php
		$a_01_39 = {77 77 77 2e 77 65 6c 6e 72 65 68 69 73 2e 63 6f 6d } //20 00  www.welnrehis.com
		$a_01_40 = {2f 63 68 6e 6c 5f 6d 6e 74 2e 70 68 70 } //20 00  /chnl_mnt.php
		$a_01_41 = {77 77 77 2e 71 75 6c 6d 72 61 6a 65 73 2e 63 6f 6d } //20 00  www.qulmrajes.com
		$a_01_42 = {2f 6d 72 75 67 61 6e 5f 6a 61 64 65 2e 70 68 70 } //20 00  /mrugan_jade.php
		$a_01_43 = {77 77 77 2e 6c 69 72 61 6d 6b 6c 75 74 2e 63 6f 6d } //20 00  www.liramklut.com
		$a_01_44 = {2f 6b 69 6b 61 5f 72 6c 73 64 2e 70 68 70 } //20 00  /kika_rlsd.php
		$a_01_45 = {77 77 77 2e 6d 6f 70 75 76 72 7a 61 63 2e 63 6f 6d } //20 00  www.mopuvrzac.com
		$a_01_46 = {2f 70 72 65 5f 73 67 73 2e 70 68 70 } //20 00  /pre_sgs.php
		$a_01_47 = {77 77 77 2e 6b 65 6c 69 74 62 77 6f 70 2e 63 6f 6d } //20 00  www.kelitbwop.com
		$a_01_48 = {2f 6e 61 73 67 65 64 5f 77 6f 6e 2e 70 68 70 } //20 00  /nasged_won.php
		$a_01_49 = {77 77 77 2e 70 6f 73 63 69 76 6e 65 72 2e 63 6f 6d } //20 00  www.poscivner.com
		$a_01_50 = {2f 63 68 6c 6b 5f 63 68 6e 74 2e 70 68 70 } //20 00  /chlk_chnt.php
		$a_01_51 = {77 77 77 2e 76 65 74 71 61 6c 67 65 72 2e 63 6f 6d } //20 00  www.vetqalger.com
		$a_01_52 = {2f 73 64 67 6c 5f 73 64 68 72 2e 70 68 70 } //20 00  /sdgl_sdhr.php
		$a_01_53 = {77 77 77 2e 61 65 72 77 61 6e 79 65 6d 2e 63 6f 6d } //20 00  www.aerwanyem.com
		$a_01_54 = {77 77 77 2e 6d 69 76 71 75 74 70 65 72 2e 63 6f 6d } //20 00  www.mivqutper.com
		$a_01_55 = {77 77 77 2e 62 61 72 6b 65 7a 79 69 64 2e 63 6f 6d } //20 00  www.barkezyid.com
		$a_01_56 = {77 77 77 2e 76 75 77 70 69 62 66 61 6d 2e 63 6f 6d } //20 00  www.vuwpibfam.com
		$a_01_57 = {77 77 77 2e 62 61 76 71 6f 6e 63 69 7a 2e 63 6f 6d 2f 6b 72 6b 5f 72 70 2e 70 68 70 } //20 00  www.bavqonciz.com/krk_rp.php
		$a_01_58 = {77 77 77 2e 62 61 76 71 6f 6e 63 69 7a 2e 63 6f 6d 2f 6d 64 5f 70 6c 5f 77 72 70 2e 70 68 70 } //9c ff  www.bavqonciz.com/md_pl_wrp.php
		$a_01_59 = {39 38 00 31 31 36 31 35 } //20 00 
		$a_01_60 = {77 77 77 2e 77 75 7a 6a 69 6c 72 61 67 2e 63 6f 6d 2f 70 74 73 5f 70 72 6b 73 68 2e 70 68 70 } //20 00  www.wuzjilrag.com/pts_prksh.php
		$a_01_61 = {77 77 77 2e 77 75 7a 6a 69 6c 72 61 67 2e 63 6f 6d 2f 6d 64 5f 70 6c 5f 77 72 70 2e 70 68 70 } //20 00  www.wuzjilrag.com/md_pl_wrp.php
		$a_01_62 = {77 77 77 2e 62 69 66 70 61 72 76 65 79 2e 63 6f 6d 2f 70 74 73 5f 70 72 6b 73 68 2e 70 68 70 } //20 00  www.bifparvey.com/pts_prksh.php
		$a_01_63 = {77 77 77 2e 6b 61 7a 72 6f 76 73 69 6c 2e 63 6f 6d } //20 00  www.kazrovsil.com
		$a_01_64 = {2f 70 74 73 5f 70 72 6b 73 68 2e 70 68 70 } //00 00  /pts_prksh.php
	condition:
		any of ($a_*)
 
}