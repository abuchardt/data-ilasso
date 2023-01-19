
###################################################
### code chunk number 2: step2.Rnw:20-33
###################################################
rm(list=ls())
gc()
source(file="step0.R")

seed.in <- 1234

i <- as.numeric(Sys.getenv("SGE_TASK_ID")) # Index of current process
N <- as.numeric(Sys.getenv("SGE_TASK_LAST")) # Total number of processes
name <- Sys.getenv("JOB_NAME")

name2 <- paste0("catStep1",strat,xaxis,truth,W,N,p,n)
filename <- paste('output/',name2,'-',i,'.rda',sep="")
load(file=filename)


###################################################
### code chunk number 3: step2.Rnw:36-53 
###################################################
hierarchy <- "Strong"#"Weak"#"Anti"#"No"#
STEP2 <- step2(hierarchy=hierarchy, truth=truth, strat=strat, xaxis=xaxis, 
                 scree=scree, X=X, design=design, i=i, W=W, N=N, p=p, n=n, 
                 bet1=bet1, bet2=bet2, bet3=NULL, bet12=bet12, rh=NULL, mu=NULL)   
name2 <- paste0("catStep2",strat,xaxis,truth,hierarchy,W,N,p,n)
filename <- paste('output/',name2,'-',i,'.rda',sep="")
save(STEP2,file=filename)

hierarchy <- "Weak"#"Anti"#"No"#
STEP2 <- step2(hierarchy=hierarchy, truth=truth, strat=strat, xaxis=xaxis, 
                 scree=scree, X=X, design=design, i=i, W=W, N=N, p=p, n=n, 
                 bet1=bet1, bet2=bet2, bet3=NULL, bet12=bet12, rh=NULL, mu=NULL)   
name2 <- paste0("catStep2",strat,xaxis,truth,hierarchy,W,N,p,n)
filename <- paste('output/',name2,'-',i,'.rda',sep="")
save(STEP2,file=filename)


###################################################
### code chunk number 4: step2.Rnw:56-74
###################################################
hierarchy <- "Anti"#"No"#
STEP2 <- step2(hierarchy=hierarchy, truth=truth, strat=strat, xaxis=xaxis, 
                 scree=scree, X=X, design=design, i=i, W=W, N=N, p=p, n=n, 
                 bet1=bet1, bet2=bet2, bet3=NULL, bet12=bet12, rh=NULL, mu=NULL)   
name2 <- paste0("catStep2",strat,xaxis,truth,hierarchy,W,N,p,n)
filename <- paste('output/',name2,'-',i,'.rda',sep="")
save(STEP2,file=filename)

hierarchy <- "No"
scree <- "GSR"
STEP2 <- step2(hierarchy=hierarchy, truth=truth, strat=strat, xaxis=xaxis, 
                 scree=scree, X=X, design=design, i=i, W=W, N=N, p=p, n=n, 
                 bet1=bet1, bet2=bet2, bet3=NULL, bet12=bet12, rh=NULL, mu=NULL)   
name2 <- paste0("catStep2",strat,xaxis,truth,hierarchy,W,N,p,n)
filename <- paste('output/',name2,'-',i,'.rda',sep="")
save(STEP2,file=filename)


