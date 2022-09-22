FROM        maven  
RUN         usedadd roboshop 
USER        roboshop  
WORKDIR     /home/roboshop   
COPY        scr . 
RUN         ls -ltr 
RUN         mvn package  
RUN       