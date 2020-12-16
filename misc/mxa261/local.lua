help([[OpenFOAM is a GPL-opensource C++ CFD-toolbox. 
This offering is supported by OpenCFD Ltd, producer and 
distributor of the OpenFOAM software via www.openfoam.com, 
and owner of the OPENFOAM trademark. OpenCFD Ltd has been 
developing and releasing OpenFOAM since its debut in 2004.

If you run into any issues while using this container
then please contact the i-ASK center by emailing
iask@ics.psu.edu]])

whatis("OpenFOAM Version: v2006")
whatis("Spack Version: v0.16.0")
whatis("i-ASK email: iask@ics.psu.edu")
whatis("GitHub Repo: https://github.com/ics-i-ask-center/openfoam8_roar")

-- Module depends on system gcc compiler
prereq("gcc/8.3.1")

-- Initialize hardcoded paths
local foamMpi = "mpi-user"
local wmCompileOption = "-spack"
local mpiF90 = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/bin/mpif90"
local wmProjectVersion = "v2006"
local ldLib = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/boost-1.74.0-yskqz3ncac3rvhhravwanwjod7zvkyvs/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/platforms/linux64GccDPInt32-spack/lib/mpi-user:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/lib:/storage/home/mxa261/OpenFOAM/mxa261-v2006/platforms/linux64GccDPInt32-spack/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/site/2006/platforms/linux64GccDPInt32-spack/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/platforms/linux64GccDPInt32-spack/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/platforms/linux64GccDPInt32-spack/lib/dummy:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/scotch-6.0.10-2dfguol4ulkoo5znhrgyukbxallaosne/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/flex-2.6.4-svljyxhi76yivgz6kgudjzucpw6kawxu/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/mpfr-4.0.2-azlke2rsll57sywb3xrxntrjusrjhhvr/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/gmp-6.1.2-teunc3d3bgl7r6vchbuxqhomhdy4ehlv/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/boost-1.74.0-yskqz3ncac3rvhhravwanwjod7zvkyvs/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zfp-0.5.5-vwzz7tppnawpzgf2466kdegn6u6brby4/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/sz-2.0.2.0-ttyrt3fylnkkidyvr2rqjvnjhlaicji5/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libiconv-1.16-sk4poyjmixhbubhuiehsa5365ouzstfx/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpciaccess-0.16-d73x7aqdtehaha7z3gfpusob3hfe7jyr/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/c-blosc-1.17.0-oj3dwime5no2wpawghzo2q4ckjuzjqot/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zlib-1.2.11-vhducqd5fo5evke4m5inkr4ymopga6dd/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/snappy-1.1.8-tjbvnmlfzaohgvrrkrs7vqh6ywy56klp/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/bzip2-1.0.8-a46ahma4bwxvimferne5gggtanf5uuxl/lib"
local foamUtilities = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/applications/utilities"
local spackHashes = "c37dslk27grmp5gnwpoot22qb2g4wtus:2dfguol4ulkoo5znhrgyukbxallaosne:svljyxhi76yivgz6kgudjzucpw6kawxu:npornezskfrfmlmzdp7xh5bivfqdqzx4:yrpkpcw4tws324ot7icagp5byoqlirkj:azlke2rsll57sywb3xrxntrjusrjhhvr:teunc3d3bgl7r6vchbuxqhomhdy4ehlv:hsjdmy7w7gos3uw7fixyou5ydffssemn:yskqz3ncac3rvhhravwanwjod7zvkyvs:2nsctv76bmwajrg722lcmxfpneognuey:vwzz7tppnawpzgf2466kdegn6u6brby4:ttyrt3fylnkkidyvr2rqjvnjhlaicji5:ouhd73z4ym6ayd7bjlukmf2cdnitulfo:jnzdx3xasik4cnzna5pg72kb6ee7bwiz:z5yrlhdizboqmoaggajlrqgo22rkyodb:u6l5ancoa5psxid4wunjxxw7eluusoyc:pqrdlyvoivmm6qtnkb57adxuqhoaer2v:sk4poyjmixhbubhuiehsa5365ouzstfx:d73x7aqdtehaha7z3gfpusob3hfe7jyr:ya4n6nof2hwb264y7lyjza4uc5clgzht:5r5dbsocbw7nkuonj7sauuru2vx5ljgc:d2zq2zynk2cws5lt32ihlou33ij5lfxt:oj3dwime5no2wpawghzo2q4ckjuzjqot:52nljiom7mzw4useucbst2pugweax5nv:vhducqd5fo5evke4m5inkr4ymopga6dd:tjbvnmlfzaohgvrrkrs7vqh6ywy56klp:fjval74qwfnfz3i7uuou55rvlm5whux6:a46ahma4bwxvimferne5gggtanf5uuxl"
local manPath = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/scotch-6.0.10-2dfguol4ulkoo5znhrgyukbxallaosne/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/flex-2.6.4-svljyxhi76yivgz6kgudjzucpw6kawxu/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libiconv-1.16-sk4poyjmixhbubhuiehsa5365ouzstfx/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zlib-1.2.11-vhducqd5fo5evke4m5inkr4ymopga6dd/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6/share/man:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/bzip2-1.0.8-a46ahma4bwxvimferne5gggtanf5uuxl/man"
local wmCompiler = "Gcc"
local foamLibIn = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/platforms/linux64GccDPInt32-spack/lib"
local mpiCXX = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/bin/mpic++"
local mpiF77 = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/bin/mpif77"
local include = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/scotch-6.0.10-2dfguol4ulkoo5znhrgyukbxallaosne/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/flex-2.6.4-svljyxhi76yivgz6kgudjzucpw6kawxu/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/mpfr-4.0.2-azlke2rsll57sywb3xrxntrjusrjhhvr/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/gmp-6.1.2-teunc3d3bgl7r6vchbuxqhomhdy4ehlv/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/eigen-3.3.8-hsjdmy7w7gos3uw7fixyou5ydffssemn/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/boost-1.74.0-yskqz3ncac3rvhhravwanwjod7zvkyvs/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zfp-0.5.5-vwzz7tppnawpzgf2466kdegn6u6brby4/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/sz-2.0.2.0-ttyrt3fylnkkidyvr2rqjvnjhlaicji5/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libiconv-1.16-sk4poyjmixhbubhuiehsa5365ouzstfx/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpciaccess-0.16-d73x7aqdtehaha7z3gfpusob3hfe7jyr/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/c-blosc-1.17.0-oj3dwime5no2wpawghzo2q4ckjuzjqot/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zlib-1.2.11-vhducqd5fo5evke4m5inkr4ymopga6dd/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/snappy-1.1.8-tjbvnmlfzaohgvrrkrs7vqh6ywy56klp/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/bzip2-1.0.8-a46ahma4bwxvimferne5gggtanf5uuxl/include"
local cPath = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/eigen-3.3.8-hsjdmy7w7gos3uw7fixyou5ydffssemn/include/eigen3"
local foamSiteLibbin = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/site/2006/platforms/linux64GccDPInt32-spack/lib"
local acLocal = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/share/aclocal"
local mpiCC = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/bin/mpicc"
local wmThirdParty = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/ThirdParty"
local pkgConfig = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/mpfr-4.0.2-azlke2rsll57sywb3xrxntrjusrjhhvr/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/eigen-3.3.8-hsjdmy7w7gos3uw7fixyou5ydffssemn/share/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpciaccess-0.16-d73x7aqdtehaha7z3gfpusob3hfe7jyr/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/c-blosc-1.17.0-oj3dwime5no2wpawghzo2q4ckjuzjqot/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zlib-1.2.11-vhducqd5fo5evke4m5inkr4ymopga6dd/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/snappy-1.1.8-tjbvnmlfzaohgvrrkrs7vqh6ywy56klp/lib/pkgconfig:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6/lib/pkgconfig"
local cmakePrefix = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/scotch-6.0.10-2dfguol4ulkoo5znhrgyukbxallaosne:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/flex-2.6.4-svljyxhi76yivgz6kgudjzucpw6kawxu:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/mpfr-4.0.2-azlke2rsll57sywb3xrxntrjusrjhhvr:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/gmp-6.1.2-teunc3d3bgl7r6vchbuxqhomhdy4ehlv:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/eigen-3.3.8-hsjdmy7w7gos3uw7fixyou5ydffssemn:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/boost-1.74.0-yskqz3ncac3rvhhravwanwjod7zvkyvs:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zfp-0.5.5-vwzz7tppnawpzgf2466kdegn6u6brby4:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/sz-2.0.2.0-ttyrt3fylnkkidyvr2rqjvnjhlaicji5:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libiconv-1.16-sk4poyjmixhbubhuiehsa5365ouzstfx:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpciaccess-0.16-d73x7aqdtehaha7z3gfpusob3hfe7jyr:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/c-blosc-1.17.0-oj3dwime5no2wpawghzo2q4ckjuzjqot:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zlib-1.2.11-vhducqd5fo5evke4m5inkr4ymopga6dd:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/snappy-1.1.8-tjbvnmlfzaohgvrrkrs7vqh6ywy56klp:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/bzip2-1.0.8-a46ahma4bwxvimferne5gggtanf5uuxl"
local cInclude = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/scotch-6.0.10-2dfguol4ulkoo5znhrgyukbxallaosne/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/flex-2.6.4-svljyxhi76yivgz6kgudjzucpw6kawxu/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/mpfr-4.0.2-azlke2rsll57sywb3xrxntrjusrjhhvr/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/gmp-6.1.2-teunc3d3bgl7r6vchbuxqhomhdy4ehlv/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/eigen-3.3.8-hsjdmy7w7gos3uw7fixyou5ydffssemn/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/boost-1.74.0-yskqz3ncac3rvhhravwanwjod7zvkyvs/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zfp-0.5.5-vwzz7tppnawpzgf2466kdegn6u6brby4/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/sz-2.0.2.0-ttyrt3fylnkkidyvr2rqjvnjhlaicji5/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libiconv-1.16-sk4poyjmixhbubhuiehsa5365ouzstfx/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpciaccess-0.16-d73x7aqdtehaha7z3gfpusob3hfe7jyr/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/c-blosc-1.17.0-oj3dwime5no2wpawghzo2q4ckjuzjqot/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zlib-1.2.11-vhducqd5fo5evke4m5inkr4ymopga6dd/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/snappy-1.1.8-tjbvnmlfzaohgvrrkrs7vqh6ywy56klp/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/bzip2-1.0.8-a46ahma4bwxvimferne5gggtanf5uuxl/include"
local foamAppBin = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/platforms/linux64GccDPInt32-spack/bin"
local libraryPath = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/scotch-6.0.10-2dfguol4ulkoo5znhrgyukbxallaosne/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/flex-2.6.4-svljyxhi76yivgz6kgudjzucpw6kawxu/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/mpfr-4.0.2-azlke2rsll57sywb3xrxntrjusrjhhvr/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/gmp-6.1.2-teunc3d3bgl7r6vchbuxqhomhdy4ehlv/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/boost-1.74.0-yskqz3ncac3rvhhravwanwjod7zvkyvs/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zfp-0.5.5-vwzz7tppnawpzgf2466kdegn6u6brby4/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/sz-2.0.2.0-ttyrt3fylnkkidyvr2rqjvnjhlaicji5/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libiconv-1.16-sk4poyjmixhbubhuiehsa5365ouzstfx/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpciaccess-0.16-d73x7aqdtehaha7z3gfpusob3hfe7jyr/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/lib64:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/c-blosc-1.17.0-oj3dwime5no2wpawghzo2q4ckjuzjqot/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zlib-1.2.11-vhducqd5fo5evke4m5inkr4ymopga6dd/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/snappy-1.1.8-tjbvnmlfzaohgvrrkrs7vqh6ywy56klp/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6/lib:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/bzip2-1.0.8-a46ahma4bwxvimferne5gggtanf5uuxl/lib"
local wmOptions = "linux64GccDPInt32-spack"
local foamSolvers = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/applications/solvers"
local mpiArchPath = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo"
local wmPrecis = "DP"
local path = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/bin:/storage/home/mxa261/OpenFOAM/mxa261-v2006/platforms/linux64GccDPInt32-spack/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/site/2006/platforms/linux64GccDPInt32-spack/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/platforms/linux64GccDPInt32-spack/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/wmake:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/scotch-6.0.10-2dfguol4ulkoo5znhrgyukbxallaosne/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/flex-2.6.4-svljyxhi76yivgz6kgudjzucpw6kawxu/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/sz-2.0.2.0-ttyrt3fylnkkidyvr2rqjvnjhlaicji5/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libiconv-1.16-sk4poyjmixhbubhuiehsa5365ouzstfx/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6/bin:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/bzip2-1.0.8-a46ahma4bwxvimferne5gggtanf5uuxl/bin"
local wmDir = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/wmake"
local wmLabelOption = "Int32"
local foamSrc = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/src"
local wmMpLib = "USERMPI"
local wmProject = "OpenFOAM"
local wmCompilerType = "system"
local foamSiteAppBin = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/site/2006/platforms/linux64GccDPInt32-spack/bin"
local wmProjectDir = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus"
local foamEtc = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/etc"
local wmCompilerLibArch = "64"
local cPlusInclude = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/scotch-6.0.10-2dfguol4ulkoo5znhrgyukbxallaosne/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/flex-2.6.4-svljyxhi76yivgz6kgudjzucpw6kawxu/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/fftw-3.3.8-npornezskfrfmlmzdp7xh5bivfqdqzx4/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/cgal-5.0.3-yrpkpcw4tws324ot7icagp5byoqlirkj/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/mpfr-4.0.2-azlke2rsll57sywb3xrxntrjusrjhhvr/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/gmp-6.1.2-teunc3d3bgl7r6vchbuxqhomhdy4ehlv/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/eigen-3.3.8-hsjdmy7w7gos3uw7fixyou5ydffssemn/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/boost-1.74.0-yskqz3ncac3rvhhravwanwjod7zvkyvs/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/adios2-2.6.0-2nsctv76bmwajrg722lcmxfpneognuey/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zfp-0.5.5-vwzz7tppnawpzgf2466kdegn6u6brby4/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/sz-2.0.2.0-ttyrt3fylnkkidyvr2rqjvnjhlaicji5/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openmpi-3.1.6-ouhd73z4ym6ayd7bjlukmf2cdnitulfo/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/hwloc-1.11.11-jnzdx3xasik4cnzna5pg72kb6ee7bwiz/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/numactl-2.0.14-z5yrlhdizboqmoaggajlrqgo22rkyodb/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libxml2-2.9.10-u6l5ancoa5psxid4wunjxxw7eluusoyc/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/xz-5.2.5-pqrdlyvoivmm6qtnkb57adxuqhoaer2v/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libiconv-1.16-sk4poyjmixhbubhuiehsa5365ouzstfx/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpciaccess-0.16-d73x7aqdtehaha7z3gfpusob3hfe7jyr/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libpng-1.6.37-ya4n6nof2hwb264y7lyjza4uc5clgzht/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libffi-3.3-5r5dbsocbw7nkuonj7sauuru2vx5ljgc/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/libfabric-1.11.0-d2zq2zynk2cws5lt32ihlou33ij5lfxt/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/c-blosc-1.17.0-oj3dwime5no2wpawghzo2q4ckjuzjqot/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zstd-1.4.5-52nljiom7mzw4useucbst2pugweax5nv/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/zlib-1.2.11-vhducqd5fo5evke4m5inkr4ymopga6dd/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/snappy-1.1.8-tjbvnmlfzaohgvrrkrs7vqh6ywy56klp/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/lz4-1.9.2-fjval74qwfnfz3i7uuou55rvlm5whux6/include:/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/bzip2-1.0.8-a46ahma4bwxvimferne5gggtanf5uuxl/include"
local boostRoot = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/boost-1.74.0-yskqz3ncac3rvhhravwanwjod7zvkyvs"
local wmLabelSize = "32"
local foamApp = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/applications"
local foamTutor = "/storage/work/m/mxa261/sw7/spack/opt/spack/linux-rhel7-ivybridge/gcc-8.3.1/openfoam-2006_201012-c37dslk27grmp5gnwpoot22qb2g4wtus/tutorials"
local foamApi = "2006"
local wmArch = "linux64"
local scotchVersion = "scotch-6.0.10"

