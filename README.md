# Korean-t Theme

This theme is build upon the new PrestaShop Classic Theme.

The Classic Theme is the new default Theme for Prestashop 1.7 and onwards. It is build itsefl upon the new Starter Theme. 



### Step 1: Install Prestashop & Configure Dev environnement

- NodeJS & npm
- install webpack globaly : 
- install composer
- install required php extension   : intl, soap, ...
- install Prestashop 


## Step 2: Install Theme


Clone this repository and move the `idotea` into `themes` folder.

```bash
# in your PrestaShop folder
$ cd themes
$ git clone https://citizendiop@bitbucket.org/citizendiop/projetkoreant.git idotea
```

### Step 3: Manage assets

The Theme contains the development files in the `_dev` folder.
navigate to <theme_folder> and Install the dependencies using `npm`:

```bash
$ cd <theme_folder>/idotea
$ cd _dev && npm install
```

Now the dependencies are installed and correctly set up, you can customise theses files.

> If you need to add image files, add it in `_dev` folder.



As stylesheets and javascript files are compiled and minified, you may wonder how to
build new version of theses files after your modifications. You can use npm to check
for any update and update the production version used by PrestaShop (localized in `assets` folder).


If you want to compile your assets using Webpack (and we advise you to), follow these steps:

> To build your assets once, type :

```bash
$ npm run build
```

> To rebuild your assets every time you change a file in the _dev folder, type :

```bash
$ npm run watch
```

Note: You should probably **start by removing all existing styles**.

## Webpack configuration

The Webpack configuration file for theme is thus:

- All CSS rules go to the assets/css/theme.css file.
- All JavaScript code go to the assets/js/theme.js file.

It provides proper configuration for compile your Sass, Less, Stylus or CSS files into a single CSS file.

JavaScript code is written in ES6, and compiled to ES5 with Babel.


### Understanding the branches

We use thow branche :

- Develop
  - Used in local and for deploymenent in remote vps server ( vps365425.ovh.net/korean-test )

- Master
  - Used to deploy in pré-prod ( vps365425.ovh.net/korean-t )



### Update Workflow

Every importantes change must be commited explicitely and we will provide explicit changelogs with new features , fixes and impacted files to help you keep your theme up to date with the lastest improvements.



### copy thème par défaut 
the default classic theme was copied in the followind way : 

```bash
cd <theme_folder>
cp -R classic idotea
```bash

## Theme architecture

Themes architecture has changed a lot since PrestaShop 1.7.


```
.
├── assets
│   ├── css/
│   ├── img/
│   └── js/
├── config/
│   ├── theme.dist.yml
│   └── theme.yml
├── CONTRIBUTING.md
├── _dev/
│   ├── css/
│   ├── js/
│   ├── package.json
│   └── webpack.config.js
├── modules/
├── plugins/
├── preview.png
├── README.md
└── templates/
    ├── catalog/
    ├── checkout/
    ├── cms/
    ├── contact.tpl
    ├── customer/
    ├── errors/
    ├── index.tpl
    ├── layouts/
    ├── page.tpl
    ├── _partials/
    └── wrapper.tpl
```



| Folder | Description |
|-------:|------------|
| `assets` | Contains all "UI" data of your theme: javascripts, stylesheets and images; |
| `config` | Contains the configuration file of your theme; |
| `_dev` | Contains all the development assets; |
| `modules` | Allow you to override templates for modules, take a look at `classic` | theme; |
| `plugins` | Contains the Smarty extensions required by the theme, if any; |
| `templates` | Contains the templates of the theme, ordered by domain categories |
| `preview.png` | Should be a thumbnail of your theme homepage, displayed in the back office |


## Useful Link

http://developers.prestashop.com/index.html
