FROM dminkovsky/dev-base
RUN curl -LO http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm -H 'Cookie: oraclelicense=accept-securebackup-cookie' && \
    rpm -i jdk-8u25-linux-x64.rpm && \
    curl -L http://mirror.nexcess.net/apache/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz | tar zx && \
    ln -s /root/apache-maven-3.2.3/bin/mvn /usr/local/bin/

