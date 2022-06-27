myvars <- c("Name", "BetweenGroupCondition", "Flow_level", "Difficult_level")
newdata <- climbing_background[myvars]
sortdata <- newdata[newdata$BetweenGroupCondition == "Only climbing level",]
sortdata.long <- tidyr::gather(sortdata,gr,data,"Flow_level","Difficult_level")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Flow_level", "Difficult_level"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=Name)) +
  geom_line(aes(colour=BetweenGroupCondition),size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  #> labs(title="Flow: Liking ratings on the day) +
  ylab("Climbing level (lowest = 1, highest = 18)") +
  scale_x_discrete(labels = c("Flow_level" = "Onsight climbing level","Difficult_level" = "Highest attempted")) +
  scale_y_continuous(limits=c(0, 16),breaks=seq(0,16,1)) +
  ggtitle("Condition 1: Participants report their climbing level") 
linkedstrip 

myvars <- c("Name", "BetweenGroupCondition", "Flow_level", "Difficult_level")
newdata <- climbing_background[myvars]
sortdata <- newdata[newdata$BetweenGroupCondition == "3 flow questions",]
sortdata$parts_ranked = 1:44
sortdata.long <- tidyr::gather(sortdata,gr,data,"Flow_level","Difficult_level")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Flow_level", "Difficult_level"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=Name)) +
  geom_line(colour="cyan3",size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  #> labs(title="Flow: Liking ratings on the day) +
  ylab("Climbing level (lowest = 1, highest = 18)") +
  scale_x_discrete(labels = c("Flow_level" = "Most likely to induce flow","Difficult_level" = "Highest attempted")) +
  scale_y_continuous(limits=c(0, 16),breaks=seq(0,16,1)) +
  ggtitle("Condition 2: Participants report their climbing level after \nreading flow questions") 
linkedstrip 


myvars <- c("ID", "BetweenGroupsCondition.1", "Easy_flow", "Flow_Flow","Difficult_Flow")
newdata <- climbing_data[myvars]
sortdata <- newdata[newdata$BetweenGroupsCondition.1 == "3 flow questions",]
sortdata.long <- tidyr::gather(sortdata,gr,data,"Easy_flow","Flow_Flow","Difficult_Flow")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Easy_flow","Flow_Flow","Difficult_Flow"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=ID)) +
  geom_line(aes(colour=BetweenGroupsCondition.1),size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  #> labs(title="Flow: Liking ratings on the day) +
  ylab("FSS scores") +
  scale_x_discrete(labels = c("Easy_flow" = "Easy","Flow_Flow" = "Matched","Difficult_Flow" = "Difficult")) +
  scale_y_continuous(limits=c(0, 5),breaks=seq(0,5,1)) +
  ggtitle("Mean flow scores") +
  theme(legend.position = "top",axis.title.x = element_blank())
linkedstrip 
pal <- wes_palette("Darjeeling2", 100, type = "continuous")
linkedstrip + scale_color_gradientn(colours = pal) 

myvars <- c("ID", "BetweenGroupsCondition.1", "Easy_flow", "Flow_Flow","Difficult_Flow")
newdata <- climbing_data[myvars]
sortdata <- newdata[newdata$BetweenGroupsCondition.1 == "3 questions on flow",]
sortdata.long <- tidyr::gather(sortdata,gr,data,"Easy_flow","Flow_Flow","Difficult_Flow")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Easy_flow","Flow_Flow","Difficult_Flow"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=ID)) +
  geom_line(colour="cyan3",size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  #> labs(title="Flow: Liking ratings on the day) +
  ylab("FSS scores") +
  scale_x_discrete(labels = c("Easy_flow" = "Easy","Flow_Flow" = "Matched","Difficult_Flow" = "Difficult")) +
  scale_y_continuous(limits=c(0, 5),breaks=seq(0,5,1)) +
  ggtitle("Mean flow scores") +
  theme(legend.position = "top",axis.title.x = element_blank())
linkedstrip 

myvars <- c("ID", "BetweenGroupsCondition.1", "Easy_flow", "Flow_Flow","Difficult_Flow")
newdata <- climbing_data[myvars]
sortdata <- newdata[newdata$BetweenGroupsCondition.1 == "Only climbing level",]
sortdata.long <- tidyr::gather(sortdata,gr,data,"Easy_flow","Flow_Flow","Difficult_Flow")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Easy_flow","Flow_Flow","Difficult_Flow"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=ID)) +
  geom_line(aes(colour = ID),size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  #> labs(title="Flow: Liking ratings on the day) +
  ylab("FSS scores") +
  scale_x_discrete(labels = c("Easy_flow" = "Easy","Flow_Flow" = "Matched","Difficult_Flow" = "Difficult")) +
  scale_y_continuous(limits=c(0, 5),breaks=seq(0,5,1)) +
  ggtitle("Mean flow scores") 
linkedstrip 
pal <- wes_palette("Moonrise3", 100, type = "continuous")
linkedstrip + scale_color_gradientn(colours = pal) 

myvars <- c("ID", "BetweenGroupsCondition.1", "Easy_flow", "Flow_Flow","Difficult_Flow")
newdata <- climbing_data[myvars]
sortdata <- newdata[order(newdata$Easy_flow),]
sortdata$parts_ranked = 1:49
sortdata.long <- tidyr::gather(sortdata,gr,data,"Easy_flow","Flow_Flow","Difficult_Flow")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Easy_flow","Flow_Flow","Difficult_Flow"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=parts_ranked)) +
  geom_line(aes(colour = trend),size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  #> labs(title="Flow: Liking ratings on the day) +
  ylab("FSS scores") +
  scale_x_discrete(labels = c("Easy_flow" = "Easy","Flow_Flow" = "Matched","Difficult_Flow" = "Difficult")) +
  scale_y_continuous(limits=c(0, 5),breaks=seq(0,5,1)) +
  ggtitle("Mean flow scores") 
linkedstrip 
pal <- wes_palette("Moonrise3", 100, type = "continuous")
linkedstrip + scale_color_gradientn(colours = pal) 

newdata <- climbing_data[climbing_data$inverted_u == "Selected",]
myvars <- c("ID", "BetweenGroupsCondition", "Easy_flow", "Flow_Flow","Difficult_Flow")
rankdata <- newdata[myvars]
sortdata <- rankdata[order(newdata$Easy_flow),]
sortdata$parts_ranked = 1:nrow(sortdata)
sortdata.long <- tidyr::gather(sortdata,gr,data,"Easy_flow","Flow_Flow","Difficult_Flow")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Easy_flow","Flow_Flow","Difficult_Flow"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=parts_ranked)) +
  geom_line(aes(colour=parts_ranked),size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  #> labs(title="Flow: Liking ratings on the day) +
  ylab("FSS scores") +
  scale_x_discrete(labels = c("Easy_flow" = "Easy","Flow_Flow" = "Matched","Difficult_Flow" = "Difficult")) +
  scale_y_continuous(limits=c(0, 5),breaks=seq(0,5,1)) +
  ggtitle("Mean flow scores following an inverted-u (n = 18)") +
  theme(axis.title.x = element_blank())
linkedstrip + scale_color_gradient(low = "purple", high = "red")

newdata <- climbing_data[climbing_data$increasing == "Selected",]
myvars <- c("ID", "BetweenGroupsCondition", "Easy_flow", "Flow_Flow","Difficult_Flow")
rankdata <- newdata[myvars]
sortdata <- rankdata[order(newdata$Easy_flow),]
sortdata$parts_ranked = 1:nrow(sortdata)
sortdata.long <- tidyr::gather(sortdata,gr,data,"Easy_flow","Flow_Flow","Difficult_Flow")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Easy_flow","Flow_Flow","Difficult_Flow"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=parts_ranked)) +
  geom_line(aes(colour=parts_ranked),size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  ylab("FSS scores") +
  scale_x_discrete(labels = c("Easy_flow" = "Easy","Flow_Flow" = "Matched","Difficult_Flow" = "Difficult")) +
  scale_y_continuous(limits=c(0, 5),breaks=seq(0,5,1)) +
  ggtitle("Mean flow scores following a linear increase (n = 1)") +
  theme(axis.title.x = element_blank())
linkedstrip + scale_color_gradient(low = "purple", high = "red")

newdata <- climbing_data[climbing_data$decreasing == "Selected",]
myvars <- c("ID", "BetweenGroupsCondition", "Easy_flow", "Flow_Flow","Difficult_Flow")
rankdata <- newdata[myvars]
sortdata <- rankdata[order(newdata$Easy_flow),]
sortdata$parts_ranked = 1:nrow(sortdata)
sortdata.long <- tidyr::gather(sortdata,gr,data,"Easy_flow","Flow_Flow","Difficult_Flow")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Easy_flow","Flow_Flow","Difficult_Flow"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=parts_ranked)) +
  geom_line(aes(colour=parts_ranked),size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  ylab("FSS scores") +
  scale_x_discrete(labels = c("Easy_flow" = "Easy","Flow_Flow" = "Matched","Difficult_Flow" = "Difficult")) +
  scale_y_continuous(limits=c(0, 5),breaks=seq(0,5,1)) +
  ggtitle("Mean flow scores following a linear decrease (n = 23)") +
  theme(axis.title.x = element_blank())
linkedstrip + scale_color_gradient(low = "orange", high = "green")

newdata <- climbing_data[climbing_data$u_shape == "Selected",]
myvars <- c("ID", "BetweenGroupsCondition", "Easy_flow", "Flow_Flow","Difficult_Flow")
rankdata <- newdata[myvars]
sortdata <- rankdata[order(newdata$Easy_flow),]
sortdata$parts_ranked = 1:nrow(sortdata)
sortdata.long <- tidyr::gather(sortdata,gr,data,"Easy_flow","Flow_Flow","Difficult_Flow")
sortdata.long$gr <-factor(sortdata.long$gr, levels = c("Easy_flow","Flow_Flow","Difficult_Flow"))
pd <- position_dodge(width = 0.1)
linkedstrip <- ggplot(sortdata.long, aes(x=gr, y=data, group=parts_ranked)) +
  geom_line(aes(colour=parts_ranked),size=1, alpha=.5,
            position=pd) +
  theme_bw() +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_blank(),
        axis.title.y = element_text(size=16,face="bold"),
        legend.position="none") +
  ylab("FSS scores") +
  scale_x_discrete(labels = c("Easy_flow" = "Easy","Flow_Flow" = "Matched","Difficult_Flow" = "Difficult")) +
  scale_y_continuous(limits=c(0, 5),breaks=seq(0,5,1)) +
  ggtitle("Mean flow scores following a u-shape (n = 9)") +
  theme(axis.title.x = element_blank())
linkedstrip + scale_color_gradient(low = "blue", high = "green")

