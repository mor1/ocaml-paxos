PACKAGES = "ocamlfind ounit core lwt unix"

sudo apt-get update -qq
sudo apt-get install -qq ocaml ocaml-native-compilers camlp4-extra opam

opam init 
opam install ${PACKAGES}

eval `opam config env`

# Build the source
sudo make
# Build and run the tests
sudo make test
