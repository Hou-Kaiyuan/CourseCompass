# CourseCompass

CourseCompass provides Columbia Students a more personalize course recommendation and career planner. 


## Iteration 1: Basic page view for courses, seeds and the recommendation methods
#### Heroku Demo Deployment (Iteration 1)
[heroku-iter1](https://course-compass-iter1-cc03da1256a5.herokuapp.com)


## Iteration 2: Login function, user info page, course enrollments
#### Heroku Demo Deployment (Iteration 2)
[heroku-iter2](https://course-compass-iter2-ea6d54216710.herokuapp.com)

## Coverage Report
The current test coverage is 94.12%. Detailed reports can be found in `coverage/index.html`. 
Just in case if there are issues setting up Ruby locally.

## Heroku App Usage

### Login Instructions
To log in to the Heroku app:

1. Use a dummy user email in the format: `test{x}@columbia.edu`
   - `{x}` can range from 1 to 5.
   - For example, `test1@columbia.edu`.
2. The password is the same as the user number (e.g., for `test1@columbia.edu`, the password is `1`).

### Profile and Course History
After logging in, user information and course history will be available on the profile page.




## Name | UNI

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

## Install Ruby

#### MacOS

```bash
# Install rbenv
brew install rbenv
echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.zshrc
brew install ruby-build
brew install v8
# Check rbenv installation -- make sure everything is OK
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

# Install Ruby 2.6.6
rbenv install --verbose 2.6.6 (Apple Silicon: RUBY_CFLAGS="-w" rbenv install 2.6.6)
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


## Setting up (Instructions to run and test the project)

#### 1. Clone repo, install gems and dependencies

```bash
git clone https://github.com/Hou-Kaiyuan/CourseCompass
cd CourseCompass

gem install bundler:2.0.0.pre.3

bundle _2.0.0.pre.3_ install

# gem update bundler

# (We failed to make it work on Apple Silicon)

#bundle install
```

#### 2. Setup db and run tests

```bash
bundle exec rake db:migrate db:test:prepare db:seed
bundle exec rspec
bundle exec cucumber
```

## Heroku deployment
For heroku deployment, make sure [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) is installed. Then,

```bash
git clone https://github.com/Hou-Kaiyuan/CourseCompass

cd CourseCompass

heroku create
# You should see heroku in `git remote -v`
# To remove a previous heroku remote, use `git remote rm heroku`
heroku git:remote -a <app_name>

heroku stack:set heroku-20

heroku addons:create heroku-postgresql

git push heroku master

# Initialize the databases
heroku run rake db:migrate db:seed

# To view any errors, use
heroku logs

# To use heroku terminal for any debugging or run rake commands, use
heroku run bash
```



### GitHub Repo

[https://github.com/Hou-Kaiyuan/CourseCompass](https://github.com/Hou-Kaiyuan/CourseCompass)

