# Rose City Robotics
A robotics startup in Portland Oregon.

## Usage
gem install bridgetown -N

This codebase generates a static site using [Bridgetown](https://www.bridgetownrb.com/). To use it:

1. Make sure you have all [required Bridgetown dependencies](https://www.bridgetownrb.com/docs/installation#requirements) installed. If you need to install Ruby, I recommend [RVM](https://rvm.io/).
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
6. Start the Bridgetown server
```
bin/bridgetown start
```
7. In your browser visit
```
http://localhost:4000
```
8. Edit files in the /src directory and they will be generated as static pages in the output directory. So to edit the index page, edit the rosecityrobotics.com/src/index.html file.

### Publishing Blog Posts

Bridgetown has some built in functionality for managing blog posts. To create a new blog post add a file in the src/_posts directory with the following format:
```
YYYY-MM-DD-title-of-post.md
```

The blog post can be written in markdown and you can also mix in html if needed. For example in the /src/_posts/2024-04-28-join-us-at-portland-area-robotics-society.md file there is a youtube video embed code using an iframe. The embed code is just cut and pasted from youtube, but you need to wrap in in a div tag with class `responsive-iframe-container` to make it responsive. To include images, just add them to the src/images directory and then reference them in the markdown.

At the top of the post file, you need to include "front matter" in YAML format. This is where you specify the layout and author of the post. Here is an example:

```
---
layout: post
author: duncan_miller
---
```

The author maps to a record in the src/_data/authors.yml file. So if you want to add or modify author details, just edit the authors.yml file. The author key should match the key in the front matter of the blog post.

The post title and date will be added to the post based on the filename, just use kabob case and the correct format for the date. The author and author image and bio will be added to the post based on the front matter and corresponding author data in the _data/authors.yml file. You can view the structure of this template in the src/_layouts/post.html file.
