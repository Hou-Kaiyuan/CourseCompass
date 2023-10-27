## CourseCompass

CourseCompass provides Columbia Students a more personalize course recommendation and career planner. 

### Name | UNI

```
Member 1 Name: Esteeven Cepeda
Member 1 UNI:  enc2129
Member 2 Name: Orr Avrech
Member 2 UNI:  oa2429
Member 3 Name: Kaiyuan Hou
Member 3 UNI:  kh3119
Member 4 Name: Kevin Medina
Member 4 UNI:  km3628
```

### Install Ruby

#### MacOS

```bash
# Install rbenv
brew install rbenv
echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.zshrc
brew install ruby-build

# Check rbenv installation -- make sure everything is OK
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

# Install Ruby 2.6.6
rbenv install --verbose 2.6.6
rbenv global 2.6.6

# Check that ruby version is 2.6.6
ruby -v
```

#### Linux

```bash
# Install rbenv
sudo apt install rbenv
echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.bashrc
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Check rbenv installation -- make sure everything is OK
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

# Install Ruby 2.6.6
rbenv install --verbose 2.6.6
rbenv global 2.6.6

# Check that ruby version is 2.6.6
ruby -v
```


### Setting up (Instructions to run and test the project)

#### 1. Clone repo, install gems and dependencies