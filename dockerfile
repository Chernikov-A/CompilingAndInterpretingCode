FROM bellsoft/liberica-openjdk-alpine:16.0.1
COPY ./src ./java   
RUN mkdir ./out 
RUN javac -sourcepath ./java -d out java/sample/Main.java
CMD java -classpath ./out src.sample.Main