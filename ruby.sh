git clone https://github.com/ruby/ruby.git
cd ruby
./autogen.sh
./configure --prefix=$HOME/local/ruby --enable-shared
make
make install
make clean

# make test-spec
