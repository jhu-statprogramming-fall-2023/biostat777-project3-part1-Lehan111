---
editor_options: 
  markdown: 
    wrap: 72
---

# survival <img src="man/figures/logo.png" align="right" height="120"/>

Original GitHub link: <https://github.com/therneau/survival> 

Deployed website: <https://github.com/jhu-statprogramming-fall-2023/biostat777-project3-part1-Lehan111>

Original author: Terry Therneau; website author: Lehan Xiao


5 things I customized in pkgdown website:

1. Add articles.

2. Add reference.

3. Apply the Cerulean theme to website.

4. Customize description

5. Edit index


# Breif introduction

This is the source code for the "survival" package in R. It gets posted
to the comprehensive R archive (CRAN) at intervals, each such posting
preceded a throrough test. (I run the test suite for all 800+ packages
that depend on survival.) In general, each new push to CRAN will update
the second term of the version number, e.g. 2.40-5 to 2.41-0. Updates
only to the github source increment after the dash. (If an error is
found in the process of CRAN submission then the published CRAN version
may be x.yy-1 or even x.yy-2 or 3.) This directory is a shadow of the
'real' respository, which is in mercurial on my own machine. As such I
don't use git for pull requests. I will often copy code from a
suggestion, however; they don't get ignored!

The vignette2 directory contains material that is not posted to CRAN.
The file "tutorial.Rnw", for instance, requires data from the mstate
package. Survival is a recommended package, and such packages can only
depend on other recommended packages. (This allows for a consistent
distribution bundle.) The sas.Rnw vignette has a discussion of compute
time and takes too long to run, etc.

A large portion of the source is found in the noweb directory, and is
based on the literate programming ideas of Knuth. The reason is that it
allows more complete documentation of the methods. I can have things
like blocks of equations, and find having the "real" equations side by
side with the code makes it much easier to get it right. Anyone who
wants to study the methods is advised to perform "make code.pdf" in the
noweb directory and then look at the relevant portion of that pdf file.
Any file in the R or src directories that starts with an "automatically
generated ..." comment should NOT be modified directly, instead work
with the noweb source. (You will need to have the noweb package loaded
in order to run the Makefile.)

You should be able to install this using the following R code:
library(devtools); install_github("therneau/survival")

Note that good practice would be to make derived files such as
R/tmerge.R "on the fly" using a configure script; that way there would
not be a danger of someone trying to modify the derived file rather than
the actual source (noweb/tmerge.Rnw). However, I was not able to create
a configure file that worked reliably on all platforms, and voted for
usability rather than purity.

# Exported functions

survival::Surv Create a Survival Object

survival::Surv2 Create a survival object

survival::Surv2data Convert data from timecourse to (time1,time2) style

survival::Math.Surv Methods for Surv objects

survival::aareg Aalen's additive regression model for censored data

survival::aeqSurv Adjudicate near ties in a Surv object

survival::aggregate.survfit Average survival curves

survival::agreg.fit Cox model fitting functions

survival::aml Acute Myelogenous Leukemia survival data

survival::anova.coxph Analysis of Deviance for a Cox model.

survival::basehaz Alias for the survfit function

survival::bladder Bladder Cancer Recurrences

survival::blogit Bounded link functions

survival::cch Fits proportional hazards regression model to case-cohort
data

survival::cgd Chronic Granulotamous Disease data

survival::cgd0 Chronic Granulotomous Disease data

survival::clogit Conditional logistic regression

survival::cluster Identify clusters.

survival::colon Chemotherapy for Stage B/C colon cancer

survival::concordance Compute the concordance statistic for data or a
model

survival::concordancefit Compute the concordance

survival::cox.zph Test the Proportional Hazards Assumption of a Cox
Regression

survival::coxph Fit Proportional Hazards Regression Model

survival::coxph.control Ancillary arguments for controlling coxph fits

survival::coxph.detail Details of a Cox Model Fit

survival::coxph.object Proportional Hazards Regression Object

survival::coxph.wtest Compute a quadratic form

survival::coxphms.object Multi-state Proportional Hazards Regression
Object

survival::coxsurv.fit A direct interface to the 'computational engine'
of survfit.coxph

