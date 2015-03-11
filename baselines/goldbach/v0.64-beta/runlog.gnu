 Active levels:           30
 Levels allocated in memory:           60
netcdf data_pointer {
dimensions:
	nt = 30 ;
	nw = 31 ;
	ncol = 2 ;
variables:
	double zw(nw) ;
		zw:long_name = "depth to interface" ;
		zw:positive = "up" ;
		zw:units = "m" ;
	double Tdiff(nw, ncol) ;
		Tdiff:long_name = "tracer diffusivity" ;
		Tdiff:units = "m^2/s" ;
data:

 Tdiff =
  1.0745305021676e-05, 3.0180904148341e-05,
  1.09881504915211e-05, 3.03815156234304e-05,
  1.12701407772417e-05, 3.06144641203301e-05,
  1.16015270366266e-05, 3.08882179867785e-05,
  1.19964621542569e-05, 3.12144687361252e-05,
  1.24750392487929e-05, 3.16098150316116e-05,
  1.30667457673832e-05, 3.20986160687079e-05,
  1.38166161018559e-05, 3.27180741710984e-05,
  1.47968690090273e-05, 3.35278483118052e-05,
  1.61305887790165e-05, 3.46296168174484e-05,
  1.80444531050101e-05, 3.6210635173704e-05,
  2.09998452516924e-05, 3.8652046077485e-05,
  2.60626637299659e-05, 4.2834374385624e-05,
  3.60226387193249e-05, 5.10621798116162e-05,
  5.68986438802262e-05, 6.83075753793173e-05,
  8.37563425412278e-05, 9.04943699253621e-05,
  9.91621201822039e-05, 0.000103220881889647,
  0.000106481843321686, 0.000109267609700523,
  0.000110441259876703, 0.000112538432072059,
  0.000112868490439536, 0.000114543535580486,
  0.000114495483963598, 0.000115887573709059,
  0.000115657762809393, 0.000116847717103411,
  0.000116527936399381, 0.00011756655615601,
  0.000117203126861954, 0.00011812432219031,
  0.000117741928123486, 0.000118569418884619,
  0.00011818169816888, 0.000118932707182988,
  0.000118547343345875, 0.000119234761894418,
  0.00011885609029607, 0.000119489813722841,
  0.000119120225896568, 0.000119708012697165,
  0.000119348745176666, 0.000119896789493768,
  0.00011954838222005, 0.000120061707051346 ;
}
 Active levels:          122
 Levels allocated in memory:          150
