ipas = {
	"west_style" => {
		"Stone_Brewing" =>[
			"Original Ipa",
			"Ruinten"],
		"Ballast_Point_Brewing" =>[[
			"Bigeye",
			"Sculpin"], ["Pineapple Sculpin","Grapefruit Sculpin","Mango Sculpin","Habenero Sculpin"]],
		"Coronado_Brewing" =>[
			"Islander"]
	},
	"east_style" => {
		"Stone_Brewing" =>[
			"Ruination"],
		"Ballast_Point_Brewing" =>[
			"Dorado",
			"Mantaray"],
		"Coronado_Brewing" =>[
			"Idiot",
			"Stingray"],
	},
}
puts ipas["west_style"]["Stone_Brewing"][0]
puts ipas["west_style"]["Ballast_Point_Brewing"][1][3]
puts ipas["west_style"]["Coronado_Brewing"]
puts ipas["west_style"]["Ballast_Point_Brewing"][0][1]
