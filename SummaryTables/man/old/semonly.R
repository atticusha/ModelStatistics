#Ind vs eCnj
#============================================================================================================
### VII
ii.ive.glmer.sem <- glmer(Ind ~  (1|Lemma), data=subset(AWive, II), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/semonly/ive-ii.txt')
print(summary(ii.ive.glmer.sem)$coefficients, max.print = NA)
sink(NULL)

### VAI
ai.ive.glmer.sem <- glmer(Ind ~ PV.Move + PV.Qual + PV.StartFin + PV.Discourse + PV.Time + AI.do + AI.state + AI.speech + AI.cooking + AI.reflexive + AI.plural + NA.persons.actor + NDA.Relations.actor + (1|Lemma), data=subset(AWive, AI), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/semonly/ive-ai.txt')
print(summary(ai.ive.glmer.sem)$coefficients, max.print = NA)
sink(NULL)

### VTI
ti.ive.glmer.sem <- glmer(Ind ~ PV.Time + PV.Qual + PV.Discourse + TI.cognitive + TI.speech + NA.persons.actor + NI.object.goal + NI.natural.force.goal + NI.nature.plants.goal + NI.place.goal + NDI.Body.goal + (1|Lemma), data=subset(AWive, TI), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/semonly/ive-ti.txt')
print(summary(ti.ive.glmer.sem)$coefficients, max.print = NA)
sink(NULL)

### VTA
ta.ive.glmer.sem <- glmer(Ind ~ PV.Move + PV.Discourse + PV.Position + PV.Qual + PV.Time + TA.speech + TA.do + TA.cognitive + TA.food + NA.persons.goal + NA.beast.of.burden.goal +  (1|Lemma), data=subset(AWive, TA), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/semonly/ive-ta.txt')
print(summary(ta.ive.glmer.sem)$coefficients, max.print = NA)
sink(NULL)


#============================================================================================================
# Ind vs. cnj
#============================================================================================================
### VII
ii.indcnj.glmer.sem <- glmer(Ind ~  (1|Lemma), data=subset(AWnimp, II), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/semonly/ivc-ii.txt')
print(summary(ii.indcnj.glmer.sem)$coefficients, max.print = NA)
sink(NULL)

### VAI
ai.indcnj.glmer.sem <- glmer(Ind ~ PV.Move + PV.Time + PV.Position + PV.Qual + PV.Discourse + PV.StartFin + AI.do + AI.state + AI.speech + AI.reflexive + AI.cooking + AI.health + AI.pray + RdplW + NA.persons.actor + (1|Lemma), data=subset(AWnimp, AI), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/semonly/ivc-ai.txt')
print(summary(ai.indcnj.glmer.sem)$coefficients, max.print = NA)
sink(NULL)

### VTI
ti.indcnj.glmer.sem <- glmer(Ind ~  PV.Time + PV.Discourse + PV.Qual + TI.cognitive + TI.money.count + Pron.actor + NI.object.goal + NI.nominal.goal + NI.natural.force.goal + NI.nature.plants.goal + NI.place.goal + NDI.Body.goal + (1|Lemma), data=subset(AWnimp, TI), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/semonly/ivc-ti.txt')
print(summary(ti.indcnj.glmer.sem)$coefficients, max.print = NA)
sink(NULL)

### VTA
ta.indcnj.glmer.sem <- glmer(Ind ~ PV.Time + PV.Move + PV.Position + PV.Discourse + PV.StartFinWantCan + PV.Qual + TA.speech + TA.do + TA.cognitive + TA.food + TA.money.count + NA.persons.goal + (1|Lemma), data=subset(AWnimp, TA), family=binomial, control=glmerControl(optimizer = "bobyqa"))

sink(file = 'Multi/SummaryTables/man/semonly/ivc-ta.txt')
print(summary(ta.indcnj.glmer.sem)$coefficients, max.print = NA)
sink(NULL)

