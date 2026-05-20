## rtrek backburner

rdat2 %>% #2nd Lt volt a legtöbb, akinek volt légi győzelme
  group_by(pilot_type, hasvictory, rank_at_graduation) %>% 
  summarize(n=n())

#EDA-ból
#Jól néz ki, viszont ennél szerintem sokkal egyszerűbb egy barplotot használni
rdat2 %>% 
  mutate(number_of_aerial_victory_credits = (number_of_aerial_victory_credits + rnorm(nrow(rdat2), 0, 0.1))) %>% 
  ggplot(aes(y=number_of_aerial_victory_credits,x=rnorm(nrow(rdat2),1,0.2)))+geom_point()+geom_hline(yintercept=0.5) #itt látszik jól, hogy a többségnek egyáltalán nem volt légi győzelme. Ez amúgy jól 