netcdf data {
dimensions:
	nt = 122 ;
	nw = 123 ;
	ncol = 2 ;
variables:
	double Rrho(nt) ;
		Rrho:long_name = "double diffusion stratification parameter" ;
		Rrho:units = "unitless" ;
	double Tdiff(nw, ncol) ;
		Tdiff:long_name = "temperature diffusivity" ;
		Tdiff:units = "m^2/s" ;
	double Sdiff(nw, ncol) ;
		Sdiff:long_name = "salinity diffusivity" ;
		Sdiff:units = "m^2/s" ;
data:

 Tdiff =
  7e-05, 7e-05,
  6.99280082332745e-05, 6.99280082332745e-05,
  6.97123291277452e-05, 6.97123291277452e-05,
  6.93538502510156e-05, 6.93538502510156e-05,
  6.88540474946331e-05, 6.88540474946331e-05,
  6.82149799924011e-05, 6.82149799924011e-05,
  6.74392830060157e-05, 6.74392830060157e-05,
  6.6530158778028e-05, 6.6530158778028e-05,
  6.54913653521304e-05, 6.54913653521304e-05,
  6.43272033607682e-05, 6.43272033607682e-05,
  6.30425007800762e-05, 6.30425007800762e-05,
  6.16425956521397e-05, 6.16425956521397e-05,
  6.01333167745808e-05, 6.01333167745808e-05,
  5.8520962357469e-05, 5.8520962357469e-05,
  5.68122766475575e-05, 5.68122766475575e-05,
  5.50144245198432e-05, 5.50144245198432e-05,
  5.31349640364529e-05, 5.31349640364529e-05,
  5.11818169728531e-05, 5.11818169728531e-05,
  4.91632373113854e-05, 4.91632373113854e-05,
  4.70877777021268e-05, 4.70877777021268e-05,
  4.49642538910739e-05, 4.49642538910739e-05,
  4.28017071156535e-05, 4.28017071156535e-05,
  4.06093644675566e-05, 4.06093644675566e-05,
  3.83965972228982e-05, 3.83965972228982e-05,
  3.61728771397013e-05, 3.61728771397013e-05,
  3.39477307227064e-05, 3.39477307227064e-05,
  3.17306914555053e-05, 3.17306914555053e-05,
  2.953125e-05, 2.953125e-05,
  2.73588023631863e-05, 2.73588023631863e-05,
  2.52225960312627e-05, 2.52225960312627e-05,
  2.31316740710634e-05, 2.31316740710634e-05,
  2.10948171988169e-05, 2.10948171988169e-05,
  1.91204838162289e-05, 1.91204838162289e-05,
  1.72167480138905e-05, 1.72167480138905e-05,
  1.53912355420108e-05, 1.53912355420108e-05,
  1.36510577484745e-05, 1.36510577484745e-05,
  1.2002743484225e-05, 1.2002743484225e-05,
  1.04521689759708e-05, 1.04521689759708e-05,
  9.00448566621885e-06, 9.00448566621885e-06,
  7.6640460206307e-06, 7.6640460206307e-06,
  6.43432730270495e-06, 6.43432730270495e-06,
  5.31785331578385e-06, 5.31785331578385e-06,
  4.316114112385e-06, 4.316114112385e-06,
  3.42948367085781e-06, 3.42948367085781e-06,
  2.65713553936482e-06, 2.65713553936482e-06,
  1.99695644718793e-06, 1.99695644718793e-06,
  1.44545788335939e-06, 1.44545788335939e-06,
  9.97685642617756e-07, 9.97685642617756e-07,
  6.47127338688582e-07, 6.47127338688582e-07,
  3.85617884890053e-07, 3.85617884890053e-07,
  2.03242942063395e-07, 2.03242942063395e-07,
  8.82403338282132e-08, 8.82403338282132e-08,
  2.68994291626117e-08, 2.68994291626117e-08,
  3.45849230821139e-09, 3.45849230821139e-09,
  0, 0,
  0, 0,
  0, 0,
  0, 0,
  0, 0,
  0, 0,
  0, 0,
  0.000135646864377777, 1.305e-05,
  9.48356984161068e-05, 1.1190329828233e-05,
  6.81754455562318e-05, 9.77851315017373e-06,
  5.02848524014832e-05, 8.67172923833356e-06,
  3.79779617769683e-05, 7.78177251239948e-06,
  2.93164342080289e-05, 7.05129132726952e-06,
  2.30907299690852e-05, 6.44141900978804e-06,
  1.85280891027853e-05, 5.92490327091138e-06,
  1.51238523533713e-05, 5.48208244708997e-06,
  1.25416382401605e-05, 5.09842298251266e-06,
  1.05529139748282e-05, 4.76295526081961e-06,
  8.99962863489199e-06, 4.46724786909601e-06,
  7.77064225969311e-06, 4.20471609405876e-06,
  6.78657682357633e-06, 3.97014431880343e-06,
  5.98990745874806e-06, 3.7593490263708e-06,
  5.33837334249312e-06, 3.56893644839952e-06,
  4.80052745726719e-06, 3.39612528256865e-06,
  4.35268660280451e-06, 3.2386150021219e-06,
  3.97681202183847e-06, 3.09448666259828e-06,
  3.65901738079634e-06, 2.9621272348308e-06,
  3.38850539955907e-06, 2.8401712127536e-06,
  3.15680111587e-06, 2.72745507129012e-06,
  2.95719291905377e-06, 2.62298139752569e-06,
  2.78432078380048e-06, 2.52589038419471e-06,
  2.63386992982584e-06, 2.43543698385942e-06,
  2.50234077039108e-06, 2.35097245669068e-06,
  2.38687460853738e-06, 2.27192935844192e-06,
  2.28512045174688e-06, 2.19780924423442e-06,
  2.19513242465995e-06, 2.12817253277057e-06,
  2.11529014410512e-06, 2.06263010153625e-06,
  2.04423646531592e-06, 2.0008362782846e-06,
  1.9808284707533e-06, 1.94248296597139e-06,
  1.92409862832281e-06, 1.88729469329569e-06,
  1.87322381372824e-06, 1.83502442538675e-06,
  1.82750045500746e-06, 1.78545000209192e-06,
  1.78632447366843e-06, 1.73837109705511e-06,
  1.74917500688047e-06, 1.69360661102792e-06,
  1.71560112766811e-06, 1.65099242889266e-06,
  1.68521095557936e-06, 1.61037948265018e-06,
  1.65766268367984e-06, 1.5716320728564e-06,
  1.63265714971221e-06, 1.53462640922989e-06,
  1.60993165771287e-06, 1.49924933781997e-06,
  1.58925481707568e-06, 1.46539722754671e-06,
  1.57042221327346e-06, 1.4329749933537e-06,
  1.55325276138132e-06, 1.40189523684933e-06,
  1.53758562258103e-06, 1.37207748830727e-06,
  1.5232775867644e-06, 1.34344753637537e-06,
  1.51020084256258e-06, 1.31593683390034e-06,
  1.49824107064847e-06, 1.28948196999174e-06,
  1.48729580778995e-06, 1.26402419988453e-06,
  1.47727303848656e-06, 1.23950902536497e-06,
  1.46808997857784e-06, 1.21588581953987e-06,
  1.45967202133874e-06, 1.19310749058749e-06,
  1.45195182156355e-06, 1.17113017985522e-06,
  1.44486849721469e-06, 1.149912990288e-06,
  1.43836693155203e-06, 1.12941774169798e-06,
  1.43239716140678e-06, 1.10960874983708e-06,
  1.42691383953198e-06, 1.09045262661991e-06,
  1.42187576083958e-06, 1.0719180991769e-06,
  1.41724544389463e-06, 1.05397584570305e-06,
  1.41298876033669e-06, 1.03659834631519e-06,
  0, 0 ;

 Sdiff =
  0.0001, 0.0001,
  9.98971546189636e-05, 9.98971546189636e-05,
  9.95890416110646e-05, 9.95890416110646e-05,
  9.90769289300223e-05, 9.90769289300223e-05,
  9.83629249923331e-05, 9.83629249923331e-05,
  9.74499714177159e-05, 9.74499714177159e-05,
  9.63418328657367e-05, 9.63418328657367e-05,
  9.50430839686114e-05, 9.50430839686114e-05,
  9.35590933601862e-05, 9.35590933601862e-05,
  9.18960048010974e-05, 9.18960048010974e-05,
  9.00607154001088e-05, 9.00607154001088e-05,
  8.80608509316282e-05, 8.80608509316282e-05,
  8.59047382494012e-05, 8.59047382494012e-05,
  8.36013747963843e-05, 8.36013747963843e-05,
  8.11603952107964e-05, 8.11603952107964e-05,
  7.85920350283475e-05, 7.85920350283475e-05,
  7.5907091480647e-05, 7.5907091480647e-05,
  7.31168813897902e-05, 7.31168813897902e-05,
  7.02331961591221e-05, 7.02331961591221e-05,
  6.72682538601811e-05, 6.72682538601811e-05,
  6.42346484158198e-05, 6.42346484158198e-05,
  6.11452958795049e-05, 6.11452958795049e-05,
  5.80133778107951e-05, 5.80133778107951e-05,
  5.48522817469974e-05, 5.48522817469974e-05,
  5.16755387710019e-05, 5.16755387710019e-05,
  4.84967581752949e-05, 4.84967581752949e-05,
  4.53295592221505e-05, 4.53295592221505e-05,
  4.21875e-05, 4.21875e-05,
  3.90840033759804e-05, 3.90840033759804e-05,
  3.6032280044661e-05, 3.6032280044661e-05,
  3.30452486729477e-05, 3.30452486729477e-05,
  3.0135453141167e-05, 3.0135453141167e-05,
  2.7314976880327e-05, 2.7314976880327e-05,
  2.45953543055579e-05, 2.45953543055579e-05,
  2.19874793457297e-05, 2.19874793457297e-05,
  1.95015110692493e-05, 1.95015110692493e-05,
  1.71467764060356e-05, 1.71467764060356e-05,
  1.49316699656726e-05, 1.49316699656726e-05,
  1.28635509517412e-05, 1.28635509517412e-05,
  1.09486371723296e-05, 1.09486371723296e-05,
  9.19189614672135e-06, 9.19189614672135e-06,
  7.59693330826264e-06, 7.59693330826264e-06,
  6.16587730340715e-06, 6.16587730340715e-06,
  4.89926238693972e-06, 4.89926238693972e-06,
  3.79590791337832e-06, 3.79590791337832e-06,
  2.85279492455418e-06, 2.85279492455418e-06,
  2.06493983337056e-06, 2.06493983337056e-06,
  1.42526520373965e-06, 1.42526520373965e-06,
  9.24467626697974e-07, 9.24467626697974e-07,
  5.50882692700075e-07, 5.50882692700075e-07,
  2.90347060090565e-07, 2.90347060090565e-07,
  1.2605761975459e-07, 1.2605761975459e-07,
  3.84277559465881e-08, 3.84277559465881e-08,
  4.94070329744484e-09, 4.94070329744484e-09,
  0, 0,
  0, 0,
  0, 0,
  0, 0,
  0, 0,
  0, 0,
  0, 0,
  0.000135646864377777, 1.305e-05,
  7.19514320591767e-05, 8.49005458707247e-06,
  3.90697745687636e-05, 5.60384022836879e-06,
  2.14144112813213e-05, 3.6929605549455e-06,
  1.16307507941965e-05, 2.38316783192234e-06,
  6.0726899430917e-06, 1.46062463207726e-06,
  2.85595870670265e-06, 7.96701824894837e-07,
  1.35571383678917e-06, 4.33529507627662e-07,
  1.03117175136622e-06, 3.73778348665225e-07,
  8.00530100435776e-07, 3.25431254202936e-07,
  6.33174838489693e-07, 2.85777315649177e-07,
  5.0941294159766e-07, 2.52863086929963e-07,
  4.16284406769274e-07, 2.25252647896005e-07,
  3.45080177469983e-07, 2.01871745023903e-07,
  2.89834231874906e-07, 1.81903985146974e-07,
  2.46386461961221e-07, 1.64720143772286e-07,
  2.11787976055905e-07, 1.49829056583911e-07,
  1.83916335329768e-07, 1.36842887413601e-07,
  1.61222108993451e-07, 1.25452161997228e-07,
  1.42559118732325e-07, 1.15407554603797e-07,
  1.27068952483465e-07, 1.0650642047826e-07,
  1.14101245151928e-07, 9.85827134201249e-08,
  1.03157892525132e-07, 9.14993510764776e-08,
  9.38535095663084e-08, 8.51423725009453e-08,
  8.58870629291036e-08, 7.94164233867203e-08,
  7.90212874860341e-08, 7.42412354744425e-08,
  7.30675900572668e-08, 6.95488579114875e-08,
  6.78748649033728e-08, 6.52814627000322e-08,
  6.33211276344217e-08, 6.13895922914589e-08,
  5.93072003020128e-08, 5.78307505103621e-08,
  5.5751903599525e-08, 5.45682621350345e-08,
  5.25883664801762e-08, 5.15703442293289e-08,
  4.97611714221417e-08, 4.88093455162678e-08,
  4.72241297578547e-08, 4.62611199677331e-08,
  4.4938535778872e-08, 4.3904508248162e-08,
  4.28717873680423e-08, 4.17209063293227e-08,
  4.09962892237609e-08, 3.96939049459668e-08,
  3.92885754427811e-08, 3.78089869212059e-08,
  3.772860348312e-08, 3.60532719996308e-08,
  3.62991828543031e-08, 3.44153008654686e-08,
  3.49855103509759e-08, 3.28848516263548e-08,
  3.37747900219482e-08, 3.14527833109085e-08,
  3.26559208988153e-08, 3.01109019358912e-08,
  3.16192391934254e-08, 2.88518455037658e-08,
  3.06563045009471e-08, 2.76689849378158e-08,
  2.97597217273747e-08, 2.65563384833665e-08,
  2.89229921537545e-08, 2.55084975261146e-08,
  2.81403883707313e-08, 2.45205621223665e-08,
  2.74068488533256e-08, 2.3588084816922e-08,
  2.67178887626938e-08, 2.27070215548119e-08,
  2.60695242085863e-08, 2.18736886829112e-08,
  2.54582077210031e-08, 2.10847251943331e-08,
  2.48807730910012e-08, 2.03370594986504e-08,
  2.43343880708975e-08, 1.96278801093054e-08,
  2.38165136903521e-08, 1.89546097300219e-08,
  2.33248691603031e-08, 1.83148822978051e-08,
  2.28574015118103e-08, 1.77065226037831e-08,
  2.24122592596646e-08, 1.71275281668049e-08,
  2.19877694975193e-08, 1.65760530800552e-08,
  2.15824179273295e-08, 1.60503935893866e-08,
  2.11948314050503e-08, 1.55489751947278e-08,
  0, 0 ;
}
 Active levels:           30
 Levels allocated in memory:           60
 
 Parameters Used in LMD test
 ----
 KPP_nu_zero =   5.00000000000000010E-003
 KPP_Ri_zero =   0.69999999999999996     
 KPP_exp =    3.0000000000000000     
 
 Parameters Used in PP test
 ----
 PP_nu_zero =   5.00000000000000010E-003
 PP_alpha =    5.0000000000000000     
 PP_exp =    2.0000000000000000     
