# Student Portfolio Website Template

A modern, responsive portfolio website template built with [Bridgetown](https://www.bridgetownrb.com/). Perfect for students, developers, and professionals who want to showcase their projects, blog posts, and experience.

## ✨ Features

- **Responsive Design**: Beautiful, modern design that works on all devices
- **Blog Support**: Built-in blog functionality with [markdown support](https://www.markdownguide.org/)
- **Easy Customization**: Simple configuration files for personal information
- **Fast & Secure**: Static site generation for optimal performance
- **SEO Optimized**: Built-in SEO best practices
- **No Database**: Super light infrastructure, with no database required and easy to create blog articles using markdown.
- **One-Click Free Hosted Deployment**: Ready to deploy to Netlify for free (must keep repo public to qualify for free hosting)

## 🚀 Quick Start

### Requirements

You will need the following dependencies installed:

**Manual installation:**
- **Ruby 3.1+** - [Install with RVM](https://rvm.io/) (recommended) or [rbenv](https://github.com/rbenv/rbenv)
- **Node.js 18+** - [Install with NVM](https://github.com/nvm-sh/nvm/blob/master/README.md) (recommended) or [directly](https://nodejs.org/)
- **Yarn** - [Installation guide](https://classic.yarnpkg.com/lang/en/docs/install/) or `npm install -g yarn`

**Note:** Make sure you have the latest versions. Check with:
```bash
ruby --version    # Should be 3.1+
node --version    # Should be 18+
yarn --version    # Should be 1.22+
```

### Initial Setup

1. **Fork the repository** on GitHub by clicking the "Fork" button at the top right
   - This creates YOUR own copy of the repository that you'll customize and host
   - Your fork will be at: `https://github.com/YOUR-USERNAME/portfolio-website-bridgetown`

2. **Clone your forked repository locally:**
```bash
git clone https://github.com/YOUR-USERNAME/portfolio-website-bridgetown.git
cd portfolio-website-bridgetown
git remote add upstream https://github.com/rosecityrobotics/portfolio-website-bridgetown.git
```

3. **Install dependencies:**
```bash
# First, install Bundler if you don't have it
gem install bundler

# Install Ruby gems
bundle install

# Install JavaScript packages
yarn install
```

4. **Start the development server:**
```bash
bin/bridgetown start
```

5. **View your site:**
Open your browser and visit `http://localhost:4000`

### Development Workflow

**Making changes to your portfolio:**
1. Create a new branch for your changes:
   ```bash
   git checkout -b customize-portfolio
   ```

2. Make your customizations (update personal info, add projects, write blog posts)

3. Test your changes locally:
   ```bash
   bin/check  # Run tests and linter
   ```

4. Commit and push your changes:
   ```bash
   git add .
   git commit -m "Customize portfolio with my information"
   git push origin customize-portfolio
   ```

**Contributing improvements back to the template:**
1. Keep your fork updated:
   ```bash
   git fetch upstream
   git checkout main
   git merge upstream/main
   ```

2. Create a feature branch:
   ```bash
   git checkout -b improve-feature
   ```

3. Make your improvements and test thoroughly

4. Push and create a pull request to the main repository

## 🎨 Customizing Your Portfolio

### Personal Information

Edit `src/_data/personal_info.yml` to customize your personal details:

```yaml
# Personal Information Configuration
name: "Your Name"
email: "your.email@example.com"

# Social Media Links (leave blank to hide)
github: "https://github.com/your-username"
linkedin: "https://linkedin.com/in/your-profile"
youtube: "https://www.youtube.com/@your-channel"

# Homepage content
tagline: "Your Professional Tagline"
bio: "Write a brief bio about yourself, your interests, and what you're working on."
```

### Site Metadata

Edit `src/_data/site_metadata.yml` for site-wide settings:

```yaml
title: Your Portfolio Title
tagline: Your Site Tagline
email: your.email@example.com
description: A brief description of your portfolio for SEO purposes.
```

### Profile Images

Replace the following images in `src/images/` with your own:

- **`avatar.jpg`**: Your profile picture (square format recommended)
- **`portrait.jpg`**: A larger portrait photo for the about section
- **`favicon.ico`**: Your site's favicon

**Image Requirements:**
- Avatar: 400x400px minimum, square aspect ratio
- Portrait: 800x600px minimum
- Favicon: 32x32px, .ico format

### Customizing Pages

- **Homepage**: Edit `src/_pages/index.erb`
- **About/Contact**: Edit `src/_pages/contact.erb`
- **Projects**: Edit `src/_pages/projects.erb`
- **Blog**: Edit `src/_pages/blog/index.erb`

## 📝 Managing Blog Posts

### Creating a New Post

1. Create a new file in `src/_posts/` with the format:
```
YYYY-MM-DD-your-post-title.md
```

2. Add front matter at the top of your post:
```yaml
---
layout: post
description: A brief description for SEO (156 characters max)
image: images/posts/your-image.jpg
---
```

3. Write your content in Markdown below the front matter.

### Draft Posts

To create a draft post that won't be published, add `published: false` to the front matter:

```yaml
---
layout: post
published: false
description: This is a draft post
---
```

Preview drafts by running: `bin/bridgetown start -U`

### Post Images

Store post images in `src/images/posts/` and reference them in your markdown:
```markdown
![Alt text](images/posts/your-image.jpg)
```

## 🚀 Deploying to Netlify

### Option 1: One-Click Deploy (Recommended)

After forking the repository, you can deploy directly from your fork:

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/YOUR-USERNAME/portfolio-website-bridgetown)

**Important:** Replace `YOUR-USERNAME` in the URL above with your actual GitHub username to deploy YOUR fork.

### Option 2: Manual Setup

1. **Create a Netlify account** at [netlify.com](https://netlify.com)

2. **Connect your forked repository:**
   - Click "New site from Git"
   - Choose your GitHub as your Git provider
   - Select your forked portfolio repository (`YOUR-USERNAME/portfolio-website-bridgetown`)

3. **Configure build settings:**
   - **Build command**: `bin/bridgetown deploy`
   - **Publish directory**: `output`
   - **Node version**: 18 LTS (set in Environment variables as `NODE_VERSION`)

4. **Environment variables** (if needed):
   - `NODE_VERSION`: `18` (or LTS)
   - `RUBY_VERSION`: `3.1.0` (or minor version up)

5. **Deploy**: Click "Deploy site"

### Automatic Deployment Setup

Once connected to your GitHub repository, Netlify will automatically deploy your site whenever you push changes to your main branch. Here's how it works:

1. **Automatic Builds**: Every time you push to your main branch, Netlify will:
   - Pull the latest code from GitHub
   - Run the build command (`bin/bridgetown deploy`)
   - Deploy the updated site automatically

2. **Deploy Previews**: Netlify also creates preview deployments for pull requests, so you can test changes before merging.

3. **Build Status**: You can monitor build status in your Netlify dashboard under **Site overview** > **Deploys**

4. **Branch Settings** (optional):
   - Go to **Site settings** > **Build & deploy** > **Continuous deployment**
   - You can change which branch triggers production deployments (default is usually `main` or `master`)

### Custom Domain (Optional - costs money)

1. In your Netlify dashboard, go to **Site settings** > **Domain management**
2. Click **Add custom domain**
3. Follow the instructions to configure your DNS

## 🧪 Testing & Development

### Running Tests

Install test dependencies:
```bash
bundle install --with test
```

Run tests and linter:
```bash
bin/check
```

Or run individually:
```bash
# Tests only
bin/bridgetown test

# Linter only
standardrb

# Linter with auto-fix
standardrb --fix
```

### Development Workflow

1. Make changes to files in the `src/` directory
2. The development server will automatically reload
3. Test your changes at `http://localhost:4000`
4. Run `bin/check` before committing
5. Push to your repository to trigger automatic deployment

## 📁 Project Structure

```
src/
├── _components/     # Reusable components
├── _data/          # Configuration files
│   ├── personal_info.yml
│   └── site_metadata.yml
├── _layouts/       # Page templates
├── _pages/         # Static pages
├── _posts/         # Blog posts
└── images/         # Images and assets
```

## 🎨 Customization Tips

- **Colors & Styling**: Edit `frontend/styles/index.css` and `tailwind.config.js`
- **Components**: Modify files in `src/_components/`
- **Layouts**: Customize `src/_layouts/` for different page structures
- **JavaScript**: Add functionality in `frontend/javascript/`
- **Simple Forms**: Despite the lack of a database, [Netlify does support basic forms](https://docs.netlify.com/forms/setup/)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests with `bin/check`
5. Submit a pull request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🆘 Need Help?

- [Bridgetown Documentation](https://www.bridgetownrb.com/docs/)
- [Netlify Documentation](https://docs.netlify.com/)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Markdown Guide](https://www.markdownguide.org/) - Learn how to write in Markdown

---

**Happy building! 🚀** Make this portfolio template your own and showcase your amazing work to the world. Let us know if we can help in any way.
