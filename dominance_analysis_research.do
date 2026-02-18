capture program drop dominanalysis

program dominanalysis

args dvdv iviv

local control "female_w0 black_w0 white_w0 asian_w0 age_w0 tenure_w0 manager_w0 eduLevel_w0 married_w0"

local ProPRE "procog_w0 proemo_w0 probeh_w0 precog_w0 preemo_w0 prebeh_w0"

local variables "`iviv'"

pwcorr `dvdv' `control' `ProPRE' `iviv', listwise  

domin `dvdv' `control' `ProPRE' `iviv' , epsilon reg(regress) 

bootstrap, reps(1000): domin `dvdv' `control' `ProPRE' `iviv', epsilon reg(regress) 

estat bootstrap

end



*1 DV:MWS

dominanalysis workengage_w0 "mws_mot_w0 mws_cog_w0 mws_emo_w0 mws_beh_w0"