netcdf data_LMD {
dimensions:
	nt = 30 ;
	nw = 31 ;
variables:
	double ShearRichardson(nw) ;
		ShearRichardson:long_name = "Richardson number" ;
		ShearRichardson:units = "unitless" ;
	double Tdiff(nw) ;
		Tdiff:long_name = "temperature diffusivity" ;
		Tdiff:units = "m^2/s" ;
data:

 Tdiff = 0.005, 0.00496606346461676, 0.0048651759008665, 0.0047000824486396, 
    0.00447528838339325, 0.00419695417961132, 0.00387274859964811, 
    0.0035116598079561, 0.00312376451069764, 0.00271995512074051, 
    0.00231162494803747, 0.00191031141538977, 0.00152729729959456, 
    0.00117316999797624, 0.000857338820301783, 0.00058751030607995, 
    0.000369121567244483, 0.000204731656221225, 9.33709593791701e-05, 
    2.98486158654651e-05, 4.01796182434318e-06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ;
}
netcdf data_PP1d {
dimensions:
	nt = 30 ;
	nw = 31 ;
variables:
	double ShearRichardson(nw) ;
		ShearRichardson:long_name = "Richardson number" ;
		ShearRichardson:units = "unitless" ;
	double Mdiff(nw) ;
		Mdiff:long_name = "momentum diffusivity" ;
		Mdiff:units = "m^2/s" ;
data:

 Mdiff = 0.005, 0.0036734693877551, 0.0028125, 0.00222222222222222, 0.0018, 
    0.00148760330578512, 0.00125, 0.00106508875739645, 0.000918367346938776, 
    0.0008, 0.000703125, 0.000622837370242215, 0.000555555555555556, 
    0.000498614958448754, 0.00045, 0.000408163265306123, 
    0.000371900826446281, 0.000340264650283554, 0.0003125, 0.000288, 
    0.000266272189349112, 0.000246913580246914, 0.000229591836734694, 
    0.000214030915576694, 0.0002, 0.000187304890738814, 0.00017578125, 
    0.000165289256198347, 0.000155709342560554, 0.000146938775510204, 
    0.000138888888888889 ;
}
Looking for gx1v6_130522.nc...
Found!
Looking for gx1v6_physics_130523.nc...
Found!
Looking for tidal_energy_gx1v6_20130512.nc...
Found!
 Grid dimensions
 ---------------
 nlon = 320
 nlat = 384
 max_nlev = 60
 
 Namelist variables
 ------------------
 mix_scheme = Simmons
 efficiency =   0.20000000000000001     
 vertical_decay_scale =    500.00000000000000     
 max_coefficient =   1.00000000000000002E-002
 local_mixing_frac =   0.33000000000000002     
 depth_cutoff =    0.0000000000000000     
