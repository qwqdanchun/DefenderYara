
rule TrojanDownloader_O97M_Dridex_PSB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.PSB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 70 72 65 3c 46 40 75 2f 78 64 69 63 74 69 6f 6e 32 30 32 30 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 72 3c 46 40 75 2f 78 65 61 6c 6c 79 3c 46 40 75 2f 78 2d 73 69 6d 70 6c 65 2d 73 73 6c 2f 74 65 73 74 73 73 6c 2f 63 6c 6f 75 64 66 6c 61 72 65 2f 6a 44 4e 3c 46 40 75 2f 78 36 77 6d 46 69 64 47 36 35 2e 70 68 70 22 2c 20 22 3c 46 40 75 2f 78 22 2c 20 22 22 29 } //01 00  = Replace("https://pre<F@u/xdiction2020.com/wp-content/plugins/r<F@u/xeally<F@u/x-simple-ssl/testssl/cloudflare/jDN<F@u/x6wmFidG65.php", "<F@u/x", "")
		$a_01_1 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 6f 6f 74 61 73 68 6f 70 2e 63 6f 55 4c 4a 6e 51 61 62 6d 2f 63 61 74 55 4c 4a 6e 51 61 62 61 6c 6f 67 2f 6c 61 6e 67 75 61 67 65 2f 61 72 2f 65 78 74 65 6e 73 69 6f 6e 2f 63 61 70 74 63 68 61 2f 55 4c 4a 6e 51 61 62 49 7a 55 4c 4a 6e 51 61 62 34 30 55 4c 4a 6e 51 61 62 43 61 43 55 4c 4a 6e 51 61 62 46 78 2e 70 68 70 22 2c 20 22 55 4c 4a 6e 51 61 62 22 2c 20 22 22 29 } //01 00  = Replace("https://ootashop.coULJnQabm/catULJnQabalog/language/ar/extension/captcha/ULJnQabIzULJnQab40ULJnQabCaCULJnQabFx.php", "ULJnQab", "")
		$a_01_2 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 61 64 65 67 74 2e 63 6f 6d 2f 77 7a 35 61 67 45 23 70 2d 69 7a 35 61 67 45 23 6e 63 6c 75 64 65 73 2f 73 6f 7a 35 61 67 45 23 64 69 75 6d 5f 63 6f 6d 70 61 7a 35 61 67 45 23 74 2f 6e 61 6d 65 73 70 61 63 65 64 2f 43 6f 72 65 2f 43 68 7a 35 61 67 45 23 61 43 68 61 32 30 2f 65 44 4b 67 6f 69 5a 6f 76 38 7a 35 61 67 45 23 32 46 54 2e 70 68 70 22 2c 20 22 7a 35 61 67 45 23 22 2c 20 22 22 29 } //01 00  = Replace("https://adegt.com/wz5agE#p-iz5agE#ncludes/soz5agE#dium_compaz5agE#t/namespaced/Core/Chz5agE#aCha20/eDKgoiZov8z5agE#2FT.php", "z5agE#", "")
		$a_01_3 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 6d 65 6e 75 69 73 65 72 69 65 2d 6c 65 6d 6f 69 6e 65 2e 62 7a 68 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 74 72 43 50 4b 76 68 65 6d 65 73 2f 74 77 65 6e 74 79 6e 69 72 43 50 4b 76 6e 65 74 65 65 6e 2f 74 65 6d 70 6c 61 74 65 2d 70 61 72 74 73 2f 63 6f 6e 74 65 6e 74 72 43 50 4b 76 2f 78 30 58 78 45 48 57 47 64 65 79 50 42 45 6a 2e 70 68 70 22 2c 20 22 72 43 50 4b 76 22 2c 20 22 22 29 } //01 00  = Replace("https://menuiserie-lemoine.bzh/wp-content/trCPKvhemes/twentynirCPKvneteen/template-parts/contentrCPKv/x0XxEHWGdeyPBEj.php", "rCPKv", "")
		$a_01_4 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 63 61 6e 61 76 65 72 61 6c 2e 74 6f 75 72 73 2f 77 70 2d 63 75 26 2e 46 25 73 5f 6f 75 26 2e 46 25 73 5f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 62 69 72 63 68 73 63 68 65 64 75 6c 65 2f 69 6e 75 26 2e 46 25 73 5f 63 6c 75 26 2e 46 25 73 5f 75 64 65 73 2f 6d 6f 64 65 6c 2f 75 26 2e 46 25 73 5f 6e 43 53 4a 4c 59 76 76 47 4a 77 2e 70 68 70 22 2c 20 22 75 26 2e 46 25 73 5f 22 2c 20 22 22 29 } //01 00  = Replace("https://canaveral.tours/wp-cu&.F%s_ou&.F%s_ntent/plugins/birchschedule/inu&.F%s_clu&.F%s_udes/model/u&.F%s_nCSJLYvvGJw.php", "u&.F%s_", "")
		$a_01_5 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 67 75 3e 64 74 43 3e 2f 2f 6d 67 75 3e 64 74 43 3e 61 72 63 6f 69 73 67 75 3e 64 74 43 3e 6c 61 6e 64 67 75 69 64 65 67 75 3e 64 74 43 3e 62 6f 6f 6b 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 6a 73 2f 74 69 6e 79 6d 63 65 2f 70 6c 75 67 69 6e 73 2f 63 68 61 72 6d 61 70 2f 78 6c 74 47 72 4a 67 75 3e 64 74 43 3e 57 69 4b 2e 70 68 70 22 2c 20 22 67 75 3e 64 74 43 3e 22 2c 20 22 22 29 } //01 00  = Replace("https:gu>dtC>//mgu>dtC>arcoisgu>dtC>landguidegu>dtC>book.com/wp-includes/js/tinymce/plugins/charmap/xltGrJgu>dtC>WiK.php", "gu>dtC>", "")
		$a_01_6 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 6f 70 63 61 62 64 2e 6f 72 67 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 74 68 65 6d 65 73 2f 74 77 65 6e 74 79 73 65 76 65 6e 74 65 65 6e 2f 74 65 6d 70 6c 34 5c 4f 3a 64 37 61 74 65 34 5c 4f 3a 64 37 2d 70 61 72 74 73 2f 66 6f 6f 74 65 34 5c 4f 3a 64 37 72 2f 38 42 55 50 62 6c 53 35 43 52 47 6d 2e 70 68 70 22 2c 20 22 34 5c 4f 3a 64 37 22 2c 20 22 22 29 } //01 00  = Replace("https://opcabd.org/wp-content/themes/twentyseventeen/templ4\O:d7ate4\O:d7-parts/foote4\O:d7r/8BUPblS5CRGm.php", "4\O:d7", "")
		$a_01_7 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 5f 42 46 73 2c 74 70 73 3a 2f 2f 64 69 6e 72 5f 42 46 73 2c 61 74 6e 65 77 73 2e 6e 65 74 2f 77 70 2d 63 5f 42 46 73 2c 6f 6e 74 65 5f 42 46 73 2c 6e 74 2f 75 70 6c 6f 61 64 73 5f 42 46 73 2c 2f 32 30 32 30 2f 30 35 2f 74 68 75 6d 62 6e 61 69 6c 73 5f 42 46 73 2c 2f 62 72 43 79 52 75 6d 6a 2e 70 68 70 22 2c 20 22 5f 42 46 73 2c 22 2c 20 22 22 29 } //01 00  = Replace("ht_BFs,tps://dinr_BFs,atnews.net/wp-c_BFs,onte_BFs,nt/uploads_BFs,/2020/05/thumbnails_BFs,/brCyRumj.php", "_BFs,", "")
		$a_01_8 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 77 77 77 2e 6d 61 74 74 65 69 63 6f 2e 63 6f 6d 2f 4e 4d 49 5f 62 41 50 6e 5a 6b 42 71 65 74 61 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 77 70 2d 73 6d 75 73 68 69 41 50 6e 5a 6b 42 71 74 2f 5f 73 72 63 2f 42 4e 74 41 50 6e 5a 6b 42 71 73 4d 66 53 65 31 32 2e 70 68 70 22 2c 20 22 41 50 6e 5a 6b 42 71 22 2c 20 22 22 29 } //00 00  = Replace("https://www.matteico.com/NMI_bAPnZkBqeta/wp-content/plugins/wp-smushiAPnZkBqt/_src/BNtAPnZkBqsMfSe12.php", "APnZkBq", "")
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Dridex_PSB_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Dridex.PSB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 12 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 73 68 61 6e 74 69 6a 6f 73 65 70 68 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 74 68 65 6d 65 73 2f 74 77 65 78 4c 64 5f 20 57 6e 74 79 73 65 76 65 6e 74 65 65 6e 2f 74 65 6d 70 6c 61 74 65 2d 70 61 72 74 73 2f 66 6f 6f 74 65 72 2f 52 53 4d 4d 6c 65 76 72 2e 70 68 70 22 2c 20 22 78 4c 64 5f 20 57 22 2c 20 22 22 29 } //01 00  = Replace("https://shantijoseph.com/wp-content/themes/twexLd_ Wntyseventeen/template-parts/footer/RSMMlevr.php", "xLd_ W", "")
		$a_01_1 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 21 50 32 58 39 2e 2d 2f 64 69 6e 72 61 74 6e 65 77 73 2e 6e 65 74 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 75 70 6c 6f 61 64 73 2f 32 30 32 30 2f 30 35 2f 74 68 75 6d 62 21 50 32 58 39 2e 2d 6e 61 69 6c 73 2f 62 72 43 79 52 75 6d 6a 2e 70 68 70 22 2c 20 22 21 50 32 58 39 2e 2d 22 2c 20 22 22 29 } //01 00  = Replace("https:/!P2X9.-/dinratnews.net/wp-content/uploads/2020/05/thumb!P2X9.-nails/brCyRumj.php", "!P2X9.-", "")
		$a_01_2 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 72 69 74 73 2d 73 61 2e 63 6f 2e 7a 61 2f 4f 33 5c 70 39 2e 77 70 2d 63 4f 33 5c 70 39 2e 4f 33 5c 70 39 2e 6f 6e 74 65 6e 4f 33 5c 70 39 2e 74 2f 70 6c 75 67 69 6e 73 2f 66 75 6c 6c 77 69 64 74 68 2d 74 65 6d 70 6c 61 74 65 73 2f 74 65 6d 70 6c 61 74 65 73 2f 64 65 66 61 4f 33 5c 70 39 2e 75 6c 74 2f 4f 33 5c 70 39 2e 51 4b 31 58 33 32 30 52 78 42 2e 70 68 70 22 2c 20 22 4f 33 5c 70 39 2e 22 2c 20 22 22 29 } //01 00  = Replace("https://rits-sa.co.za/O3\p9.wp-cO3\p9.O3\p9.ontenO3\p9.t/plugins/fullwidth-templates/templates/defaO3\p9.ult/O3\p9.QK1X320RxB.php", "O3\p9.", "")
		$a_01_3 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 6f 56 28 6b 6c 73 3a 2f 2f 6f 70 63 61 62 64 2e 6f 72 67 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 6f 56 28 6b 6c 74 68 65 6d 65 73 2f 74 77 65 6e 74 79 73 65 76 65 6e 74 65 65 6e 2f 74 65 6d 70 6c 61 74 65 2d 70 61 72 74 73 2f 66 6f 6f 74 65 72 2f 38 42 6f 56 28 6b 6c 55 50 62 6c 53 35 43 52 47 6d 6f 56 28 6b 6c 2e 70 68 70 22 2c 20 22 6f 56 28 6b 6c 22 2c 20 22 22 29 } //01 00  = Replace("httpoV(kls://opcabd.org/wp-content/oV(klthemes/twentyseventeen/template-parts/footer/8BoV(klUPblS5CRGmoV(kl.php", "oV(kl", "")
		$a_01_4 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 64 69 6e 72 61 74 6e 65 77 73 2e 6e 65 74 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 75 63 43 38 42 38 3b 70 6c 6f 61 64 73 2f 32 30 32 30 2f 30 35 2f 74 68 75 6d 62 6e 61 69 6c 73 2f 62 72 43 79 63 43 38 42 38 3b 52 75 6d 6a 2e 70 68 70 22 2c 20 22 63 43 38 42 38 3b 22 2c 20 22 22 29 } //01 00  = Replace("https://dinratnews.net/wp-content/ucC8B8;ploads/2020/05/thumbnails/brCycC8B8;Rumj.php", "cC8B8;", "")
		$a_01_5 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 74 61 63 74 6f 63 6f 6e 73 63 69 65 6e 74 65 2e 6e 65 74 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 6a 73 5f 63 6f 6d 70 6f 73 57 48 78 20 69 44 65 72 2f 63 6f 6e 66 69 67 2f 62 75 74 74 6f 6e 73 2f 4c 39 4f 34 4b 6c 63 38 57 48 78 20 69 44 31 65 63 4c 2e 70 68 70 22 2c 20 22 57 48 78 20 69 44 22 2c 20 22 22 29 } //01 00  = Replace("https://tactoconsciente.net/wp-content/plugins/js_composWHx iDer/config/buttons/L9O4Klc8WHx iD1ecL.php", "WHx iD", "")
		$a_01_6 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 6f 75 72 63 6f 6d 6d 2e 63 6f 2e 75 6b 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 6c 34 34 23 34 67 69 6e 73 2f 62 75 64 64 79 62 6f 73 73 2d 6c 34 34 23 34 70 6c 61 74 66 6f 72 6d 2f 6c 34 34 23 34 62 70 2d 6d 6f 64 65 72 61 74 69 6f 6e 2f 63 6c 61 73 6c 34 34 23 34 6c 34 34 23 34 73 65 73 2f 53 58 44 65 74 6b 6c 34 34 23 34 67 73 6e 50 50 2e 70 68 70 22 2c 20 22 6c 34 34 23 34 22 2c 20 22 22 29 } //01 00  = Replace("https://ourcomm.co.uk/wp-content/plul44#4gins/buddyboss-l44#4platform/l44#4bp-moderation/clasl44#4l44#4ses/SXDetkl44#4gsnPP.php", "l44#4", "")
		$a_01_7 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 62 72 61 6e 64 73 69 74 65 73 2e 67 75 6e 77 65 62 68 6f 73 74 69 6e 67 2e 63 6f 6d 2e 61 75 2f 73 69 74 65 2f 77 70 2d 69 6e 63 58 49 6c 53 59 4a 6c 75 64 65 73 2f 54 65 78 74 2f 44 69 66 66 2f 45 6e 67 69 6e 65 2f 65 55 68 65 62 76 69 54 53 4f 7a 44 5a 2e 70 68 70 22 2c 20 22 58 49 6c 53 59 4a 22 2c 20 22 22 29 } //01 00  = Replace("https://brandsites.gunwebhosting.com.au/site/wp-incXIlSYJludes/Text/Diff/Engine/eUhebviTSOzDZ.php", "XIlSYJ", "")
		$a_01_8 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 61 64 65 67 74 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 43 2c 36 58 25 58 35 64 65 73 2f 73 6f 64 69 75 6d 5f 63 6f 43 2c 36 58 25 58 35 6d 70 61 74 2f 6e 61 6d 65 73 70 61 63 65 64 2f 43 6f 72 65 2f 43 68 61 43 68 61 32 30 2f 65 44 4b 67 6f 69 5a 6f 76 38 32 46 54 2e 70 68 70 22 2c 20 22 43 2c 36 58 25 58 35 22 2c 20 22 22 29 } //01 00  = Replace("https://adegt.com/wp-incluC,6X%X5des/sodium_coC,6X%X5mpat/namespaced/Core/ChaCha20/eDKgoiZov82FT.php", "C,6X%X5", "")
		$a_01_9 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 61 64 65 30 53 21 39 41 70 67 74 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 73 6f 64 69 75 6d 5f 63 6f 6d 70 61 74 2f 6e 61 30 53 21 39 41 70 6d 65 73 70 61 63 65 64 2f 43 6f 72 65 2f 43 68 61 43 68 61 32 30 2f 65 44 30 53 21 39 41 70 4b 67 6f 69 5a 6f 76 38 32 46 54 2e 70 68 70 22 2c 20 22 30 53 21 39 41 70 22 2c 20 22 22 29 } //01 00  = Replace("https://ade0S!9Apgt.com/wp-includes/sodium_compat/na0S!9Apmespaced/Core/ChaCha20/eD0S!9ApKgoiZov82FT.php", "0S!9Ap", "")
		$a_01_10 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 64 69 6e 72 61 74 6e 65 77 73 2e 6e 65 74 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 75 70 6c 6f 61 64 73 2f 32 30 32 30 2f 4c 2b 2a 7c 62 30 35 2f 74 68 4c 2b 2a 7c 62 75 6d 62 6e 61 69 6c 73 2f 62 72 43 79 52 75 6d 6a 2e 70 68 70 22 2c 20 22 4c 2b 2a 7c 62 22 2c 20 22 22 29 } //01 00  = Replace("https://dinratnews.net/wp-content/uploads/2020/L+*|b05/thL+*|bumbnails/brCyRumj.php", "L+*|b", "")
		$a_01_11 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 6c 61 62 72 69 65 2d 6c 7c 70 2c 41 6f 75 73 61 62 65 74 74 65 2e 63 6f 6c 7c 70 2c 41 6f 75 6d 2f 6c 7c 70 2c 41 6f 75 77 70 2d 69 6e 63 6c 75 64 65 73 2f 73 6f 64 69 75 6d 5f 63 6c 7c 70 2c 41 6f 75 6f 6d 70 61 74 2f 6e 61 6d 65 6c 7c 70 2c 41 6f 75 73 70 61 63 65 64 2f 43 6f 72 65 2f 43 68 61 43 68 61 32 30 2f 67 70 35 79 48 72 42 70 2e 6c 7c 70 2c 41 6f 75 70 68 70 22 2c 20 22 6c 7c 70 2c 41 6f 75 22 2c 20 22 22 29 } //01 00  = Replace("https://labrie-l|p,Aousabette.col|p,Aoum/l|p,Aouwp-includes/sodium_cl|p,Aouompat/namel|p,Aouspaced/Core/ChaCha20/gp5yHrBp.l|p,Aouphp", "l|p,Aou", "")
		$a_01_12 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 62 79 63 65 63 2e 69 6e 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 6a 73 2f 74 69 6e 79 6d 63 65 2f 79 57 29 4f 6e 70 6c 75 67 69 6e 73 2f 63 68 61 72 6d 61 70 2f 31 4d 52 57 52 79 57 29 4f 6e 41 38 7a 32 53 32 41 79 57 29 4f 6e 6a 76 2e 70 68 70 22 2c 20 22 79 57 29 4f 6e 22 2c 20 22 22 29 } //01 00  = Replace("https://bycec.in/wp-includes/js/tinymce/yW)Onplugins/charmap/1MRWRyW)OnA8z2S2AyW)Onjv.php", "yW)On", "")
		$a_01_13 = {3d 20 52 65 70 6c 61 63 65 28 22 6e 70 52 3e 25 39 70 68 74 74 70 73 3a 2f 2f 74 68 65 6c 6f 74 74 65 72 79 2e 69 6f 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 74 68 65 6d 65 73 6e 70 52 3e 25 39 70 2f 74 77 65 6e 74 79 74 77 65 6e 6e 70 52 3e 25 39 70 74 79 6f 6e 65 6e 70 52 3e 25 39 70 2f 74 65 6d 70 6c 61 74 65 2d 70 61 6e 70 52 3e 25 39 70 72 74 73 2f 63 6f 6e 74 65 6e 74 2f 44 78 70 7a 71 34 4e 54 47 68 2e 70 68 70 22 2c 20 22 6e 70 52 3e 25 39 70 22 2c 20 22 22 29 } //01 00  = Replace("npR>%9phttps://thelottery.io/wp-content/themesnpR>%9p/twentytwennpR>%9ptyonenpR>%9p/template-panpR>%9prts/content/Dxpzq4NTGh.php", "npR>%9p", "")
		$a_01_14 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 4b 26 4c 56 3d 73 3a 2f 2f 6f 75 72 63 6f 6d 6d 2e 63 6f 2e 75 6b 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 62 75 64 64 79 62 6f 73 73 2d 70 6c 61 74 66 6f 72 6d 2f 62 70 2d 6d 6f 64 65 72 61 74 69 6f 6e 2f 63 6c 61 4b 26 4c 56 3d 73 73 65 73 2f 53 58 44 65 74 6b 67 73 6e 50 50 2e 70 68 70 22 2c 20 22 4b 26 4c 56 3d 22 2c 20 22 22 29 } //01 00  = Replace("httpK&LV=s://ourcomm.co.uk/wp-content/plugins/buddyboss-platform/bp-moderation/claK&LV=sses/SXDetkgsnPP.php", "K&LV=", "")
		$a_01_15 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 6d 65 6e 75 69 73 65 72 69 65 2d 6c 65 6d 29 61 29 68 32 78 6f 69 6e 65 29 61 29 68 32 78 2e 62 7a 29 61 29 68 32 78 68 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 74 68 65 6d 65 73 2f 74 77 65 6e 74 79 6e 69 6e 65 74 65 29 61 29 68 32 78 65 6e 2f 74 65 6d 70 6c 61 74 65 2d 70 61 72 74 73 2f 63 6f 6e 29 61 29 68 32 78 74 65 6e 74 2f 78 30 58 78 45 48 57 47 64 65 79 50 42 45 29 61 29 68 32 78 6a 2e 70 68 70 22 2c 20 22 29 61 29 68 32 78 22 2c 20 22 22 29 } //01 00  = Replace("https://menuiserie-lem)a)h2xoine)a)h2x.bz)a)h2xh/wp-content/themes/twentyninete)a)h2xen/template-parts/con)a)h2xtent/x0XxEHWGdeyPBE)a)h2xj.php", ")a)h2x", "")
		$a_01_16 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 73 68 61 6e 74 69 6a 6f 73 65 70 68 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 74 68 65 6d 65 73 2f 74 77 65 6e 74 79 73 65 76 65 6e 74 65 65 6e 2f 74 65 6d 70 6c 61 74 65 2d 70 61 72 74 73 2f 66 6f 6f 74 38 70 41 59 62 70 65 72 2f 52 53 4d 4d 6c 65 76 72 2e 70 68 70 22 2c 20 22 38 70 41 59 62 70 22 2c 20 22 22 29 } //01 00  = Replace("https://shantijoseph.com/wp-content/themes/twentyseventeen/template-parts/foot8pAYbper/RSMMlevr.php", "8pAYbp", "")
		$a_01_17 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 76 69 74 69 6c 69 67 6f 6d 61 74 63 68 2e 63 6f 6d 2f 77 70 76 69 74 69 6c 69 67 6f 6d 61 74 63 68 2f 77 70 2d 24 5a 26 6f 3d 69 6e 63 6c 75 64 65 73 2f 63 73 73 2f 64 69 73 74 2f 62 6c 6f 63 6b 2d 64 69 72 65 63 74 6f 72 79 2f 51 61 4c 55 49 55 6b 78 6f 6d 58 2e 70 68 70 22 2c 20 22 24 5a 26 6f 3d 22 2c 20 22 22 29 } //00 00  = Replace("https://vitiligomatch.com/wpvitiligomatch/wp-$Z&o=includes/css/dist/block-directory/QaLUIUkxomX.php", "$Z&o=", "")
	condition:
		any of ($a_*)
 
}