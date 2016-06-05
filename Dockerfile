FROM java:8
COPY . /usr/src/test
WORKDIR /usr/src/test
#RUN javac jsrc/Hello.java
#CMD ["java","Hello"]
RUN javac -cp .:/usr/src/test/junit/junit-4.12.jar:/usr/src/test/junit/hamcrest-core.jar jsrc/*.java
CMD ["java","-cp", ".:/usr/src/test/junit/junit-4.12.jar:/usr/src/test/junit/hamcrest-core.jar:jsrc", "TestRunner"]
