FROM java:8
COPY . /usr/src/test
WORKDIR /usr/src/test
#RUN javac jsrc/Hello.java
#CMD ["java","Hello"]
RUN javac -cp .:junit/junit-4.12.jar:junit/hamcrest-core.jar junit.runner.JUnitCore jsrc/A.java
CMD ["java","hib.dat100.testassignment.A"]
