FROM piredtu/docker-openmdao

MAINTAINER Pierre-Elouan Rethore <pire@dtu.dk>

WORKDIR /openmdao
RUN bash -c "source $OPENMDAODIR/bin/activate; pip install -e git+http://github.com/FUSED-Wind/fusedwind.git#egg=fusedwind"

WORKDIR /

CMD ["/notebook.sh"]
