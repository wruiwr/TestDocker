FROM java:8
COPY . /usr/src/java/hello
WORKDIR /usr/src/java/hello
RUN javac jsrc/Hello.java
CMD ["java","Hello"]
