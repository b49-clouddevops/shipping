FROM        maven  
RUN         usedadd roboshop 
USER        roboshop  
WORKDIR     /home/roboshop   
COPY        src . 
COPY        pom.xml . 
RUN         ls -ltr 
RUN         mvn package  
RUN         mv target/shipping-1.0.jar shipping.jar