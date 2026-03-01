
library(dplyr)
#library(devtools)
#install.packages("devtools")
#install_github("FredHasselman/casnet")
#install.packages("infotheo")

#install.packages("tseries")


# Import EDA files

# Control

#DE
# Nach051121
Nach051121_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group1/Nach051121L1.txt", header = T)
Nach051121_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group1/Nach051121L2.txt", header = T)

# Nach091121
Nach091121_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group2/Nach091121L1.txt", header = T)
Nach091121_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group2/Nach091121L2.txt", header = T)

# Nach191121
Nach191121_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group4/Nach191121L1.txt", header = T)
Nach191121_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group4/Nach191121L2.txt", header = T)

# Vor231121
Vor231121_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group5/Vor231121L1.txt", header = T)
Vor231121_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group5/Vor231121L2.txt", header = T)

# Vor261121
Vor261121_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group6/Vor261121L1.txt", header = T)
Vor261121_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group6/Vor261121L2.txt", header = T)

# Nach261121
Nach261121_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group7/Nach261121L1.txt", header = T)
Nach261121_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group7/Nach261121L2.txt", header = T)

# Vor101221
Vor101221_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group8/Vor101221L1.txt", header = T)
Vor101221_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group8/Vor101221L2.txt", header = T)

# Nach040122
Nach040122_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group9/Nach040122L1.txt", header = T)
Nach040122_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group9/Nach040122L2.txt", header = T)

# Nach110122
Nach110122_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group10/Nach110122L1.txt", header = T)
Nach110122_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Control/Group10/Nach110122L2.txt", header = T)

#EN
# PM191121
PM191121_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Control/Group1/PM191121L1.txt", header = T)
PM191121_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Control/Group1/PM191121L2.txt", header = T)

# Shared

#DE
# Nach140122
Nach140122_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Shared/Group1/Nach140122L1.txt", header = T)
Nach140122_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Shared/Group1/Nach140122L2.txt", header = T)

# Nach180222
Nach180222_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Shared/Group2/Nach180222L1.txt", header = T)
Nach180222_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Shared/Group2/Nach180222L2.txt", header = T)

# Vor220222
Vor220222_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Shared/Group3/Vor220222L1.txt", header = T)
Vor220222_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Shared/Group3/Vor220222L2.txt", header = T)

#EN
# AM180122
AM180122_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group2/AM180122L1.txt", header = T)
AM180122_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group2/AM180122L2.txt", header = T)

# AM210122
AM210122_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group3/AM210122L1.txt", header = T)
AM210122_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group3/AM210122L2.txt", header = T)

# PM280122
PM280122_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group4/PM280122L1.txt", header = T)
PM280122_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group4/PM280122L2.txt", header = T)

# AM010222
AM010222_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group5/AM010222L1.txt", header = T)
AM010222_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group5/AM010222L2.txt", header = T)

# AM150222
AM150222_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group6/AM150222L1.txt", header = T)
AM150222_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group6/AM150222L2.txt", header = T)

# PM150222
PM150222_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group7/PM150222L1.txt", header = T)
PM150222_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Shared/Group7/PM150222L2.txt", header = T)

# Dyadic

#DE
# Nach010322
Nach010322_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Dyadic/Group1/Nach010322L1.txt", header = T)
Nach010322_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Dyadic/Group1/Nach010322L2.txt", header = T)

# Nach100622
Nach100622_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Dyadic/Group4/Nach100622L1.txt", header = T)
Nach100622_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Dyadic/Group4/Nach100622L2.txt", header = T)

# Vor080722
Vor080722_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Dyadic/Group6/Vor080722L1.txt", header = T)
Vor080722_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Dyadic/Group6/Vor080722L2.txt", header = T)

#EN
# AM010322
AM010322_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group1/AM010322L1.txt", header = T)
AM010322_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group1/AM010322L2.txt", header = T)

# PM290422
PM290422_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group2/PM290422L1.txt", header = T)
PM290422_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group2/PM290422L2.txt", header = T)

# AM090522
AM090522_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group3/AM090522L1.txt", header = T)
AM090522_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group3/AM090522L2.txt", header = T)

# PM130522
PM130522_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group4/PM130522L1.txt", header = T)
PM130522_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group4/PM130522L2.txt", header = T)

# AM200522
AM200522_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group5/AM200522L1.txt", header = T)
AM200522_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group5/AM200522L2.txt", header = T)

# AM100622
AM100622_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group6/AM100622L1.txt", header = T)
AM100622_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group6/AM100622L2.txt", header = T)

# AM130622
AM130622_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group7/AM130622L1.txt", header = T)
AM130622_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Dyadic/Group7/AM130622L2.txt", header = T)

# Triadic

#DE
# Vor290722
Vor290722_L1 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group1/Vor290722L1.txt", header = T)
Vor290722_L2 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group1/Vor290722L2.txt", header = T)

# Nach290722
Nach290722_L1 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group2/Nach290722L1.txt", header = T)
Nach290722_L2 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group2/Nach290722L2.txt", header = T)

# Nach010822
Nach010822_L1 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group3/Nach010822L1.txt", header = T)
Nach010822_L2 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group3/Nach010822L2.txt", header = T)

# Nach080822
Nach080822_L1 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group4/Nach080822L1.txt", header = T)
Nach080822_L2 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group4/Nach080822L2.txt", header = T)

# Vor160922
Vor160922_L1 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group5/Vor160922L1.txt", header = T)
Vor160922_L2 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group5/Vor160922L2.txt", header = T)

# Vor230922
Vor230922_L1 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group6 (2 parts)/Vor230922L1.txt", header = T)
Vor230922_L2 <- read.table(file =  "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/DE_EDA Data/Triadic/Group6 (2 parts)/Vor230922L2.txt", header = T)

#EN
# AM250722
AM250722_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group1/AM250722L1.txt", header = T)
AM250722_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group1/AM250722L2.txt", header = T)

# AM010822
AM010822_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group2/AM010822L1.txt", header = T)
AM010822_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group2/AM010822L2.txt", header = T)

# AM101022
AM101022_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group3/AM101022L1.txt", header = T)
AM101022_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group3/AM101022L2.txt", header = T)

# AM171022
AM171022_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group4/AM171022L1.txt", header = T)
AM171022_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group4/AM171022L2.txt", header = T)

# PM281022
PM281022_L1 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group5/PM281022L1.txt", header = T)
PM281022_L2 <- read.table(file = "/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA Data/EN_EDA Data/Triadic/Group5/PM281022L2.txt", header = T)


# CRQA to EDA data
library(casnet)

# Control 

#DE
# Nach051121

# Correlation

cor_Nach051121 <- cor(Nach051121_L1$SCR, Nach051121_L2$SCR)
cor_Nach051121

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

#reticulate::use_virtualenv("r-reticulate", required = T)
#pyrqa <- reticulate::import("pyrqa")

#X_Nach051121 <- as.numeric(Nach051121_L1$SCR)

#Y_Nach051121 <- as.numeric(Nach051121_L2$SCR)

#print(X_Nach051121) #for debugging 

#ts_x_Nach051121 <- pyrqa$time_series$TimeSeries(X_Nach051121, 
#	embedding_dimension = as.integer(3), 
#	time_delay = as.integer(20))
	
#print(ts_x_Nach051121) # for debugging

#ts_y_Nach051121 <- pyrqa$time_series$TimeSeries(Y_Nach051121, 
	embedding_dimension = as.integer(Params_Nach051121_L2$optimDim), 
	time_delay = as.integer(Params_Nach051121_L2$optimLag))

#TS_Nach051121 <- list(ts_x_Nach051121, ts_y_Nach051121)

#time_series # for debugging

#settings_Nach051121 <- pyrqa$settings$Settings(TS_Nach051121, 
#	analysis_type = pyrqa$analysis_type$Cross, 
#	neighbourhood = pyrqa$neighbourhood$FixedRadius(emRad_Nach051121), 
#	similarity_measure = pyrqa$metric$EuclideanMetric, 
#	theiler_corrector = 0) # Fixed radius shoud be bigger than 0, 0 is not allowed in pyrqa
 
#computation_Nach051121 <- pyrqa$computation$RQAComputation$create(settings_Nach051121)

#result_Nach051121 <- computation_Nach051121$run()

#print(result_Nach051121)

#pyrqa$image_generator$ImageGenerator$save_recurrence_plot(RPresult$recurrence_matrix_reverse, 'recurrence_plot_python.png') --> use py instead

#knitr::include_graphics("images/recurrence_plot_python.png")

# DFA test
nextn(length(Nach051121_L1$SCR), factors = 2)

fd_dfa(Nach051121_L1$SCR, fs = 4, standardise = "none", doPlot = T)
fd_dfa(Nach051121_L2$SCR, fs = 4, standardise = "none", doPlot = T)

# Nach091121

# Correlation

cor_Nach091121 <- cor(Nach091121_L1$SCR, Nach091121_L2$SCR)
cor_Nach091121


