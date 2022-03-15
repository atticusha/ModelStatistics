#Ind vs eCnj
#============================================================================================================
### VII
ii.ive.glmer.morph <- glmer(Ind ~  (1|Lemma), data=subset(AWive, II), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/morphonly/ive-ii.txt')
print(summary(ii.ive.glmer.morph)$coefficients, max.print = NA)
sink(NULL)

### VAI
ai.ive.glmer.morph <- glmer(Ind ~ RdplW + Pl.actor + actor.1 + actor.2 + actor.4 + (1|Lemma), data=subset(AWive, AI), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'SummaryTables/man/morphonly/ive-ai.txt')
print(summary(ai.ive.glmer.morph)$coefficients, max.print = NA)
sink(NULL)

### VTI
ti.ive.glmer.morph <- glmer(Ind ~ actor.1 + actor.2 + actor.4 + Sg.goal + NI.object.goal + Pl.goal + Px1Sg.goal + Px3Pl.goal + (1|Lemma), data=subset(AWive, TI), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'SummaryTables/man/morphonly/ive-ti.txt')
print(summary(ti.ive.glmer.morph)$coefficients, max.print = NA)
sink(NULL)

### VTA
ta.ive.glmer.morph <- glmer(Ind ~ Sg.actor + D.actor + Pers.actor + actor.1 + actor.4 + actor.2 + goal.3 + goal.4  +  (1|Lemma), data=subset(AWive, TA), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'SummaryTables/man/morphonly/ive-ta.txt')
print(summary(ta.ive.glmer.morph)$coefficients, max.print = NA)
sink(NULL)


#============================================================================================================
# Ind vs. cnj
#============================================================================================================
### VII
ii.indcnj.glmer.morph <- glmer(Ind ~  (1|Lemma), data=subset(AWnimp, II), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/morphonly/ivc-ii.txt')
print(summary(ii.indcnj.glmer.morph)$coefficients, max.print = NA)
sink(NULL)

### VAI
ai.indcnj.glmer.morph <- glmer(Ind ~ RdplW + Pl.actor + actor.1 + actor.2 + actor.4 + (1|Lemma), data=subset(AWnimp, AI), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/morphonly/ivc-ai.txt')
print(summary(ai.indcnj.glmer.morph)$coefficients, max.print = NA)
sink(NULL)

### VTI
ti.indcnj.glmer.morph <- glmer(Ind ~ actor.1 + actor.2 + actor.4 + Sg.goal + Pl.goal + Px1Sg.goal + Px3Pl.goal + (1|Lemma), data=subset(AWnimp, TI), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/morphonly/ivc-ti.txt')
print(summary(ti.indcnj.glmer.morph)$coefficients, max.print = NA)
sink(NULL)

### VTA
ta.indcnj.glmer.morph <- glmer(Ind ~ Sg.actor + D.actor + Pers.actor + actor.1 + actor.4 + actor.2 + goal.3 + goal.4 + (1|Lemma), data=subset(AWnimp, TA), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/morphonly/ivc-ta.txt')
print(summary(ta.indcnj.glmer.morph)$coefficients, max.print = NA)
sink(NULL)

