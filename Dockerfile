FROM dminkovsky/dev-base
RUN curl -LO http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm -H 'Cookie: oraclelicense=accept-securebackup-cookie' && \
    rpm -i jdk-8u25-linux-x64.rpm && \
    mkdir bin && \
    curl -L http://mirror.nexcess.net/apache/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz | tar zx && \
    curl -LO https://services.gradle.org/distributions/gradle-2.2-all.zip && unzip gradle-2.2-all.zip && rm gradle-2.2-all.zip && \
    mv apache-maven-3.2.3 bin/ && \
    mv gradle-2.2 bin/ && \
    ln -s /root/bin/apache-maven-3.2.3/bin/mvn /usr/local/bin/ && \
    ln -s /root/bin/gradle-2.2/bin/gradle /usr/local/bin/
