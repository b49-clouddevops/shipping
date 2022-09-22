FROM        maven
RUN         useradd -m roboshop 
USER        roboshop  
WORKDIR     /home/roboshop   
COPY        src . 
COPY        pom.xml . 
RUN         ls -ltr 

RUN         ls -ltr
RUN         mv target/shipping-1.0.jar shipping.jar 

# FROM       openjdk 
# RUN        mkdir 
# ENTRYPOINT [ "java", "-jar", "shipping.jar" ]