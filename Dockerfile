FROM paterno/centos67-build_base_v4_9_3-e9-prof
MAINTAINER Marc Paterno paterno@fnal.gov
ENV REFRESHED_AT 2015-12-23
LABEL Vendor="FNAL"
LABEL License="BSD"
COPY 
RUN cd /products \
  && curl -O http://scisoft.fnal.gov/scisoft/bundles/tools/pullProductsDevel \
  && chmod u+x pullProductsDevel \
  && ./pullProductsDevel $PWD slf6 nu-v1_18_01 s26-e9 prof

# Default command 
CMD ["/bin/bash", "-l"]
