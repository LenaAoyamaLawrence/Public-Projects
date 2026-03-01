
library(dplyr)
#library(devtools)
#install.packages("devtools")
#install_github("FredHasselman/casnet")
#install.packages("infotheo")

#install.packages("tseries")


# CRQA to EDA data
library(casnet)

# Control 

#DE
# Nach051121

#plot state space
plot(Nach051121_L1$SCR, Nach051121_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_Nach051121_L1 <- est_parameters(Nach051121_L1$SCR)
Params_Nach051121_L2 <- est_parameters(Nach051121_L2$SCR) 
 
emLag_Nach051121 <- median(Params_Nach051121_L1$optimLag, Params_Nach051121_L2$optimLag)
emDim_Nach051121 <- max(Params_Nach051121_L1$optimDim, Params_Nach051121_L2$optiomDim)

emLag_Nach051121
emDim_Nach051121

# unthresholded matrix

RM_Nach051121 <- rp(y1 = Nach051121_L1$SCR, y2 = Nach051121_L2$SCR, emDim = emDim_Nach051121, emLag = emLag_Nach051121)

# estimate radius
emRad_Nach051121 <- est_radius(RM = RM_Nach051121, targetValue = .05)$Radius

emRad_Nach051121

# Binary matrix => 5000 * 5000 matrix is still too large for the current TS
#RP_Nach051121 <- mat_di2bi(RM_Nach051121, emRad = emRad_Nach051121)

# Recurrence measures
#Measures_Nach051121 <- rp_measures(RP_Nach051121)


# Recurrence analysis with Python soution [PyRQA]

#install.packages("reticulate")
library(reticulate)


#reticulate::use_python_version(python3) not using anymore

#reticulate::use_python("/library/Frameworks/Python.framework/Versions/3.10/bin/python3")
#vEnv <- reticulate::virtualenv_create("r-reticulate", python = "/library/Frameworks/Python.framework/Versions/3.10/bin/python3")
#reticulate::virtualenv_install(envname = "r-reticulate", "pyrqa")

#remove the environment reticulate::virtualenv_remove("r-reticulate")

reticulate::use_virtualenv("r-reticulate", required = T)
pyrqa <- reticulate::import("pyrqa")

X_Nach051121 <- as.numeric(Nach051121_L1$SCR)

Y_Nach051121 <- as.numeric(Nach051121_L2$SCR)

#print(X_Nach051121) #for debugging

ts_x_Nach051121 <- pyrqa$time_series$TimeSeries(X_Nach051121, 
	embedding_dimension = as.integer(3), 
	time_delay = as.integer(20))
	
print(ts_x_Nach051121) # for debugging

ts_y_Nach051121 <- pyrqa$time_series$TimeSeries(Y_Nach051121, 
	embedding_dimension = as.integer(Params_Nach051121_L2$optimDim), 
	time_delay = as.integer(Params_Nach051121_L2$optimLag))

TS_Nach051121 <- list(ts_x_Nach051121, ts_y_Nach051121)

#time_series # for debugging

settings_Nach051121 <- pyrqa$settings$Settings(TS_Nach051121, 
	analysis_type = pyrqa$analysis_type$Cross, 
	neighbourhood = pyrqa$neighbourhood$FixedRadius(emRad_Nach051121), 
	similarity_measure = pyrqa$metric$EuclideanMetric, 
	theiler_corrector = 0) # Fixed radius shoud be bigger than 0, 0 is not allowed in pyrqa
 
computation_Nach051121 <- pyrqa$computation$RQAComputation$create(settings_Nach051121)

result_Nach051121 <- computation_Nach051121$run()

print(result_Nach051121)

pyrqa$image_generator$ImageGenerator$save_recurrence_plot(RPresult$recurrence_matrix_reverse, 'recurrence_plot_python.png')

#knitr::include_graphics("images/recurrence_plot_python.png")


# Nach091121

#plot state space
plot(Nach091121_L1$SCR, Nach091121_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach091121_L1 <- est_parameters(Nach091121_L1$SCR) 
Params_Nach091121_L2 <- est_parameters(Nach091121_L2$SCR) 

emLag_Nach091121 <- median(Params_Nach091121_L1$optimLag, Params_Nach091121_L2$optimLag)
emDim_Nach091121 <- max(Params_Nach091121_L1$optimDim, Params_Nach091121_L2$optiomDim)
 
# unthresholded matrix

RM_Nach091121 <- rp(y1 = Nach091121_L1$SCR, y2 = Nach091121_L2$SCRd, emDim = emDim_Nach091121, emLag = emLag_Nach091121)

# estimate radius
emRad_Nach091121 <- est_radius(RM = RM_Nach091121, targetValue = .05)$Radius

# Binary matrix
#RP_Nach091121 <- mat_di2bi(RM_Nach091121, emRad = emRad_Nach091121)

# Recurrence measures
#Measures_Nach091121 <- rp_measures(RP_Nach091121)



# Nach191121

#plot state space
plot(Nach191121_L1$SCR, Nach191121_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach191121_L1 <- est_parameters(Nach191121_L1$SCR) 
Params_Nach191121_L2 <- est_parameters(Nach191121_L2$SCR)

emLag_Nach191121 <- median(Params_Nach191121_L1$optimLag, Params_Nach191121_L2$optimLag)
emDim_Nach191121<- max(Params_Nach191121_L1$optimDim, Params_Nach191121_L2$optiomDim)

# unthresholded matrix

RM_Nach191121 <- rp(y1 = Nach191121_L1$SCR, y2 = Nach191121_L2$SCRd, emDim = emDim_Nach191121, emLag = emLag_Nach191121)

# estimate radius
emRad_Nach191121 <- est_radius(RM = RM_Nach191121, targetValue = .05)$Radius

# Binary matrix
#RP_Nach191121 <- mat_di2bi(RM_Nach191121, emRad = emRad_Nach191121)

# Recurrence measures
#Measures_Nach191121 <- rp_measures(RP_Nach191121)


# Nach261121

#plot state space
plot(Nach261121_L1$SCR, Nach261121_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach261121_L1 <- est_parameters(Nach261121_L1$SCR) 
Params_Nach261121_L2 <- est_parameters(Nach261121_L2$SCR)

emLag_Nach261121 <- median(Params_Nach261121_L1$optimLag, Params_Nach261121_L2$optimLag)
emDim_Nach261121<- max(Params_Nach261121_L1$optimDim, Params_Nach261121_L2$optiomDim)


# unthresholded matrix

RM_Nach261121 <- rp(y1 = Nach261121_L1$SCR, y2 = Nach261121_L2$SCRd, emDim = emDim_Nach261121, emLag = emLag_Nach261121)

# estimate radius
emRad_Nach261121 <- est_radius(RM = RM_Nach261121, targetValue = .05)$Radius

# Binary matrix
#RP_Nach261121 <- mat_di2bi(RM_Nach261121, emRad = emRad_Nach261121)

# Recurrence measures
#Measures_Nach261121 <- rp_measures(RP_Nach261121)
 

# Vor261121

#plot state space
plot(Vor261121_L1$SCR, Vor261121_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Vor261121_L1 <- est_parameters(Vor261121_L1$SCR) 
Params_Vor261121_L2 <- est_parameters(Vor261121_L2$SCR) 

emLag_Vor261121 <- median(Params_Vor261121_L1$optimLag, Params_Vor261121_L2$optimLag)
emDim_Vor261121<- max(Params_Vor261121_L1$optimDim, Params_Vor261121_L2$optiomDim)

# unthresholded matrix

RM_Vor261121 <- rp(y1 = Vor2611211_L1$SCR, y2 = Vor261121_L2$SCR, emDim = emDim_Vor261121, emLag = emLag_Vor261121)

# estimate radius
emRad_Vor261121 <- est_radius(RM = RM_Vor261121, targetValue = .05)$Radius

# Binary matrix
RP_Vor261121 <- mat_di2bi(RM_Vor261121, emRad = emRad_Vor261121)

# Recurrence measures
Measures_Vor261121 <- rp_measures(RP_Vor261121)


# Vor101221

#plot state space
plot(Vor101221_L1$SCR, Vor101221_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_Vor101221_L1 <- est_parameters(Vor101221_L1$SCR)
Params_Vor101221_L2 <- est_parameters(Vor101221_L2$SCR)

emLag_Vor101221 <- median(Params_Vor101221_L1$optimLag, Params_Vor101221_L2$optimLag)
emDim_Vor101221<- max(Params_Vor101221_L1$optimDim, Params_Vor101221_L2$optiomDim) 

# unthresholded matrix

RM_Vor101221 <- rp(y1 = Vor101221_L1$SCR, y2 = Vor101221_L2$SCR, emDim = emDim_Vor101221, emLag = emLag_Vor101221)

# estimate radius
emRad_Vor101221 <- est_radius(RM = RM_Vor101221, targetValue = .05)$Radius

# Binary matrix
RP_Vor101221 <- mat_di2bi(RM_Vor101221, emRad = emRad_Vor101221)

# Recurrence measures
Measures_Vor101221 <- rp_measures(RP_Vor101221)


# Nach040122

#plot state space
plot(Nach040122_L1$SCR, Nach040122_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_Nach040122_L1 <- est_parameters(Nach040122_L1$SCR)
Params_Nach040122_L2 <- est_parameters(Nach040122_L2$SCR) 

emLag_Nach040122 <- median(Params_Nach040122_L1$optimLag, Params_Nach040122_L2$optimLag)
emDim_Nach040122<- max(Params_Nach040122_L1$optimDim, Params_Nach040122_L2$optiomDim) 

# unthresholded matrix

RM_Nach040122 <- rp(y1 = Nach040122_L1$SCR, y2 = Nach040122_L2$SCR, emDim = emDim_Nach040122, emLag = emLag_Nach040122)

# estimate radius
emRad_Nach040122 <- est_radius(RM = RM_Nach040122, targetValue = .05)$Radius

# Binary matrix
RP_Nach040122 <- mat_di2bi(RM_Nach040122, emRad = emRad_Nach040122)

# Recurrence measures
Measures_Nach040122 <- rp_measures(RP_Nach040122)


# Nach110122

#plot state space
plot(Nach110122_L1$SCR, Nach110122_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_Nach110122_L1 <- est_parameters(Nach110122_L1$SCR) 
Params_Nach110122_L2 <- est_parameters(Nach110122_L2$SCR) 

emLag_Nach110122 <- median(Params_Nach110122_L1$optimLag, Params_Nach110122_L2$optimLag)
emDim_Nach110122<- max(Params_Nach110122_L1$optimDim, Params_Nach110122_L2$optiomDim) 

# unthresholded matrix

RM_Nach110122 <- rp(y1 = Nach110122_L1$SCR, y2 = Nach110122_L2$SCR, emDim = emDim_Nach110122, emLag = emLag_Nach110122)

# estimate radius
emRad_Nach110122 <- est_radius(RM = RM_Nach110122, targetValue = .05)$Radius

# Binary matrix
RP_Nach110122 <- mat_di2bi(RM_Nach110122, emRad = emRad_Nach110122)

# Recurrence measures
Measures_Nach110122 <- rp_measures(RP_Nach110122)



#EN
# PM191121

#plot state space
plot(PM191121_L1$SCR, PM191121_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_PM191121_L1 <- est_parameters(PM191121_L1$SCR) 
Params_PM191121_L2 <- est_parameters(PM191121_L2$SCR) 

emLag_PM191121 <- median(Params_PM191121_L1$optimLag, Params_PM191121_L2$optimLag)
emDim_PM191121<- max(Params_PM191121_L1$optimDim, Params_PM191121_L2$optiomDim) 

# unthresholded matrix

RM_PM191121 <- rp(y1 = PM191121_L1$SCR, y2 = PM191121_L2$SCR, emDim = emDim_PM191121, emLag = emLag_PM191121)

# estimate radius
emRad_PM191121 <- est_radius(RM = RM_PM191121, targetValue = .05)$Radius

# Binary matrix
RP_PM191121 <- mat_di2bi(RM_PM191121, emRad = emRad_PM191121)

# Recurrence measures
Measures_PM191121 <- rp_measures(RP_PM191121)


# Shared

#DE
# Nach140122

#plot state space
plot(Nach1401221_L1$SCR, Nach140122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach140122_L1 <- est_parameters(Nach140122_L1$SCR)
Params_Nach140122_L2 <- est_parameters(Nach140122_L2$SCR) 

emLag_Nach140122_L1 <- median(Params_Nach140122_L1$optimLag, Params_Nach140122_L2$optimLag)
emDim_Nach140122_L1<- max(Params_Nach140122_L1$optimDim, Params_Nach140122_L2$optiomDim) 

# unthresholded matrix

RM_Nach140122 <- rp(y1 = Nach140122_L1$SCR, y2 = Nach140122_L2$SCR, emDim = emDim_Nach140122, emLag = emLag_Nach140122)

# estimate radius
emRad_Nach140122 <- est_radius(RM = RM_Nach140122, targetValue = .05)$Radius

# Binary matrix
RP_Nach140122 <- mat_di2bi(RM_Nach140122, emRad = emRad_Nach140122)

# Recurrence measures
Measures_PM191121 <- rp_measures(RP_Nach140122)


# Nach180222

#plot state space
plot(Nach180222_L1$SCR, Nach140122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach180222_L1 <- est_parameters(Nach180222_L1$SCR) 
Params_Nach180222_L2 <- est_parameters(Nach180222_L2$SCR) 

emLag_Nach180222_L1 <- median(Params_Nach180222_L1$optimLag, Params_Nach180222_L2$optimLag)
emDim_Nach180222_L1<- max(Params_Nach180222_L1$optimDim, Params_Nach180222_L2$optiomDim) 

# unthresholded matrix

RM_Nach180222 <- rp(y1 = Nach180222_L1$SCR, y2 = Nach180222_L2$SCR, emDim = emDim_Nach180222, emLag = emLag_Nach180222)

# estimate radius
emRad_Nach180222 <- est_radius(RM = RM_Nach180222, targetValue = .05)$Radius

# Binary matrix
RP_Nach180222 <- mat_di2bi(RM_Nach180222, emRad = emRad_Nach180222)

# Recurrence measures
Measures_Nach180222 <- rp_measures(RP_Nach180222)


# Vor220222

#plot state space
plot(Vor220222_L1$SCR, Vor220222_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Vor220222_L1 <- est_parameters(Vor220222_L1$SCR) 
Params_Vor220222_L2 <- est_parameters(Vor220222_L2$SCR) 

emLag_Vor220222_L1 <- median(Params_Vor220222_L1$optimLag, Params_Vor220222_L2$optimLag)
emDim_Vor220222_L1<- max(Params_Vor220222_L1$optimDim, Params_Vor220222_L2$optiomDim) 

# unthresholded matrix

RM_Vor220222 <- rp(y1 = Vor220222_L1$SCR, y2 = Vor220222_L2$SCR, emDim = emDim_Vor220222, emLag = emLag_Vor220222)

# estimate radius
emRad_Vor220222 <- est_radius(RM = RM_Vor220222, targetValue = .05)$Radius

# Binary matrix
RP_Vor220222 <- mat_di2bi(RM_Vor220222, emRad = emRad_Vor220222)

# Recurrence measures
Measures_Vor220222 <- rp_measures(RP_Vor220222)

#EN
# AM180122

#plot state space
plot(AM180122_L1$SCR, AM180122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM180122_L1 <- est_parameters(AM180122_L1$SCR)
Params_AM180122_L2 <- est_parameters(AM180122_L2$SCR)

emLag_AM180122_L1 <- median(Params_AM180122_L1$optimLag, Params_AM180122_L2$optimLag)
emDim_AM180122_L1<- max(Params_AM180122_L1$optimDim, Params_AM180122_L2$optiomDim) 

# unthresholded matrix

RM_Vor220222 <- rp(y1 = Vor220222_L1$SCR, y2 = Vor220222_L2$SCR, emDim = emDim_Vor220222, emLag = emLag_Vor220222)

# estimate radius
emRad_Vor220222 <- est_radius(RM = RM_Vor220222, targetValue = .05)$Radius

# Binary matrix
RP_Vor220222 <- mat_di2bi(RM_Vor220222, emRad = emRad_Vor220222)

# Recurrence measures
Measures_Vor220222 <- rp_measures(RP_Vor220222)

AM180122_L1
AM180122_L2 

# AM210122

#plot state space
plot(AM210122_L1$SCR, AM210122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM210122_L1 <- est_parameters(AM210122_L1$SCR) 
Params_AM210122_L2 <- est_parameters(AM210122_L2$SCR) 

emLag_AM210122_L1 <- median(Params_AM210122_L1$optimLag, Params_AM210122_L2$optimLag)
emDim_AM210122_L1<- max(Params_AM210122_L1$optimDim, Params_AM210122_L2$optiomDim) 

# unthresholded matrix

RM_AM210122 <- rp(y1 = AM210122_L1$SCR, y2 = AM210122_L2$SCR, emDim = emDim_AM210122, emLag = emLag_AM210122)

# estimate radius
emRad_AM210122 <- est_radius(RM = RM_AM210122, targetValue = .05)$Radius

# Binary matrix
RP_AM210122 <- mat_di2bi(RM_AM210122, emRad = emRad_AM210122)

# Recurrence measures
Measures_AM210122 <- rp_measures(RP_AM210122)


# AM280122

#plot state space
plot(AM280122_L1$SCR, AM280122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM280122_L1 <- est_parameters(AM280122_L1$SCR) 
Params_AM280122_L2 <- est_parameters(AM280122_L2$SCR) 

emLag_AM280122_L1 <- median(Params_AM280122_L1$optimLag, Params_AM280122_L2$optimLag)
emDim_AM280122_L1<- max(Params_AM280122_L1$optimDim, Params_AM280122_L2$optiomDim) 

# unthresholded matrix

RM_AM280122 <- rp(y1 = AM280122_L1$SCR, y2 = AM280122_L2$SCR, emDim = emDim_AM280122, emLag = emLag_AM280122)

# estimate radius
emRad_AM280122 <- est_radius(RM = RM_AM280122, targetValue = .05)$Radius

# Binary matrix
RP_AM280122 <- mat_di2bi(RM_AM280122, emRad = emRad_AM280122)

# Recurrence measures
Measures_AM280122 <- rp_measures(RP_AM280122)

# AM010222

#plot state space
plot(AM010222_L1$SCR, AM010222_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM010222_L1 <- est_parameters(AM010222_L1$SCR) 
Params_AM010222_L2 <- est_parameters(AM010222_L2$SCR) 

emLag_AM010222_L1 <- median(Params_AM010222_L1$optimLag, Params_AM010222_L2$optimLag)
emDim_AM010222_L1<- max(Params_AM010222_L1$optimDim, Params_AM010222_L2$optiomDim) 

# unthresholded matrix

RM_AM010222 <- rp(y1 = AM010222_L1$SCR, y2 = AM010222_L2$SCR, emDim = emDim_AM010222, emLag = emLag_AM010222)

# estimate radius
emRad_AM010222 <- est_radius(RM = RM_AM010222, targetValue = .05)$Radius

# Binary matrix
RP_AM010222 <- mat_di2bi(RM_AM010222, emRad = emRad_AM010222)

# Recurrence measures
Measures_AM010222 <- rp_measures(RP_AM010222)


# AM150222

#plot state space
plot(AM150222_L1$SCR, AM150222_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM150222_L1 <- est_parameters(AM150222_L1$SCR) 
Params_AM150222_L2 <- est_parameters(AM150222_L2$SCR) 

emLag_AM150222_L1 <- median(Params_AM150222_L1$optimLag, Params_AM150222_L2$optimLag)
emDim_AM150222_L1<- max(Params_AM150222_L1$optimDim, Params_AM150222_L2$optiomDim) 

# unthresholded matrix

RM_AM150222<- rp(y1 = AM150222_L1$SCR, y2 = AM150222_L2$SCR, emDim = emDim_AM150222, emLag = emLag_AM150222)

# estimate radius
emRad_AM150222 <- est_radius(RM = RM_AM150222, targetValue = .05)$Radius

# Binary matrix
RP_AM150222 <- mat_di2bi(RM_AM150222, emRad = emRad_AM150222)

# Recurrence measures
Measures_AM150222 <- rp_measures(RP_AM150222)


# PM150222

#plot state space
plot(PM150222_L1$SCR, PM150222_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_PM150222_L1 <- est_parameters(PM150222_L1$SCR) 
Params_PM150222_L2 <- est_parameters(PM150222_L2$SCR)

emLag_PM150222_L1 <- median(Params_PM150222_L1$optimLag, Params_PM150222_L2$optimLag)
emDim_PM150222_L1<- max(Params_PM150222_L1$optimDim, Params_PM150222_L2$optiomDim) 

# unthresholded matrix

RM_PM150222<- rp(y1 = PM150222_L1$SCR, y2 = PM150222_L2$SCR, emDim = emDim_PM150222, emLag = emLag_PM150222)

# estimate radius
emRad_PM150222 <- est_radius(RM = RM_PM150222, targetValue = .05)$Radius

# Binary matrix
RP_PM150222 <- mat_di2bi(RM_PM150222, emRad = emRad_PM150222)

# Recurrence measures
Measures_PM150222 <- rp_measures(RP_PM150222)


# Dyadic

#DE
# Nach010322

#plot state space
plot(Nach010322_L1$SCR, Nach010322_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach010322_L1 <- est_parameters(Nach010322_L1$SCR) 
Params_Nach010322_L2 <- est_parameters(Nach010322_L2$SCR)

emLag_Nach010322_L1 <- median(Params_Nach010322_L1$optimLag, Params_Nach010322_L2$optimLag)
emDim_Nach010322_L1<- max(Params_Nach010322_L1$optimDim, Params_Nach010322_L2$optiomDim) 

# unthresholded matrix

RM_Nach010322<- rp(y1 = Nach010322_L1$SCR, y2 = Nach010322_L2$SCR, emDim = emDim_Nach010322, emLag = emLag_Nach010322)

# estimate radius
emRad_Nach010322 <- est_radius(RM = RM_Nach010322, targetValue = .05)$Radius

# Binary matrix
RP_Nach010322 <- mat_di2bi(RM_Nach010322, emRad = emRad_Nach010322)

# Recurrence measures
Measures_Nach010322 <- rp_measures(RP_Nach010322)


# Nach100622

#plot state space
plot(Nach100622_L1$SCR, Nach100622_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach100622_L1 <- est_parameters(Nach100622_L1$SCR) 
Params_Nach100622_L2 <- est_parameters(Nach100622_L2$SCR) 

emLag_Nach100622_L1 <- median(Params_Nach100622_L1$optimLag, Params_Nach100622_L2$optimLag)
emDim_Nach100622_L1<- max(Params_Nach100622_L1$optimDim, Params_Nach100622_L2$optiomDim) 

# unthresholded matrix

RM_Nach100622<- rp(y1 = Nach100622_L1$SCR, y2 = Nach100622_L2$SCR, emDim = emDim_Nach100622, emLag = emLag_Nach100622)

# estimate radius
emRad_Nach100622 <- est_radius(RM = RM_Nach100622, targetValue = .05)$Radius

# Binary matrix
RP_Nach100622 <- mat_di2bi(RM_Nach100622, emRad = emRad_Nach100622)

# Recurrence measures
Measures_Nach100622 <- rp_measures(RP_Nach100622)


# Vor080722

#plot state space
plot(Vor080722_L1$SCR, Vor080722_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Vor080722_L1 <- est_parameters(Vor080722_L1$SCR) 
Params_Vor080722_L2 <- est_parameters(Vor080722_L2$SCR) 

emLag_Vor080722_L1 <- median(Params_Vor080722_L1$optimLag, Params_Vor080722_L2$optimLag)
emDim_Vor080722_L1<- max(Params_Vor080722_L1$optimDim, Params_Vor080722_L2$optiomDim) 

# unthresholded matrix

RM_Vor080722<- rp(y1 = Vor080722_L1$SCR, y2 = Vor080722_L2$SCR, emDim = emDim_Vor080722, emLag = emLag_Vor080722)

# estimate radius
emRad_Vor080722 <- est_radius(RM = RM_Vor080722, targetValue = .05)$Radius

# Binary matrix
RP_Vor080722 <- mat_di2bi(RM_Vor080722, emRad = emRad_Vor080722)

# Recurrence measures
Measures_Vor080722 <- rp_measures(RP_Vor080722)


#EN
# AM010322

#plot state space
plot(AM010322_L1$SCR, AM010322_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM010322_L1 <- est_parameters(AM010322_L1$SCR) 
Params_AM010322_L2 <- est_parameters(AM010322_L2$SCR) 

emLag_AM010322_L1 <- median(Params_AM010322_L1$optimLag, Params_AM010322_L2$optimLag)
emDim_AM010322_L1<- max(Params_AM010322_L1$optimDim, Params_AM010322_L2$optiomDim) 

# unthresholded matrix

RM_AM010322<- rp(y1 = AM010322_L1$SCR, y2 = AM010322_L2$SCR, emDim = emDim_AM010322, emLag = emLag_AM010322)

# estimate radius
emRad_AM010322 <- est_radius(RM = RM_AM010322, targetValue = .05)$Radius

# Binary matrix
RP_AM010322 <- mat_di2bi(RM_AM010322, emRad = emRad_AM010322)

# Recurrence measures
Measures_AM010322 <- rp_measures(RP_AM010322)


# PM290422

#plot state space
plot(PM290422_L1$SCR, PM290422_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_PM290422_L1 <- est_parameters(PM290422_L1$SCR) 
Params_PM290422_L2 <- est_parameters(PM290422_L2$SCR)

emLag_PM290422_L1 <- median(Params_PM290422_L1$optimLag, Params_PM290422_L2$optimLag)
emDim_PM290422_L1<- max(Params_PM290422_L1$optimDim, Params_PM290422_L2$optiomDim) 

# unthresholded matrix

RM_PM290422<- rp(y1 = PM290422_L1$SCR, y2 = PM290422_L2$SCR, emDim = emDim_PM290422, emLag = emLag_PM290422)

# estimate radius
emRad_PM290422 <- est_radius(RM = RM_PM290422, targetValue = .05)$Radius

# Binary matrix
RP_PM290422 <- mat_di2bi(RM_PM290422, emRad = emRad_PM290422)

# Recurrence measures
Measures_PM290422 <- rp_measures(RP_PM290422)


# AM090522

#plot state space
plot(AM090522_L1$SCR, AM090522_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM090522_L1 <- est_parameters(AM090522_L1$SCR) 
Params_AM090522_L2 <- est_parameters(AM090522_L2$SCR) 

emLag_AM090522_L1 <- median(Params_AM090522_L1$optimLag, Params_AM090522_L2$optimLag)
emDim_AM090522_L1<- max(Params_AM090522_L1$optimDim, Params_AM090522_L2$optiomDim) 

# unthresholded matrix

RM_AM090522<- rp(y1 = AM090522_L1$SCR, y2 = AM090522_L2$SCR, emDim = emDim_AM090522, emLag = emLag_AM090522)

# estimate radius
emRad_AM090522 <- est_radius(RM = RM_AM090522, targetValue = .05)$Radius

# Binary matrix
RP_AM090522 <- mat_di2bi(RM_AM090522, emRad = emRad_AM090522)

# Recurrence measures
Measures_AM090522 <- rp_measures(RP_AM090522)


# PM130522

#plot state space
plot(PM130522_L1$SCR, PM130522_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_PM130522_L1 <- est_parameters(PM130522_L1$SCR) 
Params_PM130522_L2 <- est_parameters(PM130522_L2$SCR) 

emLag_PM130522_L1 <- median(Params_PM130522_L1$optimLag, Params_PM130522_L2$optimLag)
emDim_PM130522_L1<- max(Params_PM130522_L1$optimDim, Params_PM130522_L2$optiomDim) 

# unthresholded matrix

RM_PM130522<- rp(y1 = PM130522_L1$SCR, y2 = PM130522_L2$SCR, emDim = emDim_PM130522, emLag = emLag_PM130522)

# estimate radius
emRad_PM130522 <- est_radius(RM = RM_PM130522, targetValue = .05)$Radius

# Binary matrix
RP_PM130522 <- mat_di2bi(RM_PM130522, emRad = emRad_PM130522)

# Recurrence measures
Measures_PM130522 <- rp_measures(RP_PM130522)


# AM200522

#plot state space
plot(AM200522_L1$SCR, AM200522_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM200522_L1 <- est_parameters(AM200522_L1$SCR)
Params_AM200522_L2 <- est_parameters(AM200522_L2$SCR)

emLag_AM200522_L1 <- median(Params_AM200522_L1$optimLag, Params_AM200522_L2$optimLag)
emDim_AM200522_L1<- max(Params_AM200522_L1$optimDim, Params_AM200522_L2$optiomDim) 

# unthresholded matrix

RM_AM200522<- rp(y1 = AM200522_L1$SCR, y2 = AM200522_L2$SCR, emDim = emDim_AM200522, emLag = emLag_AM200522)

# estimate radius
emRad_AM200522 <- est_radius(RM = RM_AM200522, targetValue = .05)$Radius

# Binary matrix
RP_AM200522 <- mat_di2bi(RM_AM200522, emRad = emRad_AM200522)

# Recurrence measures
Measures_AM200522 <- rp_measures(RP_AM200522)


# AM100622

#plot state space
plot(AM100622_L1$SCR, AM100622_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM100622_L1 <- est_parameters(AM100622_L1$SCR) 
Params_AM100622_L2 <- est_parameters(AM100622_L2$SCR)

emLag_AM100622_L1 <- median(Params_AM100622_L1$optimLag, Params_AM100622_L2$optimLag)
emDim_AM100622_L1<- max(Params_AM100622_L1$optimDim, Params_AM100622_L2$optiomDim) 

# unthresholded matrix

RM_AM100622<- rp(y1 = AM100622_L1$SCR, y2 = AM100622_L2$SCR, emDim = emDim_AM100622, emLag = emLag_AM100622)

# estimate radius
emRad_AM100622 <- est_radius(RM = RM_AM100622, targetValue = .05)$Radius

# Binary matrix
RP_AM100622 <- mat_di2bi(RM_AM100622, emRad = emRad_AM100622)

# Recurrence measures
Measures_AM100622 <- rp_measures(RP_AM100622)


# AM130622

#plot state space
plot(AM130622_L1$SCR, AM130622_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM130622_L1 <- est_parameters(AM130622_L1$SCR) 
Params_AM130622_L2 <- est_parameters(AM130622_L2$SCR) 

emLag_AM130622_L1 <- median(Params_AM130622_L1$optimLag, Params_AM130622_L2$optimLag)
emDim_AM130622_L1<- max(Params_AM130622_L1$optimDim, Params_AM130622_L2$optiomDim) 

# unthresholded matrix

RM_AM130622<- rp(y1 = AM130622_L1$SCR, y2 = AM130622_L2$SCR, emDim = emDim_AM130622, emLag = emLag_AM130622)

# estimate radius
emRad_AAM130622 <- est_radius(RM = RM_AM130622, targetValue = .05)$Radius

# Binary matrix
RP_AM130622 <- mat_di2bi(RM_AM130622, emRad = emRad_AM130622)

# Recurrence measures
Measures_AM130622 <- rp_measures(RP_AM130622)


# Triadic