survival::diabetic Ddiabetic retinopathy

survival::finegray Create data for a Fine-Gray model

survival::frailty Random effects terms

survival::gbsg Breast cancer data sets used in Royston and Altman (2013)

survival::jasa1 Stanford Heart Transplant data

survival::is.ratetable Verify that an object is of class ratetable.

survival::kidney Kidney catheter data

survival::levels.Surv Return the states of a multi-state Surv object

survival::lines.survfit Add Lines or Points to a Survival Plot

survival::logLik.coxph logLik method for a Cox model

survival::mgus Monoclonal gammopathy data

survival::model.frame.coxph Model.frame method for coxph objects

survival::model.matrix.coxph Model.matrix method for coxph models

survival::myeloma Survival times of patients with multiple myeloma

survival::ovarian Ovarian Cancer Survival Data

survival::plot.cox.zph Graphical Test of Proportional Hazards

survival::plot.survfit Plot method for 'survfit' objects

survival::predict.coxph Predictions for a Cox model

survival::predict.survreg Predicted Values for a 'survreg' Object

survival::print.aareg Print an aareg object

survival::print.summary.survexp Print Survexp Summary

survival::print.survfit Print a Short Summary of a Survival Curve

survival::pseudo Pseudo values for survival.

survival::pspline Smoothing splines using a pspline basis

survival::pyears Person Years

survival::quantile.survfit Quantiles from a survfit object

survival::ratetable Allow ratetable() terms in a model

survival::ratetableDate Convert date objects to ratetable form

survival::rats Rat treatment data from Mantel et al

survival::rats2 Rat data from Gail et al.

survival::residuals.coxph.penal Calculate Residuals for a 'coxph' Fit

survival::residuals.survreg Compute Residuals for 'survreg' Objects

survival::ridge Ridge regression

survival::rotterdam Breast cancer data set used in Royston and Altman
(2013)

survival::royston Compute Royston's D for a Cox model

survival::rttright Compute redistribute-to-the-right weights

survival::stanford2 More Stanford Heart Transplant data

survival::statefig Draw a state space figure.

survival::strata Identify Stratification Variables

survival::summary.aareg Summarize an aareg fit

survival::summary.coxph Summary method for Cox models

survival::summary.pyears Summary function for pyears objecs

survival::summary.survexp Summary function for a survexp object

survival::summary.survfit Summary of a Survival Curve

survival::survSplit Split a survival data set at specified times

survival::survcheck Checks of a survival data set

survival::survcondense Shorten a (time1, time2) survival dataset

survival::survdiff Test Survival Curve Differences

survival::survexp Compute Expected Survival

survival::survexp.fit Compute Expected Survival

survival::survexp.object Expected Survival Curve Object

survival::survexp.us Census Data Sets for the Expected Survival and
Person Years Functions

survival::survfit Create survival curves

survival::survfit.coxph Compute a Survival Curve from a Cox model

survival::survfit.formula Compute a Survival Curve for Censored Data

survival::survfit.matrix Create Aalen-Johansen estimates of multi-state
survival from a matrix of hazards.

survival::survfit.object Survival Curve Object

survival::survfit0 Convert the format of a survfit object.

survival::survfitcoxph.fit A direct interface to the 'computational
engine' of survfit.coxph

survival::survival-deprecated Deprecated functions in package 'survival'

survival::survival-internal Internal survival functions

survival::survobrien O'Brien's Test for Association of a Single Variable
with Survival

survival::survreg Regression for a Parametric Survival Model

survival::survreg.control Package options for survreg and coxph

survival::survreg.distributions Parametric Survival Distributions

survival::survreg.object Parametric Survival Model Object

survival::survregDtest Verify a survreg distribution

survival::tcut Factors for person-year calculations

survival::tmerge Time based merge for survival data

survival::untangle.specials Help Process the 'specials' Argument of the
'terms' Function.

survival::vcov.coxph Variance-covariance matrix

survival::xtfrm.Surv Sorting order for Surv objects

survival::yates Population prediction

survival::yates_setup Method for adding new models to the 'yates'
function.

# Basic example

```         
survfit(Surv(time, event) ~ group, data = your_data)
```
