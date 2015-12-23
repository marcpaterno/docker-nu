FROM paterno/centos67-build_base_v4_9_3-e9-prof
MAINTAINER Marc Paterno paterno@fnal.gov
ENV REFRESHED_AT 2015-12-23
LABEL Vendor="FNAL"
LABEL License="BSD"
COPY "nu-1.18.01-Linux64bit+2.6-2.12-s26-e9-prof_MANIFEST.txt" "/products/nu-1.18.01-Linux64bit+2.6-2.12-s26-e9-prof_MANIFEST.txt"
RUN cd /products \
  && curl -O http://scisoft.fnal.gov/scisoft/bundles/tools/pullProductsDevel \
  && chmod u+x pullProductsDevel \
  && ./pullProductsDevel -l /products slf6 nu-v1_18_01 s26-e9 prof

# Default command 
CMD ["/bin/bash", "-l"]
