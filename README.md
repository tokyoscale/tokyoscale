# TokyoScale.com website

This site is generate with [zola] - A fast static site generator in a single binary with everything built-in.

## Getting started


### Installation
```bash
brew install zola
```

### Running locally
```base
zola serve
```
For more details of CLI, please visit [zola#serve]

### Deployment pipeline

This repository is using GitHub action to automatically build and deploy the zola site to the `gh-pages` branch as [GitHub Pages]. For more details, please visit [zola-deploy-action].

[Github Pages]:https://pages.github.com/
[zola]:https://www.getzola.org/
[zola#serve]:https://www.getzola.org/documentation/getting-started/cli-usage/#serve
[zola-deploy-action]:https://github.com/shalzz/zola-deploy-action
