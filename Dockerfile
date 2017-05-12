FROM centos

RUN echo -e  "#!/bin/bash" > /tellMeTheTruth.sh && \
   echo -e  "echo \"Group: \t \$(id -g)\"" >> /tellMeTheTruth.sh && \
   echo -e  "echo \"User: \t \$(id -u)\"" >> /tellMeTheTruth.sh && \
   chmod +x tellMeTheTruth.sh

USER 1001
CMD "/tellMeTheTruth.sh"

