#### Bayesian analysis - "Colour Without Sight: How Visually Impaired Individuals Engage With Colour"

# Author: Nina Vreugdenhil
# Affiliation: University of Amsterdam
# Description: Bayesian analysis of the data from the questionnaire about colour experiences and associations that was completed by 46 individuals
# Note: these analyses were done in the JASP environment, this code might not work outside of this environment. 

# Import necessary libraries
library(here)

# Load in data
loc_data <- here("Processed_Data", "data_questionnaire_filtered.csv")
df <- read.csv(loc_data)

# Filter data
df_TB <- df[df$Beschrijving.zicht == "Totaal blind: ik neem helemaal geen licht waar", ]
df_blind <- df[df$Beschrijving.zicht == "Mijn gezichtsscherpte is maximaal 2%, ik kan opgestoken vingers tellen op 1 meter afstand.", ]
df_FB <- df[df$Beschrijving.zicht == "Mijn gezichtsscherpte is tussen de 2% en 5%, ik zie licht en de omtrek van mensen en voorwerpen, maar mijn visuele beperking heeft grote invloed op mijn leven.", ]
df_other <- df[df$Beschrijving.zicht == "Anders, namelijk:", ]
df_CB_TB <- df_TB[df_TB$Leeftijd_zicht_nu == 0, ]
df_LB_TB <- df_TB[df_TB$Leeftijd.zicht.nu > 0, ]

#################### CMCs in congenitally & totally blind participants ############################

# Is a lemon fast or slow? Congenitally & totally blind participants
jaspFrequencies::BinomialTestBayesian(
  data = df_CB_TB,
  version = "0.19.2",
  formula =  ~ Citroen,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Is a boulder sweet or sour? Congenitally & totally blind participants
jaspFrequencies::BinomialTestBayesian(
  data = df_CB_TB,
  version = "0.19.2",
  formula =  ~ Kei,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Is red or yellow heavier? Congenitally & totally blind participants
jaspFrequencies::BinomialTestBayesian(
  data = df_CB_TB,
  version = "0.19.2",
  formula =  ~ `Kleur zwaarder`,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Does black or white make a higher sound? Congenitally & totally blind participants
jaspFrequencies::BinomialTestBayesian(
  data = df_CB_TB,
  version = "0.19.2",
  formula =  ~ Q47,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

############################ CMCs in non-congenitally & totally blind participants ##############

# Is a lemon fast or slow? Non-congenitally & totally blind participants
jaspFrequencies::BinomialTestBayesian(
  data = df_LB_TB,
  version = "0.19.2",
  formula =  ~ Citroen,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Is a boulder sweet or sour? Non-congenitally & totally blind participants
jaspFrequencies::BinomialTestBayesian(
  data = df_LB_TB,
  version = "0.19.2",
  formula =  ~ Kei,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Is red or yellow heavier? Non-congenitally & totally blind participants
jaspFrequencies::BinomialTestBayesian(
  data = df_LB_TB,
  version = "0.19.2",
  formula =  ~ `Kleur zwaarder`,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Does black or white make a higher sound? Non-congenitally & totally blind participants
jaspFrequencies::BinomialTestBayesian(
  data = df_LB_TB,
  version = "0.19.2",
  formula =  ~ Q47,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

########################## Favourite colour #####################################

# Favourite colour - totally blind
jaspFrequencies::BinomialTestBayesian(
  data = df_TB,
  version = "0.19.2",
  formula =  ~ `Favoriete kleur`,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Favourite colour - Blind
jaspFrequencies::BinomialTestBayesian(
  data = df_blind,
  version = "0.19.2",
  formula =  ~ `Favoriete kleur`,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Favourite colour - Functionally blind
jaspFrequencies::BinomialTestBayesian(
  data = df_FB,
  version = "0.19.2",
  formula =  ~ `Favoriete kleur`,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")

# Favourite colour - other
jaspFrequencies::BinomialTestBayesian(
  data = df_other,
  version = "0.19.2",
  formula =  ~ `Favoriete kleur`,
  alternative = "twoSided",
  bayesFactorType = "BF10",
  bfSequentialPlot = FALSE,
  descriptivesPlot = FALSE,
  descriptivesPlotCiLevel = 0.95,
  plotHeight = 320,
  plotWidth = 480,
  priorA = "1",
  priorB = "1",
  priorPosteriorPlot = FALSE,
  priorPosteriorPlotAdditionalInfo = TRUE,
  testValue = "0.5")
