# Rose City Robotics
A robotics startup in Portland Oregon.

## Usage
This codebase generates a static site using [Jekyll](https://jekyllrb.com/). To use it:

1. Make sure you have all [required Jekyll dependencies](https://jekyllrb.com/docs/installation/#requirements) installed. If you need to install Ruby, I recommend [RVM](https://rvm.io/).
2. Install a Javascript package manager, I recommend [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/) which can also be installed using [homebrew](https://formulae.brew.sh/formula/yarn). You will also need Node, if you don't already have it I recommend installing with [NVM](https://github.com/nvm-sh/nvm/blob/master/README.md).
3. Clone the Repo and cd into the rosecityrobotics.com directory.
```
git clone git@github.com:RoseCityRobotics/rosecityrobotics.com.git
cd rosecityrobotics.com
```
4. Install Ruby Gems with bundler (preinstalled with Ruby), gems are specified in the Gemfile.
```
bundle install
```
5. Install Javascript packages, packages are specified in package.json.
```
yarn install
```
6. Start the Jekyll server
```
bundle exec jekyll serve --livereload
```
7. In your browser visit
```
http://localhost:4000
```
8. Edit files in the root directory and they will be generated as static pages in the _site directory. So to edit the index page, edit the rosecityrobotics.com/index.html file.