-- Set environment variables
prepend_path("FOAM_MPI", foamMpi)
prepend_path("WM_COMPILE_OPTION", wmCompileOption)
prepend_path("MPIF90", mpiF90)
prepend_path("WM_PROJECT_VERSION", wmProjectVersion)
prepend_path("LD_LIBRARY_PATH", ldLib)
prepend_path("FOAM_UTILITIES", foamUtilities)
prepend_path("SPACK_LOADED_HASHES", spackHashes)
prepend_path("MANPATH", manPath)
prepend_path("WM_COMPILER", wmCompiler)
prepend_path("FOAM_LIBBIN", foamLibIn)
prepend_path("MPICXX", mpiCXX)
prepend_path("MPIF77", mpiF77)
prepend_path("INCLUDE", include)
prepend_path("CPATH", cPath)
prepend_path("FOAM_SITE_LIBBIN", foamSiteLibbin)
prepend_path("ACLOCAL_PATH", acLocal)
prepend_path("MPICC", mpiCC)
prepend_path("WM_THIRD_PARTY_DIR", wmThirdParty)
prepend_path("PKG_CONFIG_PATH", pkgConfig)
prepend_path("CMAKE_PREFIX_PATH", cmakePrefix)
prepend_path("C_INCLUDE_PATH", cInclude)
prepend_path("FOAM_APPBIN", foamAppBin)
prepend_path("LIBRARY_PATH", libraryPath)
prepend_path("WM_OPTIONS", wmOptions)
prepend_path("FOAM_SOLVERS", foamSolvers)
prepend_path("MPI_ARCH_PATH", mpiArchPath)
prepend_path("WM_PRECISION_OPTION", wmPrecis)
prepend_path("PATH", path)
prepend_path("WM_DIR", wmDir)
prepend_path("WM_LABEL_OPTION", wmLabelOption)
prepend_path("FOAM_SRC", foamSrc)
prepend_path("WM_MPLIB", wmMpLib)
prepend_path("WM_PROJECT", wmProject)
prepend_path("WM_COMPILER_TYPE", wmCompilerType)
prepend_path("FOAM_SITE_APPBIN", foamSiteAppBin)
prepend_path("WM_PROJECT_DIR", wmProjectDir)
prepend_path("FOAM_ETC", foamEtc)
prepend_path("WM_COMPILER_LIB_ARCH", wmCompilerLibArch)
prepend_path("CPLUS_INCLUDE_PATH", cPlusInclude)
prepend_path("BOOST_ROOT", boostRoot)
prepend_path("WM_LABEL_SIZE", wmLabelSize)
prepend_path("FOAM_APP", foamApp)
prepend_path("FOAM_TUTORIALS", foamTutor)
prepend_path("FOAM_API", foamApi)
prepend_path("WM_ARCH", wmArch)
prepend_path("SCOTCH_VERSION", scotchVersion)