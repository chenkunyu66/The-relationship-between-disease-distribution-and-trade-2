library(foreign)
library(corpcor)
library(tseries)
library(quantmod)
library(plyr)
library(dplyr)
library(DMwR)
library(Hmisc)

data<-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DEMO_I.XPT")
data_food2<-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DR2IFF_I.XPT")
data_food3<-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DR1TOT_I.XPT")
data_food4<-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DR2TOT_I.XPT")
data_food1<-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DR2IFF_I.XPT")



data_question1 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/ACQ_I.XPT")

data_question2 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/ALQ_I.XPT")

questionnaire_1 = left_join(data_question1, data_question2, by = "SEQN")
rm(data_question1)
rm(data_question2)
gc()

questionnaire_1 = left_join(data_question1, data_food1, by = "SEQN")
questionnaire_1 = left_join(data_question1, data_food2, by = "SEQN")
questionnaire_1 = left_join(data_question1, data_food3, by = "SEQN")
questionnaire_1 = left_join(data_question1, data_food4, by = "SEQN")
questionnaire_1 = left_join(data_question1, data, by = "SEQN")


rm(data_food2)
rm(data_food3)
rm(data_food4)
rm(data)
rm(data_food1)
gc()

data_question3 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/AUQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question3, by = "SEQN")
rm(data_question3)
gc()
data_question4 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/BPQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question4, by = "SEQN")
rm(data_question4)
gc()
data_question5 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/CBQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question5, by = "SEQN")
rm(data_question5)
gc()
data_question6 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/CDQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question6, by = "SEQN")
rm(data_question6)
gc()
data_question7 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DBQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question7, by = "SEQN")
rm(data_question7)
gc()
data_question8 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DEQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question8, by = "SEQN")
rm(data_question8)
gc()
data_question9 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DIQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question9, by = "SEQN")
rm(data_question9)
gc()
data_question10 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DlQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question10, by = "SEQN")
rm(data_question10)
gc()
dpq <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DPQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, dpq, by = "SEQN")
gc()
data_question12 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/DUQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question12, by = "SEQN")
rm(data_question12)
gc()
data_question13 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/ECQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question13, by = "SEQN")
rm(data_question13)
gc()
data_question14 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/HEQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question14, by = "SEQN")
rm(data_question14)
gc()
data_question15 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/HIQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question15, by = "SEQN")
rm(data_question15)
gc()
data_question16 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/HOQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question16, by = "SEQN")
rm(data_question16)
gc()
data_question17 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/HSQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question17, by = "SEQN")
rm(data_question17)
gc()
data_question18 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/HUQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question18, by = "SEQN")
rm(data_question18)
gc()
data_question19 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/IMQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question19, by = "SEQN")
rm(data_question19)
gc()
data_question20 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/INQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question20, by = "SEQN")
rm(data_question20)
gc()
data_question21 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/KIQ_U_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question21, by = "SEQN")
rm(data_question21)
gc()
data_question22 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/MCQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question22, by = "SEQN")
rm(data_question22)
gc()
data_question23 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/OCQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question23, by = "SEQN")
rm(data_question23)
gc()
data_question24 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/OHQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question24, by = "SEQN")
rm(data_question24)
gc()
data_question25 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/PAQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question25, by = "SEQN")
rm(data_question25)
gc()
data_question26 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/PFQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question26, by = "SEQN")
rm(data_question26)
gc()
data_question27 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/RHQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question27, by = "SEQN")
rm(data_question27)
gc()
data_question28 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/MCQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question28, by = "SEQN")
rm(data_question28)
gc()
data_question29 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/OCQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question29, by = "SEQN")
rm(data_question29)
gc()
data_question30 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/OHQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question30, by = "SEQN")
rm(data_question30)
gc()
data_question31 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/PAQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question31, by = "SEQN")
rm(data_question31)
gc()
data_question32 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/PFQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question32, by = "SEQN")
rm(data_question32)
gc()
data_question33 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/RHQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question33, by = "SEQN")
rm(data_question33)
gc()

data_question39 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/SMQFAM_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question39, by = "SEQN")
rm(data_question39)
gc()
data_question40 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/SMQRTU_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question40, by = "SEQN")
rm(data_question40)
gc()
data_question41 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/SMQSHS_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question41, by = "SEQN")
rm(data_question41)
gc()
data_question42 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/SXQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question42, by = "SEQN")
rm(data_question42)
gc()
data_question43 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/VTQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question43, by = "SEQN")
rm(data_question43)
gc()
data_question44 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/WHQ_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question44, by = "SEQN")
rm(data_question44)
gc()
data_question45 <-read.xport("/Users/chenkunyu/Desktop/数据分析/第二次/WHQMEC_I.XPT")
questionnaire_1 = left_join(questionnaire_1, data_question45, by = "SEQN")
rm(data_question45)
gc()

# dpq = na.omit(dpq)
# temp = vector(mode="numeric", length = nrow(dpq))
# dpq = cbind(dpq,temp)
# for (i in 1:nrow(dpq)){
#   if ((dpq[i,2]>=2)|(dpq[i,3]>=2)|(dpq[i,4]>=2)|(dpq[i,5]>=2)|(dpq[i,6]>=2)|(dpq[i,7]>=2)|(dpq[i,8]>=2)|(dpq[i,9]>=2)|(dpq[i,10]>=2))
#     dpq[i,12]<-1
#   else dpq[i,12]<-0
# }
# 
# dpq = dpq[,c(1,12)]
all = questionnaire_1
all[is.na(all)] <- 0
newAll <- all
gc()
newAll = centralImputation(newAll)
gc()
cov = cov(newAll, method = "spearman")
gc()
cor = cor(newAll, method = "spearman")
gc()
p = cor2pcor(cov)
gc()

