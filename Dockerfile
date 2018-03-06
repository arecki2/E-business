FROM scratch

ADD jdk-*.tar.gz /usr/share/
ADD scala-*.tgz /usr/share/
ADD slick_*.jar /usr/local/
ADD slick-testkit_*.jar /usr/local/
ADD play-scala-starter-example.zip /usr/share/

ENV JAVA_HOME /usr/share/jdk-*/:$JAVA_HOME
ENV PATH $JAVA_HOME/bin:$PATH
ENV SCALA_HOME /usr/share/scala-*/:$SCALA_HOME
ENV PATH $SCALA_HOME/bin:$PATH
ENV PLAY_FRAMEWORK /usr/local/play-scala-starter-example

# RUN ["/bin/sh", "-c", "chmod +x $PLAY_FRAMEWORK/sbt"]
# RUN ["/bin/sh", "-c", "chmod +x $PLAY_FRAMEWORK/sbt-dist/bin/sbt"]