netcdf single_col {
dimensions:
	nt = 49 ;
	nw = 50 ;
variables:
	double zw(nw) ;
		zw:long_name = "height at interface" ;
		zw:positive = "up" ;
		zw:units = "m" ;
	double Tdiff(nw) ;
		Tdiff:long_name = "tracer diffusivity" ;
		Tdiff:units = "m^2/s" ;

// global attributes:
		:column_lon = "49.44 E" ;
		:column_lat = "11.62 S" ;
data:

 Tdiff = 0, 3.54733202948907e-06, 1.05587768768701e-06, 5.73757655737762e-07, 
    4.89429854822692e-07, 5.18070247260882e-07, 5.50206687887568e-07, 
    5.72901509964571e-07, 5.66421336799332e-07, 5.93710386209296e-07, 
    6.69244887135742e-07, 7.54947822938077e-07, 7.86189798275004e-07, 
    1.05877785429319e-06, 1.09767631296617e-06, 1.20156966996553e-06, 
    1.31835476345052e-06, 1.36631489645088e-06, 1.41833536649984e-06, 
    1.47556358931718e-06, 1.76933971638278e-06, 1.92230012883183e-06, 
    2.02046800950895e-06, 2.22576722433332e-06, 4.15341677634666e-06, 
    4.39787362629559e-06, 5.35083378939977e-06, 9.66422807188729e-06, 
    1.03927072227029e-05, 1.12830920604145e-05, 1.34725019438867e-05, 
    1.90831946063235e-05, 2.12803960351587e-05, 2.01109162025079e-05, 
    2.09266309119069e-05, 3.18286161159233e-05, 4.39947393443853e-05, 
    4.75984552985785e-05, 0.000158435306891073, 0.000111871198677933, 
    0.000100122598404959, 0.000210928436905418, 0.000312622087338809, 
    0.000630029075006049, 0.000912501242710934, 0.00237179865604339, 
    0.00509555515228359, 0.00838696555347729, 0.01, 0 ;
}
 Test 1: determining OBL depth
 ----------
 OBL depth =    17.436902811724739     
 kw of interface above OBL depth =            2
 kt of cell center above OBL depth =            2
 
 Test 2: Computing G(sigma)
 ----------
 Coefficients are:   0.000  1.000 -2.000  1.000
 
 Test 3: determining phi_m and phi_s (inversely proportional to w_m and w_s, respectively)
 ----------
 Coefficients for computing phi_m and phi_s:
 a_m =    1.2573615701844176     
 c_m =    8.3824104678961167     
 a_s =   -28.861739379323623     
 c_s =    98.954535014823847     
 Done! Data is stored in test3.nc, run plot_flux_profiles.ncl to see output.
 
 Test 4: Computing Diffusivity in boundary layer
         (2 cases - boundary layer above and below cell center)
 ----------
 OBL_depth =    11.250000000000000     
 kOBL_depth =    3.2500000000000000     
 Height and Diffusivity throughout column: 
  -0.00  1.00000
  -5.00  0.00273
 -10.00  0.00022
 -15.00  0.00000
 -20.00  0.00000
 -25.00  0.00000
 
 OBL_depth =    13.750000000000000     
 kOBL_depth =    3.7500000000000000     
 Height and Diffusivity throughout column: 
  -0.00  1.00000
  -5.00  0.00293
 -10.00  0.00108
 -15.00  0.00018
 -20.00  0.00000
 -25.00  0.00000
 
 Test 5: Computing Bulk Richardson number
 ----------
  -2.5000000000000000        0.0000000000000000     
  -7.5000000000000000        0.0000000000000000     
  -12.500000000000000        0.0000000000000000     
  -17.500000000000000       0.69315854868097126     
  -22.500000000000000        2.8027279542972425     
  -27.500000000000000        4.6498619223254929     
  -32.500000000000000        5.9957729369547081     
  -37.500000000000000        6.9400904214280787     
  -42.500000000000000        7.6130420877582754     
  -47.500000000000000        8.1038814329341502     
 OBL has depth of    14.664007070033817     
 Done! Data is stored in test5.nc, run plot_bulk_Rich.ncl to see output.
 
 Test 6: 2 simple tests for velocity scale
 ----------
 6a: Bf = 0 m^2/s^3 and u* = sqrt(tao/rho0)
                           =  1.39009609371383187E-002
     => w_m = w_s ~= vonkarman*u*
                   =  5.56038437485532801E-003
 w_m =   5.56038437485532801E-003
 w_s =   5.56038437485532801E-003
 
 6b: u* = 0 m/s and Bf = (grav*alpha/(rho0*Cp0))*Qnonpen
                       = -5.92973386386299205E-008
     => w_m = vonkarman * (-Bf * OBL_depth)^1/3 * (c_m*0.1*vonkarman)^1/3 m/s
            =   1.96908794643690342E-002
     => w_s = vonkarman * (-Bf * OBL_depth)^1/3 * (c_s*0.1*vonkarman)^1/3 m/s
            =   4.48353646932846961E-002
 w_m =   1.96908794643690342E-002
 w_s =   4.48353646932846961E-002
 
