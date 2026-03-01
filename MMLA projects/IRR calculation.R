# calculating IRR from training document

#irrCalculation <- rbind(new_Control, new_Shared)

# Epistemic dimension
Epi_dim <- read.csv("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/IRR_EpiDim.csv")
Epi_dim

irr_Epi_dim <- t(as.matrix(Epi_dim))
irr_Epi_dim

library(irr)

Epi_kalpha <- kripp.alpha(irr_Epi_dim, method = "ordinal")
Epi_kalpha

# Transactivity dimension
Trans_Dim <- read.csv("/Users/lena/Documents/しごと/Studies けんきゅう/Study1/IRR_TransDim.csv")

irr_Trans_dim <- t(as.matrix(Trans_Dim))

library(irr)

Trans_kalpha <- kripp.alpha(irr_Trans_dim, method = "ordinal")
Trans_kalpha
