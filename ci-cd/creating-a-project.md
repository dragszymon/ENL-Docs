# Creating a project

Before starting any developer works, it is crucial to properly create a Git repository on Gitlab. Although it is possible to create a project and add a repository later on, the easiest way to go through this process seamlessly is to follow this instruction.

### 1. Create a project on GitLab

Go to [Gitlab.com](https://gitlab.com) website and click on `New project` button. 

Choose a *Blank project* tab and type in a name. Our naming convention looks like this:

**client_name-type_of_work**, for example: **hytech-website**, **pzu-backend**, etc.

Be sure to create the project under `Enlighten1` group, not in personal namespace.

Choose a `Private` project and **check** option *Initialize repository with a README* as this allows you to clone the project immediately.

### 2. Clone project with GitKraken

Open GitKraken and clone the repository. Remeber that cloning actually **creates a new folder** for the repository, so in order to have a folder structure `~/Desktop/my-awesome-project` you need to pick `Desktop` as the location! 

If you create your own folder for the repository you'll end up in structure like this: `~/Desktop/my-awesome-project/my-awesome-project` which is usually unwanted.

### 3. Create branches

Next step is to create **minimum 2 branches** with 3 being optimal.

    master
    development
    development-pb (optional)

The last branch is personal development branch which will be merged to development later on. Feel free to publish theese branches upstream to the server (origin).

### 4. Create nuxt project

After making sure one of development branches is the current active branch, open the project folder with Visual Studio Code. At this moment the folder should be only filled with one `README.md` file.

Open console and **go one folder up** (`cd ..`). Now you can init the [nuxt.js](https://nuxtjs.org) project with:

    npx create-nuxt-app <project-name>

Be sure to use `<project-name>` **the same as the name of the repository**! Use company default nuxt.js settings.

### 5. Commit your changes

After project creation it is a good time to commit new changes. When to create a commit? There is no hard rule, but when it makes sense (i.e. when you make some changes). Please commit **at the end of the day**.

You can read about it online: [When should I commit?](https://www.google.com/search?client=safari&rls=en&q=when+shoul+i+commit&ie=UTF-8&oe=UTF-8)