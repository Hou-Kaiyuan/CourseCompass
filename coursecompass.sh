gem install bundler:2.0.0.pre.3
bundle lock --add-platform x86_64-linux
gem install libv8-node --version 16.10.0.0 --platform x86_64-linux
gem install mini_racer --version 0.6.4 

bundle _2.0.0.pre.3_ install --without production