#plot state space
plot(Nach091121_L1$SCR, Nach091121_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach091121_L1 <- est_parameters(Nach091121_L1$SCR) 
Params_Nach091121_L2 <- est_parameters(Nach091121_L2$SCR) 

emLag_Nach091121 <- median(Params_Nach091121_L1$optimLag, Params_Nach091121_L2$optimLag)
emDim_Nach091121 <- max(Params_Nach091121_L1$optimDim, Params_Nach091121_L2$optiomDim)
 
emLag_Nach091121
emDim_Nach091121
 
# unthresholded matrix

RM_Nach091121 <- rp(y1 = Nach091121_L1$SCR, y2 = Nach091121_L2$SCRd, emDim = emDim_Nach091121, emLag = emLag_Nach091121)

# estimate radius
emRad_Nach091121 <- est_radius(RM = RM_Nach091121, targetValue = .05)$Radius

emRad_Nach091121

# Binary matrix
#RP_Nach091121 <- mat_di2bi(RM_Nach091121, emRad = emRad_Nach091121)

# Recurrence measures
#Measures_Nach091121 <- rp_measures(RP_Nach091121)



# Nach191121

# Correlation

cor_Nach191121 <- cor(Nach191121_L1$SCR, Nach191121_L2$SCR)
cor_Nach191121

#plot state space
plot(Nach191121_L1$SCR, Nach191121_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach191121_L1 <- est_parameters(Nach191121_L1$SCR) 
Params_Nach191121_L2 <- est_parameters(Nach191121_L2$SCR)

emLag_Nach191121 <- median(Params_Nach191121_L1$optimLag, Params_Nach191121_L2$optimLag)
emDim_Nach191121<- max(Params_Nach191121_L1$optimDim, Params_Nach191121_L2$optiomDim)

emLag_Nach191121
emDim_Nach191121

# unthresholded matrix

RM_Nach191121 <- rp(y1 = Nach191121_L1$SCR, y2 = Nach191121_L2$SCRd, emDim = emDim_Nach191121, emLag = emLag_Nach191121)

# estimate radius
emRad_Nach191121 <- est_radius(RM = RM_Nach191121, targetValue = .05)$Radius

emRad_Nach191121

# Binary matrix
#RP_Nach191121 <- mat_di2bi(RM_Nach191121, emRad = emRad_Nach191121)

# Recurrence measures
#Measures_Nach191121 <- rp_measures(RP_Nach191121)

# Vor231121

# estimating embedding & delay dimension
Params_Vor231121_L1 <- est_parameters(Vor231121_L1$SCR, doPlot = F) 
Params_Vor231121_L2 <- est_parameters(Vor231121_L2$SCR, doPlot = F)

emLag_Vor231121 <- median(Params_Vor231121_L1$optimLag, Params_Vor231121_L2$optimLag)
emDim_Vor231121<- max(Params_Vor231121_L1$optimDim, Params_Vor231121_L2$optiomDim)

emLag_Vor231121
emDim_Vor231121

# unthresholded matrix

RM_Vor231121 <- rp(y1 = Vor231121_L1$SCR, y2 = Vor231121_L2$SCR, emDim = emDim_Vor231121, emLag = emLag_Vor231121)

# estimate radius
emRad_Vor231121 <- est_radius(RM = RM_Vor231121, targetValue = .05)$Radius

emRad_Vor231121


# Nach261121

# Correlation

cor_Nach261121 <- cor(Nach261121_L1$SCR, Nach261121_L2$SCR)
cor_Nach261121


#plot state space
plot(Nach261121_L1$SCR, Nach261121_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach261121_L1 <- est_parameters(Nach261121_L1$SCR) 
Params_Nach261121_L2 <- est_parameters(Nach261121_L2$SCR)

emLag_Nach261121 <- median(Params_Nach261121_L1$optimLag, Params_Nach261121_L2$optimLag)
emDim_Nach261121<- max(Params_Nach261121_L1$optimDim, Params_Nach261121_L2$optiomDim)

emLag_Nach261121
emDim_Nach261121

# unthresholded matrix

RM_Nach261121 <- rp(y1 = Nach261121_L1$SCR, y2 = Nach261121_L2$SCRd, emDim = emDim_Nach261121, emLag = emLag_Nach261121)

# estimate radius
emRad_Nach261121 <- est_radius(RM = RM_Nach261121, targetValue = .05)$Radius

emRad_Nach261121

# Binary matrix
#RP_Nach261121 <- mat_di2bi(RM_Nach261121, emRad = emRad_Nach261121)

# Recurrence measures
#Measures_Nach261121 <- rp_measures(RP_Nach261121)
 

# Vor261121

# Correlation

cor_Vor261121 <- cor(Vor261121_L1$SCR, Vor261121_L2$SCR)
cor_Vor261121


#plot state space
plot(Vor261121_L1$SCR, Vor261121_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Vor261121_L1 <- est_parameters(Vor261121_L1$SCR) 
Params_Vor261121_L2 <- est_parameters(Vor261121_L2$SCR) 

emLag_Vor261121 <- median(Params_Vor261121_L1$optimLag, Params_Vor261121_L2$optimLag)
emDim_Vor261121 <- max(Params_Vor261121_L1$optimDim, Params_Vor261121_L2$optiomDim)

emLag_Vor261121
emDim_Vor261121

# unthresholded matrix

RM_Vor261121 <- rp(y1 = Vor261121_L1$SCR, y2 = Vor261121_L2$SCR, emDim = emDim_Vor261121, emLag = emLag_Vor261121)

# estimate radius
emRad_Vor261121 <- est_radius(RM = RM_Vor261121, targetValue = .05)$Radius

emRad_Vor261121

# Binary matrix
#RP_Vor261121 <- mat_di2bi(RM_Vor261121, emRad = emRad_Vor261121)

# Recurrence measures
#Measures_Vor261121 <- rp_measures(RP_Vor261121)


# Vor101221

# Correlation

cor_Vor101221 <- cor(Vor101221_L1$SCR, Vor101221_L2$SCR)
cor_Vor101221

#plot state space
plot(Vor101221_L1$SCR, Vor101221_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_Vor101221_L1 <- est_parameters(Vor101221_L1$SCR)
Params_Vor101221_L2 <- est_parameters(Vor101221_L2$SCR)

emLag_Vor101221 <- median(Params_Vor101221_L1$optimLag, Params_Vor101221_L2$optimLag)
emDim_Vor101221<- max(Params_Vor101221_L1$optimDim, Params_Vor101221_L2$optiomDim) 

emLag_Vor101221
emDim_Vor101221

# unthresholded matrix

RM_Vor101221 <- rp(y1 = Vor101221_L1$SCR, y2 = Vor101221_L2$SCR, emDim = emDim_Vor101221, emLag = emLag_Vor101221)

# estimate radius
emRad_Vor101221 <- est_radius(RM = RM_Vor101221, targetValue = .05)$Radius

emRad_Vor101221

# Binary matrix
#RP_Vor101221 <- mat_di2bi(RM_Vor101221, emRad = emRad_Vor101221)

# Recurrence measures
#Measures_Vor101221 <- rp_measures(RP_Vor101221)


# Nach040122

# Correlation

cor_Nach040122 <- cor(Nach040122_L1$SCR, Nach040122_L2$SCR)
cor_Nach040122

#plot state space
plot(Nach040122_L1$SCR, Nach040122_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_Nach040122_L1 <- est_parameters(Nach040122_L1$SCR)
Params_Nach040122_L2 <- est_parameters(Nach040122_L2$SCR) 

emLag_Nach040122 <- median(Params_Nach040122_L1$optimLag, Params_Nach040122_L2$optimLag)
emDim_Nach040122<- max(Params_Nach040122_L1$optimDim, Params_Nach040122_L2$optiomDim) 

emLag_Nach040122
emDim_Nach040122

# unthresholded matrix

RM_Nach040122 <- rp(y1 = Nach040122_L1$SCR, y2 = Nach040122_L2$SCR, emDim = emDim_Nach040122, emLag = emLag_Nach040122)

# estimate radius
emRad_Nach040122 <- est_radius(RM = RM_Nach040122, targetValue = .05)$Radius

emRad_Nach040122

# Binary matrix
#RP_Nach040122 <- mat_di2bi(RM_Nach040122, emRad = emRad_Nach040122)

# Recurrence measures
#Measures_Nach040122 <- rp_measures(RP_Nach040122)


# Nach110122

# Correlation

cor_Nach110122 <- cor(Nach110122_L1$SCR, Nach110122_L2$SCR)
cor_Nach110122

#plot state space
plot(Nach110122_L1$SCR, Nach110122_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_Nach110122_L1 <- est_parameters(Nach110122_L1$SCR) 
Params_Nach110122_L2 <- est_parameters(Nach110122_L2$SCR) 

emLag_Nach110122 <- median(Params_Nach110122_L1$optimLag, Params_Nach110122_L2$optimLag)
emDim_Nach110122 <- max(Params_Nach110122_L1$optimDim, Params_Nach110122_L2$optiomDim) 

emLag_Nach110122
emDim_Nach110122

# unthresholded matrix

RM_Nach110122 <- rp(y1 = Nach110122_L1$SCR, y2 = Nach110122_L2$SCR, emDim = emDim_Nach110122, emLag = emLag_Nach110122)

# estimate radius
emRad_Nach110122 <- est_radius(RM = RM_Nach110122, targetValue = .05)$Radius

emRad_Nach110122

# Binary matrix
#RP_Nach110122 <- mat_di2bi(RM_Nach110122, emRad = emRad_Nach110122)

# Recurrence measures
#Measures_Nach110122 <- rp_measures(RP_Nach110122)



#EN
# PM191121

# Correlation

cor_PM191121 <- cor(PM191121_L1$SCR, PM191121_L2$SCR)
cor_PM191121

#plot state space
plot(PM191121_L1$SCR, PM191121_L2$SCR, pty = "l", pty = "s")

# estimating embedding & delay dimension
Params_PM191121_L1 <- est_parameters(PM191121_L1$SCR) 
Params_PM191121_L2 <- est_parameters(PM191121_L2$SCR) 

emLag_PM191121 <- median(Params_PM191121_L1$optimLag, Params_PM191121_L2$optimLag)
emDim_PM191121<- max(Params_PM191121_L1$optimDim, Params_PM191121_L2$optiomDim) 

emLag_PM191121
emDim_PM191121

# unthresholded matrix

RM_PM191121 <- rp(y1 = PM191121_L1$SCR, y2 = PM191121_L2$SCR, emDim = emDim_PM191121, emLag = emLag_PM191121)

# estimate radius
emRad_PM191121 <- est_radius(RM = RM_PM191121, targetValue = .05)$Radius

emRad_PM191121

# Binary matrix
#RP_PM191121 <- mat_di2bi(RM_PM191121, emRad = emRad_PM191121)

# Recurrence measures
#Measures_PM191121 <- rp_measures(RP_PM191121)


# Shared

#DE
# Nach140122

# Correlation

cor_Nach140122 <- cor(Nach140122_L1$SCR, Nach140122_L2$SCR)
cor_Nach140122

#plot state space
plot(Nach1401221_L1$SCR, Nach140122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach140122_L1 <- est_parameters(Nach140122_L1$SCR)
Params_Nach140122_L2 <- est_parameters(Nach140122_L2$SCR) 

emLag_Nach140122 <- median(Params_Nach140122_L1$optimLag, Params_Nach140122_L2$optimLag)
emDim_Nach140122<- max(Params_Nach140122_L1$optimDim, Params_Nach140122_L2$optiomDim) 

emLag_Nach140122
emDim_Nach140122

# unthresholded matrix

RM_Nach140122 <- rp(y1 = Nach140122_L1$SCR, y2 = Nach140122_L2$SCR, emDim = emDim_Nach140122, emLag = emLag_Nach140122)

# estimate radius
emRad_Nach140122 <- est_radius(RM = RM_Nach140122, targetValue = .05)$Radius

emRad_Nach140122

# Binary matrix
#RP_Nach140122 <- mat_di2bi(RM_Nach140122, emRad = emRad_Nach140122)

# Recurrence measures
#Measures_PM191121 <- rp_measures(RP_Nach140122)


# Nach180222

# Correlation

cor_Nach180222 <- cor(Nach180222_L1$SCR, Nach180222_L2$SCR)
cor_Nach180222

#plot state space
plot(Nach180222_L1$SCR, Nach140122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach180222_L1 <- est_parameters(Nach180222_L1$SCR) 
Params_Nach180222_L2 <- est_parameters(Nach180222_L2$SCR) 

emLag_Nach180222 <- median(Params_Nach180222_L1$optimLag, Params_Nach180222_L2$optimLag)
emDim_Nach180222 <- max(Params_Nach180222_L1$optimDim, Params_Nach180222_L2$optiomDim) 

emLag_Nach180222
emDim_Nach180222

# unthresholded matrix

RM_Nach180222 <- rp(y1 = Nach180222_L1$SCR, y2 = Nach180222_L2$SCR, emDim = emDim_Nach180222, emLag = emLag_Nach180222)

# estimate radius
emRad_Nach180222 <- est_radius(RM = RM_Nach180222, targetValue = .05)$Radius

emRad_Nach180222

# Binary matrix
#RP_Nach180222 <- mat_di2bi(RM_Nach180222, emRad = emRad_Nach180222)

# Recurrence measures
#Measures_Nach180222 <- rp_measures(RP_Nach180222)


# Vor220222

# Correlation

cor_Vor220222 <- cor(Vor220222_L1$SCR, Vor220222_L2$SCR)
cor_Vor220222

#plot state space
plot(Vor220222_L1$SCR, Vor220222_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Vor220222_L1 <- est_parameters(Vor220222_L1$SCR) 
Params_Vor220222_L2 <- est_parameters(Vor220222_L2$SCR) 

emLag_Vor220222 <- median(Params_Vor220222_L1$optimLag, Params_Vor220222_L2$optimLag)
emDim_Vor220222 <- max(Params_Vor220222_L1$optimDim, Params_Vor220222_L2$optiomDim) 

emLag_Vor220222
emDim_Vor220222

# unthresholded matrix

RM_Vor220222 <- rp(y1 = Vor220222_L1$SCR, y2 = Vor220222_L2$SCR, emDim = emDim_Vor220222, emLag = emLag_Vor220222)

# estimate radius
emRad_Vor220222 <- est_radius(RM = RM_Vor220222, targetValue = .05)$Radius

emRad_Vor220222

# Binary matrix
#RP_Vor220222 <- mat_di2bi(RM_Vor220222, emRad = emRad_Vor220222)

# Recurrence measures
#Measures_Vor220222 <- rp_measures(RP_Vor220222)

#EN
# AM180122

# Correlation

cor_AM180122 <- cor(AM180122_L1$SCR, AM180122_L2$SCR)
cor_AM180122

#plot state space
plot(AM180122_L1$SCR, AM180122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM180122_L1 <- est_parameters(AM180122_L1$SCR)
Params_AM180122_L2 <- est_parameters(AM180122_L2$SCR)

emLag_AM180122 <- median(Params_AM180122_L1$optimLag, Params_AM180122_L2$optimLag)
emDim_AM180122 <- max(Params_AM180122_L1$optimDim, Params_AM180122_L2$optiomDim) 

emLag_AM180122
emDim_AM180122

# unthresholded matrix

RM_AM180122 <- rp(y1 = AM180122_L1$SCR, y2 = AM180122_L2$SCR, emDim = emDim_AM180122, emLag = emLag_AM180122)

# estimate radius
emRad_AM180122 <- est_radius(RM = RM_AM180122, targetValue = .05)$Radius

emRad_AM180122

# Binary matrix
#RP_AM180122 <- mat_di2bi(RM_AM180122, emRad = emRad_AM180122)

# Recurrence measures
#Measures_AM180122<- rp_measures(RP_AM180122)


# AM210122

# Correlation

cor_AM210122 <- cor(AM210122_L1$SCR, AM210122_L2$SCR)
cor_AM210122

#plot state space
plot(AM210122_L1$SCR, AM210122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM210122_L1 <- est_parameters(AM210122_L1$SCR, doPlot = F) 
Params_AM210122_L2 <- est_parameters(AM210122_L2$SCR, doPlot = F) 

emLag_AM210122 <- median(Params_AM210122_L1$optimLag, Params_AM210122_L2$optimLag)
emDim_AM210122 <- max(Params_AM210122_L1$optimDim, Params_AM210122_L2$optiomDim) 

emLag_AM210122
emDim_AM210122

# unthresholded matrix

RM_AM210122 <- rp(y1 = AM210122_L1$SCR, y2 = AM210122_L2$SCR, emDim = emDim_AM210122, emLag = emLag_AM210122)

# estimate radius
emRad_AM210122 <- est_radius(RM = RM_AM210122, targetValue = .05)$Radius

emRad_AM210122

# Binary matrix
#RP_AM210122 <- mat_di2bi(RM_AM210122, emRad = emRad_AM210122)

# Recurrence measures
#Measures_AM210122 <- rp_measures(RP_AM210122)


# AM280122

# Correlation

cor_PM280122 <- cor(PM280122_L1$SCR, PM280122_L2$SCR)
cor_PM280122

#plot state space
plot(PM280122_L1$SCR, PM280122_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_PM280122_L1 <- est_parameters(PM280122_L1$SCR, doPlot = F) 
Params_PM280122_L2 <- est_parameters(PM280122_L2$SCR, doPlot = F) 

emLag_PM280122 <- median(Params_PM280122_L1$optimLag, Params_PM280122_L2$optimLag)
emDim_PM280122 <- max(Params_PM280122_L1$optimDim, Params_PM280122_L2$optiomDim) 

emLag_PM280122
emDim_PM280122


# unthresholded matrix

RM_PM280122 <- rp(y1 = PM280122_L1$SCR, y2 = PM280122_L2$SCR, emDim = emDim_PM280122, emLag = emLag_PM280122)

# estimate radius
emRad_PM280122 <- est_radius(RM = RM_PM280122, targetValue = .05)$Radius

emRad_PM280122

# Binary matrix
#RP_AM280122 <- mat_di2bi(RM_AM280122, emRad = emRad_AM280122)

# Recurrence measures
#Measures_AM280122 <- rp_measures(RP_AM280122)

# AM010222

# Correlation

cor_AM010222 <- cor(AM010222_L1$SCR, AM010222_L2$SCR)
cor_AM010222

#plot state space
plot(AM010222_L1$SCR, AM010222_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM010222_L1 <- est_parameters(AM010222_L1$SCR, doPlot = F) 
Params_AM010222_L2 <- est_parameters(AM010222_L2$SCR, doPlot = F) 

emLag_AM010222 <- median(Params_AM010222_L1$optimLag, Params_AM010222_L2$optimLag)
emDim_AM010222 <- max(Params_AM010222_L1$optimDim, Params_AM010222_L2$optiomDim) 

emLag_AM010222
emDim_AM010222

# unthresholded matrix

RM_AM010222 <- rp(y1 = AM010222_L1$SCR, y2 = AM010222_L2$SCR, emDim = emDim_AM010222, emLag = emLag_AM010222)

# estimate radius
emRad_AM010222 <- est_radius(RM = RM_AM010222, targetValue = .05)$Radius

emRad_AM010222 

# Binary matrix
#RP_AM010222 <- mat_di2bi(RM_AM010222, emRad = emRad_AM010222)

# Recurrence measures
#Measures_AM010222 <- rp_measures(RP_AM010222)


# AM150222

# Correlation

cor_AM150222 <- cor(AM150222_L1$SCR, AM150222_L2$SCR)
cor_AM150222

#plot state space
plot(AM150222_L1$SCR, AM150222_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM150222_L1 <- est_parameters(AM150222_L1$SCR) 
Params_AM150222_L2 <- est_parameters(AM150222_L2$SCR) 

emLag_AM150222 <- median(Params_AM150222_L1$optimLag, Params_AM150222_L2$optimLag)
emDim_AM150222 <- max(Params_AM150222_L1$optimDim, Params_AM150222_L2$optiomDim) 

emLag_AM150222
emDim_AM150222

# unthresholded matrix

RM_AM150222 <- rp(y1 = AM150222_L1$SCR, y2 = AM150222_L2$SCR, emDim = emDim_AM150222, emLag = emLag_AM150222)

# estimate radius
emRad_AM150222 <- est_radius(RM = RM_AM150222, targetValue = .05)$Radius

emRad_AM150222

# Binary matrix
#RP_AM150222 <- mat_di2bi(RM_AM150222, emRad = emRad_AM150222)

# Recurrence measures
#Measures_AM150222 <- rp_measures(RP_AM150222)


# PM150222

# Correlation

cor_PM150222 <- cor(PM150222_L1$SCR, PM150222_L2$SCR)
cor_PM150222

#plot state space
plot(PM150222_L1$SCR, PM150222_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_PM150222_L1 <- est_parameters(PM150222_L1$SCR) 
Params_PM150222_L2 <- est_parameters(PM150222_L2$SCR)

emLag_PM150222 <- median(Params_PM150222_L1$optimLag, Params_PM150222_L2$optimLag)
emDim_PM150222 <- max(Params_PM150222_L1$optimDim, Params_PM150222_L2$optiomDim) 

emLag_PM150222 
emDim_PM150222 

# unthresholded matrix

RM_PM150222 <- rp(y1 = PM150222_L1$SCR, y2 = PM150222_L2$SCR, emDim = emDim_PM150222, emLag = emLag_PM150222)

# estimate radius
emRad_PM150222 <- est_radius(RM = RM_PM150222, targetValue = .05)$Radius

emRad_PM150222

# Binary matrix
#RP_PM150222 <- mat_di2bi(RM_PM150222, emRad = emRad_PM150222)

# Recurrence measures
#Measures_PM150222 <- rp_measures(RP_PM150222)


# Dyadic

#DE
# Nach010322

# Correlation

cor_Nach010322 <- cor(Nach010322_L1$SCR, Nach010322_L2$SCR)
cor_Nach010322

#plot state space
plot(Nach010322_L1$SCR, Nach010322_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach010322_L1 <- est_parameters(Nach010322_L1$SCR, doPlot = F) 
Params_Nach010322_L2 <- est_parameters(Nach010322_L2$SCR, doPlot = F)

emLag_Nach010322 <- median(Params_Nach010322_L1$optimLag, Params_Nach010322_L2$optimLag)
emDim_Nach010322 <- max(Params_Nach010322_L1$optimDim, Params_Nach010322_L2$optiomDim) 

emLag_Nach010322 
emDim_Nach010322 

# unthresholded matrix

RM_Nach010322 <- rp(y1 = Nach010322_L1$SCR, y2 = Nach010322_L2$SCR, emDim = emDim_Nach010322, emLag = emLag_Nach010322)

# estimate radius
emRad_Nach010322 <- est_radius(RM = RM_Nach010322, targetValue = .05)$Radius

emRad_Nach010322

# Binary matrix
#RP_Nach010322 <- mat_di2bi(RM_Nach010322, emRad = emRad_Nach010322)

# Recurrence measures
#Measures_Nach010322 <- rp_measures(RP_Nach010322)


# Nach100622

# Correlation

cor_Nach100622 <- cor(Nach100622_L1$SCR, Nach100622_L2$SCR)
cor_Nach100622

#plot state space
plot(Nach100622_L1$SCR, Nach100622_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Nach100622_L1 <- est_parameters(Nach100622_L1$SCR, doPlots = F) 
Params_Nach100622_L2 <- est_parameters(Nach100622_L2$SCR, doPlots = F) 

emLag_Nach100622 <- median(Params_Nach100622_L1$optimLag, Params_Nach100622_L2$optimLag)
emDim_Nach100622 <- max(Params_Nach100622_L1$optimDim, Params_Nach100622_L2$optiomDim) 

emLag_Nach100622 
emDim_Nach100622 

# unthresholded matrix

RM_Nach100622 <- rp(y1 = Nach100622_L1$SCR, y2 = Nach100622_L2$SCR, emDim = emDim_Nach100622, emLag = emLag_Nach100622)

# estimate radius
emRad_Nach100622 <- est_radius(RM = RM_Nach100622, targetValue = .05)$Radius

emRad_Nach100622

# Binary matrix
#RP_Nach100622 <- mat_di2bi(RM_Nach100622, emRad = emRad_Nach100622)

# Recurrence measures
#Measures_Nach100622 <- rp_measures(RP_Nach100622)


# Vor080722

# Correlation

cor_Vor080722 <- cor(Vor080722_L1$SCR, Vor080722_L2$SCR)
cor_Vor080722

#plot state space
plot(Vor080722_L1$SCR, Vor080722_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_Vor080722_L1 <- est_parameters(Vor080722_L1$SCR, doPlot = F) 
Params_Vor080722_L2 <- est_parameters(Vor080722_L2$SCR, doPlot = F) 

emLag_Vor080722 <- median(Params_Vor080722_L1$optimLag, Params_Vor080722_L2$optimLag)
emDim_Vor080722 <- max(Params_Vor080722_L1$optimDim, Params_Vor080722_L2$optiomDim) 

emLag_Vor080722
emDim_Vor080722

# unthresholded matrix

RM_Vor080722 <- rp(y1 = Vor080722_L1$SCR, y2 = Vor080722_L2$SCR, emDim = emDim_Vor080722, emLag = emLag_Vor080722)

# estimate radius
emRad_Vor080722 <- est_radius(RM = RM_Vor080722, targetValue = .05)$Radius

emRad_Vor080722

# Binary matrix
#RP_Vor080722 <- mat_di2bi(RM_Vor080722, emRad = emRad_Vor080722)

# Recurrence measures
#Measures_Vor080722 <- rp_measures(RP_Vor080722)


#EN
# AM010322

# Correlation

cor_AM010322 <- cor(AM010322_L1$SCR, AM010322_L2$SCR)
cor_AM010322

#plot state space
plot(AM010322_L1$SCR, AM010322_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM010322_L1 <- est_parameters(AM010322_L1$SCR, doPlot = F) 
Params_AM010322_L2 <- est_parameters(AM010322_L2$SCR, doPlot = F) 

emLag_AM010322 <- median(Params_AM010322_L1$optimLag, Params_AM010322_L2$optimLag)
emDim_AM010322 <- max(Params_AM010322_L1$optimDim, Params_AM010322_L2$optiomDim) 

emLag_AM010322
emDim_AM010322

# unthresholded matrix

RM_AM010322 <- rp(y1 = AM010322_L1$SCR, y2 = AM010322_L2$SCR, emDim = emDim_AM010322, emLag = emLag_AM010322)

# estimate radius
emRad_AM010322 <- est_radius(RM = RM_AM010322, targetValue = .05)$Radius

emRad_AM010322

# Binary matrix
#RP_AM010322 <- mat_di2bi(RM_AM010322, emRad = emRad_AM010322)

# Recurrence measures
#Measures_AM010322 <- rp_measures(RP_AM010322)


# VECTOR MEMEORY EXHAUSTED
#library(usethis)
#usethis::edit_r_environ()

# PM290422

# Correlation

cor_PM290422 <- cor(PM290422_L1$SCR, PM290422_L2$SCR)
cor_PM290422

#plot state space
plot(PM290422_L1$SCR, PM290422_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_PM290422_L1 <- est_parameters(PM290422_L1$SCR, doPlot = F) 
Params_PM290422_L2 <- est_parameters(PM290422_L2$SCR, doPlot = F)

emLag_PM290422 <- median(Params_PM290422_L1$optimLag, Params_PM290422_L2$optimLag)
emDim_PM290422 <- max(Params_PM290422_L1$optimDim, Params_PM290422_L2$optiomDim) 

emLag_PM290422
emDim_PM290422

# unthresholded matrix

RM_PM290422 <- rp(y1 = PM290422_L1$SCR, y2 = PM290422_L2$SCR, emDim = emDim_PM290422, emLag = emLag_PM290422)

# estimate radius
emRad_PM290422 <- est_radius(RM = RM_PM290422, targetValue = .05)$Radius

emRad_PM290422

# Binary matrix
#RP_PM290422 <- mat_di2bi(RM_PM290422, emRad = emRad_PM290422)

# Recurrence measures
#Measures_PM290422 <- rp_measures(RP_PM290422)


# AM090522

# Correlation

cor_AM090522 <- cor(AM090522_L1$SCR, AM090522_L2$SCR)
cor_AM090522

#plot state space
plot(AM090522_L1$SCR, AM090522_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM090522_L1 <- est_parameters(AM090522_L1$SCR, doPlot = F) 
Params_AM090522_L2 <- est_parameters(AM090522_L2$SCR, doPlot = F) 

emLag_AM090522 <- median(Params_AM090522_L1$optimLag, Params_AM090522_L2$optimLag)
emDim_AM090522 <- max(Params_AM090522_L1$optimDim, Params_AM090522_L2$optiomDim)

emLag_AM090522 
emDim_AM090522 

# unthresholded matrix

RM_AM090522 <- rp(y1 = AM090522_L1$SCR, y2 = AM090522_L2$SCR, emDim = emDim_AM090522, emLag = emLag_AM090522)

# estimate radius
emRad_AM090522 <- est_radius(RM = RM_AM090522, targetValue = .05)$Radius

emRad_AM090522

# Binary matrix
#RP_AM090522 <- mat_di2bi(RM_AM090522, emRad = emRad_AM090522)

# Recurrence measures
#Measures_AM090522 <- rp_measures(RP_AM090522)


# PM130522

# Correlation

cor_PM130522 <- cor(PM130522_L1$SCR, PM130522_L2$SCR)
cor_PM130522

#plot state space
plot(PM130522_L1$SCR, PM130522_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_PM130522_L1 <- est_parameters(PM130522_L1$SCR, doPlot = F) 
Params_PM130522_L2 <- est_parameters(PM130522_L2$SCR, doPlot = F) 

emLag_PM130522 <- median(Params_PM130522_L1$optimLag, Params_PM130522_L2$optimLag)
emDim_PM130522 <- max(Params_PM130522_L1$optimDim, Params_PM130522_L2$optiomDim) 

emLag_PM130522
emDim_PM130522

# unthresholded matrix

RM_PM130522 <- rp(y1 = PM130522_L1$SCR, y2 = PM130522_L2$SCR, emDim = emDim_PM130522, emLag = emLag_PM130522)

# estimate radius
emRad_PM130522 <- est_radius(RM = RM_PM130522, targetValue = .05)$Radius

emRad_PM130522

# Binary matrix
#RP_PM130522 <- mat_di2bi(RM_PM130522, emRad = emRad_PM130522)

# Recurrence measures
#Measures_PM130522 <- rp_measures(RP_PM130522)


# AM200522

# Correlation

cor_AM200522 <- cor(AM200522_L1$SCR, AM200522_L2$SCR)
cor_AM200522

#plot state space
plot(AM200522_L1$SCR, AM200522_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM200522_L1 <- est_parameters(AM200522_L1$SCR, doPlot = F)
Params_AM200522_L2 <- est_parameters(AM200522_L2$SCR, doPlot = F)

emLag_AM200522 <- median(Params_AM200522_L1$optimLag, Params_AM200522_L2$optimLag)
emDim_AM200522 <- max(Params_AM200522_L1$optimDim, Params_AM200522_L2$optiomDim) 

emLag_AM200522
emDim_AM200522

# unthresholded matrix

RM_AM200522 <- rp(y1 = AM200522_L1$SCR, y2 = AM200522_L2$SCR, emDim = emDim_AM200522, emLag = emLag_AM200522)

# estimate radius
emRad_AM200522 <- est_radius(RM = RM_AM200522, targetValue = .05)$Radius

emRad_AM200522

# Binary matrix
#RP_AM200522 <- mat_di2bi(RM_AM200522, emRad = emRad_AM200522)

# Recurrence measures
#Measures_AM200522 <- rp_measures(RP_AM200522)


# AM100622

# Correlation

cor_AM100622 <- cor(AM100622_L1$SCR, AM100622_L2$SCR)
cor_AM100622

#plot state space
plot(AM100622_L1$SCR, AM100622_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM100622_L1 <- est_parameters(AM100622_L1$SCR, doPlot = F) 
Params_AM100622_L2 <- est_parameters(AM100622_L2$SCR, doPlot = F)

emLag_AM100622 <- median(Params_AM100622_L1$optimLag, Params_AM100622_L2$optimLag)
emDim_AM100622 <- max(Params_AM100622_L1$optimDim, Params_AM100622_L2$optiomDim) 

emLag_AM100622
emDim_AM100622 

# unthresholded matrix

RM_AM100622 <- rp(y1 = AM100622_L1$SCR, y2 = AM100622_L2$SCR, emDim = emDim_AM100622, emLag = emLag_AM100622)

# estimate radius
emRad_AM100622 <- est_radius(RM = RM_AM100622, targetValue = .05)$Radius

emRad_AM100622

# Binary matrix
#RP_AM100622 <- mat_di2bi(RM_AM100622, emRad = emRad_AM100622)

# Recurrence measures
#Measures_AM100622 <- rp_measures(RP_AM100622)


# AM130622

# Correlation

cor_AM130622 <- cor(AM130622_L1$SCR, AM130622_L2$SCR)
cor_AM130622

#plot state space
plot(AM130622_L1$SCR, AM130622_L2$SCR, type = "l", lty = 1)

# estimating embedding & delay dimension
Params_AM130622_L1 <- est_parameters(AM130622_L1$SCR, doPlot = F) 
Params_AM130622_L2 <- est_parameters(AM130622_L2$SCR, doPlot = F) 

emLag_AM130622 <- median(Params_AM130622_L1$optimLag, Params_AM130622_L2$optimLag)
emDim_AM130622 <- max(Params_AM130622_L1$optimDim, Params_AM130622_L2$optiomDim) 

emLag_AM130622
emDim_AM130622

# unthresholded matrix

RM_AM130622 <- rp(y1 = AM130622_L1$SCR, y2 = AM130622_L2$SCR, emDim = emDim_AM130622, emLag = emLag_AM130622)

# estimate radius
emRad_AM130622 <- est_radius(RM = RM_AM130622, targetValue = .05)$Radius

emRad_AM130622


# Binary matrix
#RP_AM130622 <- mat_di2bi(RM_AM130622, emRad = emRad_AM130622)

# Recurrence measures
#Measures_AM130622 <- rp_measures(RP_AM130622)


# Triadic

# DE

# Vor290722
# estimating embedding & delay dimension
Params_Vor290722_L1 <- est_parameters(Vor290722_L1$SCR, doPlot = F) 
Params_Vor290722_L2 <- est_parameters(Vor290722_L2$SCR, doPlot = F) 

emLag_Vor290722 <- median(Params_Vor290722_L1$optimLag, Params_Vor290722_L2$optimLag)
emDim_Vor290722 <- max(Params_Vor290722_L1$optimDim, Params_Vor290722_L2$optiomDim) 

emLag_Vor290722
emDim_Vor290722

# unthresholded matrix

RM_Vor290722 <- rp(y1 = Vor290722_L1$SCR, y2 = Vor290722_L2$SCR, emDim = emDim_Vor290722, emLag = emLag_Vor290722)

# estimate radius
emRad_Vor290722 <- est_radius(RM = RM_Vor290722, targetValue = .05)$Radius

emRad_Vor290722

# Nach290722
# estimating embedding & delay dimension
Params_Nach290722_L1 <- est_parameters(Nach290722_L1$SCR, doPlot = F) 
Params_Nach290722_L2 <- est_parameters(Nach290722_L2$SCR, doPlot = F) 

emLag_Nach290722 <- median(Params_Nach290722_L1$optimLag, Params_Nach290722_L2$optimLag)
emDim_Nach290722 <- max(Params_Nach290722_L1$optimDim, Params_Nach290722_L2$optiomDim) 

emLag_Nach290722
emDim_Nach290722

# unthresholded matrix

RM_Nach290722 <- rp(y1 = Nach290722_L1$SCR, y2 = Nach290722_L2$SCR, emDim = emDim_Nach290722, emLag = emLag_Nach290722)

# estimate radius
emRad_Nach290722 <- est_radius(RM = RM_Nach290722, targetValue = .05)$Radius

emRad_Nach290722

# Nach010822
# estimating embedding & delay dimension
Params_Nach010822_L1 <- est_parameters(Nach010822_L1$SCR, doPlot = F) 
Params_Nach010822_L2 <- est_parameters(Nach010822_L2$SCR, doPlot = F) 

emLag_Nach010822 <- median(Params_Nach010822_L1$optimLag, Params_Nach010822_L2$optimLag)
emDim_Nach010822 <- max(Params_Nach010822_L1$optimDim, Params_Nach010822_L2$optiomDim) 

emLag_Nach010822
emDim_Nach010822

# unthresholded matrix

RM_Nach010822 <- rp(y1 = Nach010822_L1$SCR, y2 = Nach010822_L2$SCR, emDim = emDim_Nach010822, emLag = emLag_Nach010822)

# estimate radius
emRad_Nach010822 <- est_radius(RM = RM_Nach010822, targetValue = .05)$Radius

emRad_Nach010822

# Nach080822
# estimating embedding & delay dimension
Params_Nach080822_L1 <- est_parameters(Nach080822_L1$SCR, doPlot = F) 
Params_Nach080822_L2 <- est_parameters(Nach080822_L2$SCR, doPlot = F) 

emLag_Nach080822 <- median(Params_Nach080822_L1$optimLag, Params_Nach080822_L2$optimLag)
emDim_Nach080822 <- max(Params_Nach080822_L1$optimDim, Params_Nach080822_L2$optiomDim) 

emLag_Nach080822
emDim_Nach080822

# unthresholded matrix

RM_Nach080822<- rp(y1 = Nach080822_L1$SCR, y2 = Nach080822_L2$SCR, emDim = emDim_Nach080822, emLag = emLag_Nach080822)

# estimate radius
emRad_Nach080822 <- est_radius(RM = RM_Nach080822, targetValue = .05)$Radius

emRad_Nach080822

# Vor160922
# estimating embedding & delay dimension
Params_Vor160922_L1 <- est_parameters(Vor160922_L1$SCR, doPlot = F) 
Params_Vor160922_L2 <- est_parameters(Vor160922_L2$SCR, doPlot = F) 

emLag_Vor160922 <- median(Params_Vor160922_L1$optimLag, Params_Vor160922_L2$optimLag)
emDim_Vor160922 <- max(Params_Vor160922_L1$optimDim, Params_Vor160922_L2$optiomDim) 

emLag_Vor160922
emDim_Vor160922

# unthresholded matrix

RM_Vor160922<- rp(y1 = Vor160922_L1$SCR, y2 = Vor160922_L2$SCR, emDim = emDim_Vor160922, emLag = emLag_Vor160922)

# estimate radius
emRad_Vor160922 <- est_radius(RM = RM_Vor160922, targetValue = .05)$Radius

emRad_Vor160922

# Vor230922
# estimating embedding & delay dimension
Params_Vor230922_L1 <- est_parameters(Vor230922_L1$SCR, doPlot = F) 
Params_Vor230922_L2 <- est_parameters(Vor230922_L2$SCR, doPlot = F) 

emLag_Vor230922 <- median(Params_Vor230922_L1$optimLag, Params_Vor230922_L2$optimLag)
emDim_Vor230922 <- max(Params_Vor230922_L1$optimDim, Params_Vor230922_L2$optiomDim) 

emLag_Vor230922
emDim_Vor230922

# unthresholded matrix

RM_Vor230922 <- rp(y1 = Vor230922_L1$SCR, y2 = Vor230922_L2$SCR, emDim = emDim_Vor230922, emLag = emLag_Vor230922)

# estimate radius
emRad_Vor230922 <- est_radius(RM = RM_Vor230922, targetValue = .05)$Radius

emRad_Vor230922

# EN
# AM250722
# estimating embedding & delay dimension
Params_AM250722_L1 <- est_parameters(AM250722_L1$SCR, doPlot = F) 
Params_AM250722_L2 <- est_parameters(AM250722_L2$SCR, doPlot = F) 

emLag_AM250722 <- median(Params_AM250722_L1$optimLag, Params_AM250722_L2$optimLag)
emDim_AM250722 <- max(Params_AM250722_L1$optimDim, Params_AM250722_L2$optiomDim) 

emLag_AM250722
emDim_AM250722

# unthresholded matrix

RM_AM250722 <- rp(y1 = AM250722_L1$SCR, y2 = AM250722_L2$SCR, emDim = emDim_AM250722, emLag = emLag_AM250722)

# estimate radius
emRad_AM250722 <- est_radius(RM = RM_AM250722, targetValue = .05)$Radius

emRad_AM250722

# AM010822
# estimating embedding & delay dimension
Params_AM010822_L1 <- est_parameters(AM010822_L1$SCR, doPlot = F) 
Params_AM010822_L2 <- est_parameters(AM010822_L2$SCR, doPlot = F) 

emLag_AM010822 <- median(Params_AM010822_L1$optimLag, Params_AM010822_L2$optimLag)
emDim_AM010822 <- max(Params_AM010822_L1$optimDim, Params_AM010822_L2$optiomDim) 

emLag_AM010822
emDim_AM010822

# unthresholded matrix

RM_AM010822<- rp(y1 = AM010822_L1$SCR, y2 = AM010822_L2$SCR, emDim = emDim_AM010822, emLag = emLag_AM010822)

# estimate radius
emRad_AM010822 <- est_radius(RM = RM_AM010822, targetValue = .05)$Radius

emRad_AM010822

# AM101022
# estimating embedding & delay dimension
Params_AM101022_L1 <- est_parameters(AM101022_L1$SCR, doPlot = F) 
Params_AM101022_L2 <- est_parameters(AM101022_L2$SCR, doPlot = F) 

emLag_AM101022 <- median(Params_AM101022_L1$optimLag, Params_AM101022_L2$optimLag)
emDim_AM101022 <- max(Params_AM101022_L1$optimDim, Params_AM101022_L2$optiomDim) 

emLag_AM101022
emDim_AM101022

# unthresholded matrix

RM_AM101022 <- rp(y1 = AM101022_L1$SCR, y2 = AM101022_L2$SCR, emDim = emDim_AM101022, emLag = emLag_AM101022)

# estimate radius
emRad_AM101022 <- est_radius(RM = RM_AM101022, targetValue = .05)$Radius

emRad_AM101022

# AM171022
# estimating embedding & delay dimension
Params_AM171022_L1 <- est_parameters(AM171022_L1$SCR, doPlot = F) 
Params_AM171022_L2 <- est_parameters(AM171022_L2$SCR, doPlot = F) 

emLag_AM171022 <- median(Params_AM171022_L1$optimLag, Params_AM171022_L2$optimLag)
emDim_AM171022 <- max(Params_AM171022_L1$optimDim, Params_AM171022_L2$optiomDim) 

emLag_AM171022
emDim_AM171022

# unthresholded matrix

RM_AM171022 <- rp(y1 = AM171022_L1$SCR, y2 = AM171022_L2$SCR, emDim = emDim_AM171022, emLag = emLag_AM171022)

# estimate radius
emRad_AM171022 <- est_radius(RM = RM_AM171022, targetValue = .05)$Radius

emRad_AM171022

# PM281022
# estimating embedding & delay dimension
Params_PM281022_L1 <- est_parameters(PM281022_L1$SCR, doPlot = F) 
Params_PM281022_L2 <- est_parameters(PM281022_L2$SCR, doPlot = F) 

emLag_PM281022 <- median(Params_PM281022_L1$optimLag, Params_PM281022_L2$optimLag)
emDim_PM281022 <- max(Params_PM281022_L1$optimDim, Params_PM281022_L2$optiomDim) 

emLag_PM281022
emDim_PM281022

# unthresholded matrix

RM_PM281022 <- rp(y1 = PM281022_L1$SCR, y2 = PM281022_L2$SCR, emDim = emDim_PM281022, emLag = emLag_PM281022)

# estimate radius
emRad_PM281022 <- est_radius(RM = RM_PM281022, targetValue = .05)$Radius

emRad_PM281022

# Averaged radius

EDA_Radius = c(emRad_Nach051121, emRad_Nach091121, emRad_Nach191121, emRad_Vor231121, emRad_Nach261121, emRad_Vor261121, emRad_Vor101221, emRad_Nach040122, emRad_Nach110122, 
	emRad_Nach140122, emRad_Nach180222, emRad_Vor220222, emRad_Nach010322, emRad_Nach100622, emRad_Vor080722,
	emRad_Vor290722, emRad_Nach290722, emRad_Nach010822, emRad_Nach080822, emRad_Vor160922, emRad_Vor230922, 
	emRad_PM191121, emRad_AM180122, emRad_AM210122, emRad_PM280122, emRad_AM010222, emRad_AM150222, emRad_PM150222, 
	emRad_AM010322, emRad_PM290422, emRad_AM090522, emRad_PM130522, emRad_AM200522, emRad_AM100622, emRad_AM130622, 
	emRad_AM250722, emRad_AM010822, emRad_AM101022, emRad_AM171022, emRad_PM281022)

emRad_avg = mean(EDA_Radius)
emRad_avg

# Import EDA CRQA Measures
crqa_EDA <- read.csv("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/EDA_CRQA.csv") 

crqa_EDA$Condition <- as.factor(crqa_EDA$Condition)
crqa_EDA$Language <- as.factor(crqa_EDA$Language)

str(crqa_EDA)

library(dyplyr)

# summary statistics

# Average Diagonal Line
group_by(crqa_EDA, Condition) %>%
	summarise(
		count = n(),
		mean = mean(L, na.rm = T),
		sd = sd(L, na.rm = T)
	)
	
# MAx Diagonal Line
group_by(crqa_EDA, Condition) %>%
	summarise(
		count = n(),
		mean = mean(L_max, na.rm = T),
		sd = sd(L_max, na.rm = T)
	)
	
# DET

group_by(crqa_EDA, Condition) %>%
	summarise(
		count = n(),
		mean = mean(DET, na.rm = T),
		sd = sd(DET, na.rm = T)
	)

# TT (Trapping Time)

group_by(crqa_EDA, Condition) %>%
	summarise(
		count = n(),
		mean = mean(TT, na.rm = T),
		sd = sd(TT, na.rm = T)
	)
	
	
# COR 

group_by(crqa_EDA, Condition) %>%
	summarise(
		count = n(),
		mean = mean(COR, na.rm = T),
		sd = sd(COR, na.rm = T)
	)


# data visualisation
library(ggplot2)

# Avg Diagnoal line length

box_L <- ggplot(crqa_EDA, aes(x = Condition, y = L , color = Condition)) +
	geom_boxplot()+
	#scale_colour_discrete(name = "Experimental Condition",
	#breaks = c("1", "2"),
	#labels = c("non-JA", "JA"))+
	#geom_dotplot(binaxis = 'y', stackdir = 'center', dotsize = 1)
	geom_jitter(shape = 16, position = position_jitter(0.2))

box_L 

# DET

box_DET <- ggplot(crqa_EDA, aes(x = Condition, y = DET , color = Condition)) +
	geom_boxplot()+
	#scale_colour_discrete(name = "Experimental Condition",
	#breaks = c("1", "2"),
	#labels = c("non-JA", "JA"))+
	#geom_dotplot(binaxis = 'y', stackdir = 'center', dotsize = 1)
	geom_jitter(shape = 16, position = position_jitter(0.2))

box_DET

# One-way ANOVA

# Avg Diagnoal line length

L_AOV <- aov(L ~ Condition, data = crqa_EDA) 
summary(L_AOV)

# L_max

Lmax_AOV <- aov(L_max ~ Condition, data = crqa_EDA) 
summary(Lmax_AOV)

# DET

DET_AOV <- aov(DET ~ Condition, data = crqa_EDA) 
summary(DET_AOV)

# TT

TT_AOV <- aov(TT ~ Condition, data = crqa_EDA) 
summary(TT_AOV)

# COR
COR_AOV <- aov(COR ~ Condition, data = crqa_EDA) 
summary(COR_AOV)



# transDim discourse

# import transDim data

#install.packages("readxl")
library(readxl)

# control

# DE

# DE051121
dis_de051121 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_051121.xlsx")

dis_de051121$Learner1 <- factor(dis_de051121$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de051121$Learner2 <- factor(dis_de051121$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de051121 <- data.frame(unlist(dis_de051121, use.names = F))
table(mer_de051121)

# DE091121
dis_de091121 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_091121.xlsx")

dis_de091121$Learner1 <- factor(dis_de091121$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de091121$Learner2 <- factor(dis_de091121$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de091121 <- data.frame(unlist(dis_de091121, use.names = F))
table(mer_de091121)

# DE121121
dis_de121121 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_121121.xlsx")

dis_de121121$Learner1 <- factor(dis_de121121$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de121121$Learner2 <- factor(dis_de121121$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de121121 <- data.frame(unlist(dis_de121121, use.names = F))
table(mer_de121121)


# DE191121
dis_de191121 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_191121.xlsx")

dis_de191121$Learner1 <- factor(dis_de191121$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de191121$Learner2 <- factor(dis_de191121$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de191121 <- data.frame(unlist(dis_de191121, use.names = F))
table(mer_de191121)

# DE231121
dis_de231121 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_231121.xlsx")

dis_de231121$Learner1 <- factor(dis_de231121$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de231121$Learner2 <- factor(dis_de231121$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de231121 <- data.frame(unlist(dis_de231121, use.names = F))
table(mer_de231121)

# DE261121Vor
dis_de261121_vor <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_261121Vor.xlsx")

dis_de261121_vor$Learner1 <- factor(dis_de261121_vor$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

dis_de261121_vor$Learner2 <- factor(dis_de261121_vor$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de261121_vor <- data.frame(unlist(dis_de261121_vor, use.names = F))
table(mer_de261121_vor)

# DE261121Nach
dis_de261121_nach <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_261121Nach.xlsx")

dis_de261121_nach$Learner1 <- factor(dis_de261121_nach$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de261121_nach$Learner2 <- factor(dis_de261121_nach$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de261121_nach <- data.frame(unlist(dis_de261121_nach, use.names = F))
table(mer_de261121_nach)


# DE101221
dis_de101221 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_101221.xlsx")

dis_de101221$Learner1 <- factor(dis_de101221$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de101221$Learner2 <- factor(dis_de101221$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de101221 <- data.frame(unlist(dis_de101221, use.names = F))
table(mer_de101221)

# DE040122
dis_de040122 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_040122.xlsx")

dis_de040122$Learner1 <- factor(dis_de040122$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de040122$Learner2 <- factor(dis_de040122$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de040122 <- data.frame(unlist(dis_de040122, use.names = F))
table(mer_de040122)

# DE110122
dis_de110122 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Control/DE_110122.xlsx")

dis_de110122$Learner1 <- factor(dis_de110122$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de110122$Learner2 <- factor(dis_de110122$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de110122 <- data.frame(unlist(dis_de110122, use.names = F))
table(mer_de110122)

# EN

# EN191121
dis_en191121 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Control/EN_191121.xlsx")

dis_en191121$Learner1 <- factor(dis_en191121$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en191121$Learner2 <- factor(dis_en191121$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en191121 <- data.frame(unlist(dis_en191121, use.names = F))
table(mer_en191121)

# shared

# DE

# DE140122
dis_de140122 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Shared/DE_140122.xlsx")

dis_de140122$Learner1 <- factor(dis_de140122$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de140122$Learner2 <- factor(dis_de140122$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de140122 <- data.frame(unlist(dis_de140122, use.names = F))
table(mer_de140122)

# DE180222
dis_de180222 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Shared/DE_180222.xlsx")

dis_de180222$Learner1 <- factor(dis_de180222$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de180222$Learner2 <- factor(dis_de180222$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de180222 <- data.frame(unlist(dis_de180222, use.names = F))
table(mer_de180222)

# DE220222
dis_de220222 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Shared/DE_220222.xlsx")

dis_de220222$Learner1 <- factor(dis_de220222$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de220222$Learner2 <- factor(dis_de220222$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de220222 <- data.frame(unlist(dis_de220222, use.names = F))
table(mer_de220222)


# EN

# EN140122
dis_en140122 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_140122.xlsx")

dis_en140122$Learner1 <- factor(dis_en140122$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en140122$Learner2 <- factor(dis_en140122$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en140122 <- data.frame(unlist(dis_en140122, use.names = F))
table(mer_en140122)

# EN180122
dis_en180122 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_180122.xlsx")

dis_en180122$Learner1 <- factor(dis_en180122$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en180122$Learner2 <- factor(dis_en180122$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en180122 <- data.frame(unlist(dis_en180122, use.names = F))
table(mer_en180122)


# EN210122
dis_en210122 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_210122.xlsx")

dis_en210122$Learner1 <- factor(dis_en210122$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en210122$Learner2 <- factor(dis_en210122$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en210122 <- data.frame(unlist(dis_en210122, use.names = F))
table(mer_en210122)

# EN280122
dis_en280122 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_280122.xlsx")

dis_en280122$Learner1 <- factor(dis_en280122$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en280122$Learner2 <- factor(dis_en280122$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en280122 <- data.frame(unlist(dis_en280122, use.names = F))
table(mer_en280122)

# EN010222
dis_en010222 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_010222.xlsx")

dis_en010222$Learner1 <- factor(dis_en010222$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en010222$Learner2 <- factor(dis_en010222$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en010222 <- data.frame(unlist(dis_en010222, use.names = F))
table(mer_en010222)

# EN150222AM
dis_en150222_am <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_150222_AM.xlsx")

dis_en150222_am$Learner1 <- factor(dis_en150222_am$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en150222_am$Learner2 <- factor(dis_en150222_am$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en150222_am <- data.frame(unlist(dis_en150222_am, use.names = F))
table(mer_en150222_am)

# EN150222PM
dis_en150222_pm <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_150222_PM.xlsx")

dis_en150222_pm$Learner1 <- factor(dis_en150222_pm$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en150222_pm$Learner2 <- factor(dis_en150222_pm$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en150222_pm <- data.frame(unlist(dis_en150222_pm, use.names = F))
table(mer_en150222_pm)

# EN180222
dis_en180222 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_180222.xlsx")

dis_en180222$Learner1 <- factor(dis_en180222$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en180222$Learner2 <- factor(dis_en180222$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en180222 <- data.frame(unlist(dis_en180222, use.names = F))
table(mer_en180222)

# EN220222
dis_en220222 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Shared/EN_220222.xlsx")

dis_en220222$Learner1 <- factor(dis_en220222$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en220222$Learner2 <- factor(dis_en220222$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en220222 <- data.frame(unlist(dis_en220222, use.names = F))
table(mer_en220222)

# dyadic

# DE

# DE010322
dis_de010322 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Dyadic/DE_010322.xlsx")

dis_de010322$Learner1 <- factor(dis_de010322$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de010322$Learner2 <- factor(dis_de010322$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de010322 <- data.frame(unlist(dis_de010322, use.names = F))
table(mer_de010322)

# DE160522
dis_de160522 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Dyadic/DE_160522.xlsx")

dis_de160522$Learner1 <- factor(dis_de160522$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de160522$Learner2 <- factor(dis_de160522$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de160522 <- data.frame(unlist(dis_de160522, use.names = F))
table(mer_de160522)


# DE230522
dis_de230522 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Dyadic/DE_230522.xlsx")

dis_de230522$Learner1 <- factor(dis_de230522$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de230522$Learner2 <- factor(dis_de230522$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de230522 <- data.frame(unlist(dis_de230522, use.names = F))
table(mer_de230522)

# DE100622
dis_de100622 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Dyadic/DE_100622.xlsx")

dis_de100622$Learner1 <- factor(dis_de100622$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de100622$Learner2 <- factor(dis_de100622$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de100622 <- data.frame(unlist(dis_de100622, use.names = F))
table(mer_de100622)

# DE270622
dis_de270622 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Dyadic/DE_270622.xlsx")

dis_de270622$Learner1 <- factor(dis_de270622$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de270622$Learner2 <- factor(dis_de270622$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de270622 <- data.frame(unlist(dis_de270622, use.names = F))
table(mer_de270622)

# DE080722
dis_de080722 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/DE/Dyadic/DE_080722.xlsx")

dis_de080722$Learner1 <- factor(dis_de080722$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_de080722$Learner2 <- factor(dis_de080722$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_de080722 <- data.frame(unlist(dis_de080722, use.names = F))
table(mer_de080722)

# EN

# EN010322
dis_en010322 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Dyadic/EN_010322.xlsx")

dis_en010322$Learner1 <- factor(dis_en010322$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en010322$Learner2 <- factor(dis_en010322$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en010322 <- data.frame(unlist(dis_en010322, use.names = F))
table(mer_en010322)

# EN290422
dis_en290422 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Dyadic/EN_290422.xlsx")

dis_en290422$Learner1 <- factor(dis_en290422$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en290422$Learner2 <- factor(dis_en290422$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en290422 <- data.frame(unlist(dis_en290422, use.names = F))
table(mer_en290422)

# EN090522
dis_en090522 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Dyadic/EN_090522.xlsx")

dis_en090522$Learner1 <- factor(dis_en090522$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en090522$Learner2 <- factor(dis_en090522$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en090522 <- data.frame(unlist(dis_en090522, use.names = F))
table(mer_en090522)

# EN130522
dis_en130522 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Dyadic/EN_130522.xlsx")

dis_en130522$Learner1 <- factor(dis_en130522$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en130522$Learner2 <- factor(dis_en130522$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en130522 <- data.frame(unlist(dis_en130522, use.names = F))
table(mer_en130522)

# EN100622
dis_en100622 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Dyadic/EN_100622.xlsx")

dis_en100622$Learner1 <- factor(dis_en100622$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en100622$Learner2 <- factor(dis_en100622$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en100622 <- data.frame(unlist(dis_en100622, use.names = F))
table(mer_en100622)

# EN130622
dis_en130622 <- read_excel("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/transDim/EN/Dyadic/EN_130622.xlsx")

dis_en130622$Learner1 <- factor(dis_en130622$Learner1, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))
dis_en130622$Learner2 <- factor(dis_en130622$Learner2, levels = c("R0N0", "R1N0", "R2N0", "R0N1", "R1N1", "R2N1", "R0N2", "R1N2", "R2N2"))

mer_en130622 <- data.frame(unlist(dis_en130622, use.names = F))
table(mer_en130622)


# triadic

# DE

# EN

# One Way ANOVA for Condition 1~3
transFreq <- read.csv("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/Data/DiscourseData/TransFreq.csv")
transFreq$Condi <- as.factor(transFreq$Condi)
transFreq$Language <- as.factor(transFreq$Language)

group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R0N0, na.rm = T),
		sd = sd(R0N0, na.rm = T)
	)
	
group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R1N0, na.rm = T),
		sd = sd(R1N0, na.rm = T)
	)

group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R2N0, na.rm = T),
		sd = sd(R2N0, na.rm = T)
	)	

group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R0N1, na.rm = T),
		sd = sd(R0N1, na.rm = T)
	)	


group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R1N1, na.rm = T),
		sd = sd(R1N1, na.rm = T)
	)	

group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R2N1, na.rm = T),
		sd = sd(R2N1, na.rm = T)
	)	

group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R0N2, na.rm = T),
		sd = sd(R0N2, na.rm = T)
	)	
	

group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R1N2, na.rm = T),
		sd = sd(R1N2, na.rm = T)
	)	

group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(R2N2, na.rm = T),
		sd = sd(R2N2, na.rm = T)
	)	


#R0N0
R0N0_AOV <- aov(R0N0 ~ Condi, data = transFreq) 
summary(R0N0_AOV)

#R1N0
R1N0_AOV <- aov(R1N0 ~ Condi, data = transFreq) 
summary(R1N0_AOV)

#R2N0
R2N0_AOV <- aov(R2N0 ~ Condi, data = transFreq) 
summary(R2N0_AOV)

#R0N1
R0N1_AOV <- aov(R0N1 ~ Condi, data = transFreq) 
summary(R0N1_AOV)

#R1N1
R1N1_AOV <- aov(R1N1 ~ Condi, data = transFreq) 
summary(R1N1_AOV)

#R2N1
R2N1_AOV <- aov(R2N1 ~ Condi, data = transFreq) 
summary(R2N1_AOV)

#R0N2
R0N2_AOV <- aov(R0N2 ~ Condi, data = transFreq) 
summary(R0N2_AOV)

#R1N2
R1N2_AOV <- aov(R1N2 ~ Condi, data = transFreq) 
summary(R1N2_AOV)

#R2N2
R2N2_AOV <- aov(R2N2 ~ Condi, data = transFreq) 
summary(R2N2_AOV)


# simple linear regression model for  Trans ~ L
str(transFreq)
transFreq$transHigh <- (transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2) / (transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2 + transFreq$R0N0 + transFreq$R1N0 
	+ transFreq$R0N1 + transFreq$R0N2 + transFreq$R2N0)

sum(transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2, na.rm = T) 

sum(transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2 + transFreq$R0N0 + transFreq$R1N0 + transFreq$R0N1 + transFreq$R0N2 + transFreq$R2N0, na.rm = T) 

syncTrans <- lm(transHigh ~ L, transFreq)
summary(syncTrans)
	
# Novelty
transFreq$transN1 <- (transFreq$R0N1 + transFreq$R1N1 + transFreq$R2N1) / (transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2 + transFreq$R0N0 + transFreq$R1N0 
	+ transFreq$R0N1 + transFreq$R0N2 + transFreq$R2N0)
	
transFreq$transN2 <- (transFreq$R0N2 + transFreq$R1N2 + transFreq$R2N2) / (transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2 + transFreq$R0N0 + transFreq$R1N0 
	+ transFreq$R0N1 + transFreq$R0N2 + transFreq$R2N0)
	
transFreq$transN <- (transFreq$R0N1 + transFreq$R1N1 + transFreq$R2N1 + transFreq$R0N2 + transFreq$R1N2 + transFreq$R2N2) / (transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2 + transFreq$R0N0 + transFreq$R1N0 + transFreq$R0N1 + transFreq$R0N2 + transFreq$R2N0)


# Reference
transFreq$transR1 <- (transFreq$R1N0 + transFreq$R1N1 + transFreq$R1N2) / (transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2 + transFreq$R0N0 + transFreq$R1N0 
	+ transFreq$R0N1 + transFreq$R0N2 + transFreq$R2N0)
	
transFreq$transR2 <- (transFreq$R2N0 + transFreq$R2N1 + transFreq$R2N2) / (transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2 + transFreq$R0N0 + transFreq$R1N0 
	+ transFreq$R0N1 + transFreq$R0N2 + transFreq$R2N0)
	
transFreq$transR <- (transFreq$R1N0 + transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N0 + transFreq$R2N1 + transFreq$R2N2) / (transFreq$R1N1 + transFreq$R1N2 + transFreq$R2N1 + transFreq$R2N2 + transFreq$R0N0 + transFreq$R1N0 + transFreq$R0N1 + transFreq$R0N2 + transFreq$R2N0)

# ANOVA	
transN_AOV <- aov(transN ~ Condi, data = transFreq) 
summary(transN_AOV)

transR_AOV <- aov(transR ~ Condi, data = transFreq) 
summary(transR_AOV)

transN1_AOV <- aov(transN1 ~ Condi, data = transFreq) 
summary(transN1_AOV)

transN2_AOV <- aov(transN2 ~ Condi, data = transFreq) 
summary(transN2_AOV)

transR1_AOV <- aov(transR1 ~ Condi, data = transFreq) 
summary(transR1_AOV)

transR2_AOV <- aov(transR2 ~ Condi, data = transFreq) 
summary(transR2_AOV)


group_by(transFreq, Condi) %>%
	summarise(
		count = n(),
		mean = mean(transHigh, na.rm = T),
		sd = sd(transHigh, na.rm = T)
	)	

# correlation
cor.test(transFreq$L, transFreq$transHigh, alternative = "two.sided", method = "pearson")

cor.test(transFreq$L, transFreq$transN1, alternative = "two.sided", method = "pearson")
cor.test(transFreq$L, transFreq$transN2, alternative = "two.sided", method = "pearson")
cor.test(transFreq$L, transFreq$transR1, alternative = "two.sided", method = "pearson")
cor.test(transFreq$L, transFreq$transR2, alternative = "two.sided", method = "pearson")