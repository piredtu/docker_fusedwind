FROM piredtu/openmdao:0.10.3.2

MAINTAINER Pierre-Elouan Rethore <pire@dtu.dk>

WORKDIR /openmdao
RUN omdao pip install -e git+http://github.com/FUSED-Wind/fusedwind.git#egg=fusedwind

USER openmdao
CMD omdao $INSTALLDIR/notebook.sh
