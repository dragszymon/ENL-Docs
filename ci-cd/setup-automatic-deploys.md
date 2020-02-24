# Setup automatic deploys

This tutorial coveres fully the process of automating nuxt.js building and deploying to the live server via FTP.

### 1. Create `.gitlab-ci.yml` file in root of repository.

Copy and paste this file and add it to the repository (**do not push it to the repo yet**):

``` yaml
image: node

cache:
untracked: true
key: "$CI_BUILD_REF_NAME"
paths:
    - node_modules/

deploy:
    stage: deploy
    only:
        - master
    script:
        - apt-get update -qy
        - apt-get install -y lftp
        - npm install
        - npm run generate
        - lftp -e "open $FTP_HOST; user $FTP_USERNAME $FTP_PASSWORD; mirror -X .* -X .*/ --reverse --verbose --delete dist/ $FTP_PATH; bye"
```

### 2. Open project's 'Settings -> CI / CD' page

#### 2.1 Runners

Expand **Runners** subpage and **disable Shared Runners**. Scroll down below the list of 10 available Shared Runners and **enable Group Runners**. This ensueres using Gitlab Runner on our VPS giving unlimited quota.

#### 2.2 Variables

Collapse **Runners** and open **Variables** subpage. Copy and create variables listed below:

    FTP_HOST
    FTP_USERNAME
    FTP_PASSWORD
    FTP_PATH

**Make sure variable `FTP_PASSWORD` is `Protected` and `Masked`!**

Contact **@PB** to fill in the values.

#### 3. Merge `development` branch to `master`.

Check your pipeline configuration by merging `development` branch containing newly created `.gitlab-ci.yml` file to `master` branch. This should trigger building of the pipeline. You can check it in project's **CI / CD -> Pipelines** subpage.