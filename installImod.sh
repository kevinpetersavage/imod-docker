curl --progress-bar --connect-timeout 30 --junk-session-cookies --insecure --location --max-time 3600 --retry 3 --retry-delay 60 "http://bio3d.colorado.edu/imod/AMD64-RHEL5/imod_4.7.15_RHEL7-64_CUDA6.5.csh" --output "imod_4.7.15_RHEL7-64_CUDA6.5.csh"

yum install tcsh -y
yum install file -y
mkdir imod
mkdir scripts
tcsh -f imod_4.7.15_RHEL7-64_CUDA6.5.csh -script scripts -dir imod -yes

yum install libjpeg -y
yum install freetype -y
yum install libSM -y
yum install libXi -y
yum install libXrender -y
yum install libXrandr -y
