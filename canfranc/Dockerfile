FROM jmbenlloch/canfranc_base

#Add tests tests
ADD tests /home/icuser/tests
RUN echo "#!/bin/bash" > /home/icuser/execute_tests.sh
RUN grep export .bashrc >> /home/icuser/execute_tests.sh
RUN echo pytest -v /home/icuser/tests/tests.py >> /home/icuser/execute_tests.sh
RUN chmod +x /home/icuser/execute_tests.sh

#Add script
ARG ic_dev
ARG ic_prod
ARG ceres_dev
ARG ceres_prod
ADD setup*.sh /home/icuser/

ENV PATH "/home/icuser/anaconda2/bin:$PATH"
RUN /home/icuser/setup_ceres_prod.sh $ceres_prod
RUN bash /home/icuser/setup_ceres_dev.sh $ceres_dev
RUN bash /home/icuser/setup_ic_prod.sh $ic_prod
RUN bash /home/icuser/setup_ic_dev.sh $ic_dev

USER root
