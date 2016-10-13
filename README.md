# MSR Student Portfolio Template



## Jekyll overview

### Built with Jekyll
Jekyll is a simple, blog-aware, static site generator. It takes a template
directory containing raw text files in various formats, runs it through Markdown
and Liquid converters, and spits out a complete, ready-to-publish static website
suitable for serving with your favorite web server. Jekyll also happens to be
the engine behind GitHub Pages, which means you can use Jekyll to host your
project's page, blog, or website from GitHub's servers for free (taken from
Jekyll's website: http://jekyllrb.com/docs/home/).

### Get your workstation set up
To test your website locally, you will need the following packages:

* <a href="https://www.ruby-lang.org/en/downloads/">Ruby</a>
* <a href="http://rubygems.org/pages/download">RubyGems</a>
* <a href="http://nodejs.org">NodeJS</a>
* <a href="http://jekyllrb.com/docs/installation">Jekyll</a>

To install from `apt-get`, you can just run

```
sudo apt-get install ruby ruby-dev nodejs nodejs-dev jekyll
```

On Ubuntu 14.04, the versions of `ruby` and `jekyll` that are on `apt-get` are a
bit out of date. Thus, if you install all of the packages from `apt-get` using
the above command, you are likely to get errors when running commands in the
[Basic Usage](#basic) section below. If you see errors about the `--watch`
variable when running `jekyll build --watch`, run the following commands to use
`rvm` (Ruby Version Manager) to install a new version of `ruby` and `jekyll`:

```shell
1 $  sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison \
      libffi-dev curl icedtea-7-jre-jamvm nodejs nodejs-dev
2 $  curl -L https://get.rvm.io | bash -s stable
3 $  source ~/.rvm/scripts/rvm
4 $  echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
5 $  rvm install ruby --latest
6 $  echo "gem: --no-ri --no-rdoc" > ~/.gemrc
7 $  gem update --system
8 $  gem install jekyll
```
* line 1 installs dependencies for `rvm`
* lines 2-4 configure your environment to use `ruby` versions installed from
`rvm` instead of from `apt-get`
* line 5 updates `rvm` itself
* line 6 sets `gem` to not install documentation locally (this is optional)
* line 7 updates `gem`
* line 8 installs the latest `jekyll`

### Local previewing

You'll first need a Jekyll site. If you are interested in using this template,
you should clone this repo. Then go into it with
```
cd mariosebasco.github.io
```
In one terminal, build the jekyll site, watching for
any changes (run in the site root directory)
```
$  jekyll build --watch
```
In another terminal, start a local server (run in site root directory)
```
$  jekyll serve
```
View the site in your browser at
```
localhost:4000/mariosebasco.github.io/
```



## File structure
```
|-- README.md (this)
|-- _config.yml (overall configuration file for the site)
|-- _includes (all the markup partials)
|   |-- footer.html
|   |-- head.html
|   |-- header.html
|-- _layouts (page markup templates)
|   |-- about.html
|   |-- contact.html
|   |-- main.html
|   |-- project.html
|-- _projects (markdown files that make up the "projects" jekyll collection)
|   |-- 2014-09-22-project-1.md
|   |-- 2014-09-23-project-2.md
|   |-- 2014-09-24-project-3.md
|   |-- 2014-09-25-project-4.md
|   |-- 2014-09-26-project-5.md
|   |-- 2014-09-27-project-6.md
|   |-- 2014-09-28-project-7.md
|   |-- 2014-09-29-project-8.md
|-- _site (the entire site after it is processed by Jekyll)
|   |-- README.md
|   |-- about
|   |-- contact
|   |-- feed.xml
|   |-- index.html
|   |-- projects
|   |-- public
|-- about.md (about page markdown)
|-- contact.md (contact page markdown)
|-- feed.xml (contains general information about Jekyll's usage)
|-- index.html (home page of the site)
|-- public (static content including fonts, images, js, and css files)
|   |-- fonts
|   |-- images
|   |-- javascripts
|   |-- stylesheets
```



## More on how Jekyll works

### The Jekyll engine
First, if you look inside the \_site directory, you'll see that no directories
or files there begin with an underscore (\_). The contents of that directory are
the end result of Jekyll's processing engine. All of the files and directories
in the root directory of the repository that do begin with an underscore, on the
other hand, are "raw". They either include markup that will be included within
pages of the final site or they contain markdown and "Front Matter" (which I'll
explain later) that will be converted into markup by Jekyll's engine. One of the
two commands that you need to run in order to host the site on a local server:
```
jekyll build --watch
```
runs that engine, processing and reprocessing the "raw" files every time you
make a change to a file. The files and directories in the root directory of the
repository that _don't_ begin with an underscore are ignored by Jekyll and will
remain the exact same in the _site directory.

### Front matter
Any file that contains a YAML front matter block will be processed by Jekyll as
a special file. The front matter must be the first thing in the file and must
take the form of valid YAML, set between triple-dashed lines (taken from
Jekyll's documentation: http://jekyllrb.com/docs/frontmatter/). Here's a basic
example that you'll find in the index.html file:
```
---
layout: main
title: Portfolio
---
```
This first item tells Jekyll to take all of the markup in index.html and plug it
into the _layouts/main.html template to take the place of the {{ content }}
variable found in that template file. The second item tells Jekyll to create a
variable, page.title, that you can use in the markup of the template. For
example, in _layouts/main.html, you could write:
```
<head>
	<title>{{ page.title }}</title>
</head>
```
and that would render as:
```
<head>
	<title>Portfolio</title>
</head>
```

### Collections
Collections allow you to define a new type of document that can be somewhat
conceptualized as an object type, each having its own unique properties and
namespaces. These collections are declared in the _config.yml file:
```
collections:
  projects:
    output: true
    permalink: /projects/:path/
```
For this site, we only use one collections: projects, the contents of which can
be found in the _projects directory. Notice that this directory name begins with
an underscore. This is because each file in it only contains some combination of
markdown and front-matter and will be processed by Jekyll's engine. Let's look
at projects/2014-09-22-project-1.md as an example:
```
---
layout: project
title: Project 1
date: September 22, 2014
image: http://unsplash.it/400?random
---

## Overview
Lorem ipsum dolor sit amet, tota primis copiosae id quo. Melius eligendi
elaboraret pri et, eam menandri platonem te. Tollit iudicabit gloriatur per ad.
Ad diceret recteque eum, eu commodo petentium qui. No aliquid delectus eam,
dicta eripuit convenire te nec. Vix no veritus dignissim. Erat ferri veniam ut
eos, pro ex eius error intellegat, his te graecis oporteat honestatis.

### Topic 1
His nemore audiam consequat ad, no augue choro assueverit mei. Zril offendit
tincidunt ne quo. At commodo integre alienum sea, cu vocent fuisset suscipit
nam. Eum ex tation omnesque adversarium, mutat autem putant te nam. Id vix
facilis complectitur, vis vitae vivendo euripidis ea, fugit eirmod an vix...
```
This file represents a project in the projects collection and contains both YAML
front matter and Markdown. You can see how powerful collections are if we take a
look at a snippet of index.html:
```
<ul id="portfolio-gallery">
    {% for project in site.projects %}
        <li>
            <a href="{{ site.baseurl }}{{ project.url }}">
                <img src="{{ project.image }}">
                <h2>{{ project.title }}</h2>
            </a>
        </li>
    {% endfor %}
</ul>
```
The ```{% %}``` tags represent liquid syntax and their contents are processed by
Jekyll to render static HTML in the final site. You can see that all of the
projects in the projects collection can be referenced with ```site.projects```
and iterated through with a for loop. In this specific for loop, for each
project in the projects collection, we pull its image and title using ```{{
}}``` tags. All of a particular project's information is defined in its markdown
file just like the one which we saw above. You can find more useful information
about collections in Jekyll's website (http://jekyllrb.com/docs/collections/).



## Maintaining the site

### Adding projects
To add a project, just create a .md file in the _projects directory with front
matter at the beginning that follows this format (taken from
2014-09-22-project-1.md):
```
---
layout: project
title: Project 1
date: September 22, 2014
image: http://unsplash.it/400?random
---
```
Following that front matter, just add content in regular markdown.

### Editing appearance

The appearance of the site is defined entirely by the
interaction of several key HTML files and CSS defined to go along with them. The
following describes the importance of each of the HTML files:

* [main.html](_layouts/main.html) provides the general structure of every page
  on the site. It includes common elements that are on all of the pages
  including content for the HTML `<head>` tag, and page footers/headers. These
  common elements are all defined in the `_includes` directory.
* The other three html files inside of the `_layouts` directory define the
  appearance of the about page, the contact page, and each of the project
  entries. The [index.html](index.html) page defines the project grid that is
  shown on the site's base URL
* Note that all of these HTML files are of the `main` layout. Thus each of these
  pages has the same `<head>` tag, and footer/header.

These HTML files are only half of the story; the other requirement for defining
appearance is the CSS to go along with the HTML. The CSS for this site is
generated using [SASS](http://sass-lang.com/). Quoting from the [SASS
documentation](http://sass-lang.com/documentation/file.SASS_REFERENCE.html):

> Sass is an extension of CSS that adds power and elegance to the basic
> language. It allows you to use variables, nested rules, mixins, inline imports,
> and more, all with a fully CSS-compatible syntax. Sass helps keep large
> stylesheets well-organized, and get small stylesheets up and running quickly,
> particularly with the help of the Compass style library.

Basically we use the syntactical convenience of SASS to enable easier generation
of our CSS. What this means is that if we want to update our site's CSS, we
need to edit the [public/stylesheets/style.scss](public/stylesheets/style.scss)
file and use SASS to build the corresponding CSS. To build the CSS file, `cd` to
the `<project_root>/public/stylesheets/` directory and then execute

```bash
sass --watch style.scss:style.css
```

As you edit the SCSS file, the CSS file will be automatically updated!

To install SASS you can either use `apt-get` or `gem`:

```bash
sudo apt-get install ruby-sass
```
or
```bash
gem install sass
```

### Changing site metadata

There are several things that you may want to change that is unrelated to adding
content. Some of these items are described below.

* __Site Base URL__ You can use the functionality from GitHub Pages to change
  your portfolio's base URL. See
  [their documentation](https://help.github.com/articles/user-organization-and-project-pages/).
  Note that if you change the name of your repository on GitHub the URL will
  changes (as described in their docs), you'll want to also update the `baseurl`
  field in the [_config.yml](_config.yml) file to correspond to this new name.
* __Site Title__ The site title is in the header of every HTML page after Jekyll
  builds your site. The default value is `Portfolio Template`. You'll want to
  customize this in the [_config.yml](_config.yml) file as it shows up as the
  tab title in most browsers.
* __Favicon__ The site is set to add a
  [favicon](https://en.wikipedia.org/wiki/Favicon) to each page. If you'd like
  to customize this, either replace the
  [public/images/mariosebasco.github.io-favicon.png](public/images/mariosebasco.github.io-favicon.png)
  with your own file. Or, edit the [favicon line](_includes/head.html#L10) to
  point to a different image.
* __Title on Top Banner__ By default the top strip contains the words _My
  Portfolio_ that link the site's homepage. If you'd like to customize this
  text, edit [this line](_includes/header.html#L3) in the
  [_includes/header.html](_includes/header.html) file.


### Changing pictures

The default template has random internet pictures. You will, of course, be
adding your own pictures. There are many ways to do this, but below we will
present two possible ways. The easy way (described first) requires no editing of
the site configuration, but it is less maintainable in the long term. The hard
way is slightly more complicated, but it gives you a bit more control and helps
you understand how Jekyll works (the complex method is recommended).


#### Changing pictures: the easy way
To change the pictures displayed on a project, you should first copy the
pictures you want into
```
public/images/
```

To change images in a project file the image field should have this format
```
/mariosebasco.github.io/public/images/picture.[extension]
```
For example, here is the front matter for a project with a custom image.
```
---
layout: project
title: Agamenon Contingency
date: May 27, 1939
image: /mariosebasco.github.io/public/images/tower_of_babel.jpg
---
```

Note that the name of your repo on GitHub will define the exact path that you
use to an image. If you change the name of your repo to be `portfolio`, then the
image in the above example would be
`/portfolio/public/images/tower_of_babel.jpg`. This is an example of why the
"easy" way is less extensible/maintainable. If you wanted to rename your repo,
all projects would need to be edited.

#### Changing pictures: the complex way

This method works by editing the code in the template HTML files that Jekyll
uses when building the site. In all of the template HTML files we will add the
path to where we store our images. Then in the `image` field of any Markdown
file's front matter, we will just put the filename. So for example, let's say we
want to change the how images are going to work for the project pages. We would
go in and edit the HTML that inserts images to read
``` html
		<img id="project-image" src="{{ site.baseurl }}/public/images/{{ page.image }}">
```
instead of
``` html
		<img id="project-image" src="{{ page.image }}">
```

We would then put the image we want into the `public/images/` directory. Then on
a project Markdown file's front matter, we would just put the image filename
with no path. For example,
```
---
layout: project
title: Agamenon Contingency
date: May 27, 1939
image: tower_of_babel.jpg
---
```

To see all of the required changes for custom images, check out
[this commit](https://github.com/NU-MSR/mariosebasco.github.io/commit/7f40890361af2929ed297950c9ed7752aea339cb)
from the
[custom_images](https://github.com/NU-MSR/mariosebasco.github.io/tree/custom_images)
branch of this repository. If you implement all of the changes shown in this
commit to the following files, you should be all set:

1. [_layouts/about.html](_layouts/about.html)
2. [_layouts/contact.html](_layouts/contact.html)
3. [_layouts/project.html](_layouts/project.html)
4. [index.html](index.html)

### Math in project posts

The [_includes/head.html](_includes/head.html) contains the following snippet:

```html
	<script type="text/javascript"
			src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
	</script>
```

This snippet tells every page that you can use
[MathJax](http://docs.mathjax.org/en/latest/start.html) to render mathematics.
According the the MathJax site "MathJax is an open-source JavaScript display
engine for LaTeX, MathML, and AsciiMath notation that works in all modern
browsers." Basically this means you can type math equations, usually using
[LaTeX](https://www.latex-project.org/) syntax, then when your page loads, the
equations will be sent to the MathJax servers. These servers will process the
equations and send your site back properly formatted equations to display. Check
out the [Project 3 source](_projects/00-2014-09-24-project-3.md) and the
[rendered content](http://nu-msr.github.io/mariosebasco.github.io/project-3.html)
for an example.


### Arranging projects
Your projects will be arranged in alphabetical order depending on the name you
give your **_.md_** file. To have full control of the order your projects appear
from left to right, you can simply prepend a number to the file name like this
* **_0_invisibility_project.md_**
* **_1_aliens_project.md_**.
* **_2_spartan_project.md_**

This way the invisibility project is displayed before the aliens project and so
on. To see why this works check out
[lines 10-11 in the index.html file](index.html#L10-L11) or see the commit where
this
[change was introduced](https://github.com/NU-MSR/mariosebasco.github.io/commit/2b94e3d30f8da66d6bf0ea4a522a601dc253e8a7).

#### Permalinks and project names

In the above section we showed that you can re-arrange your projects on the
homepage by adjusting the filenames of the Markdown files. This is great, but an
unintended consequence has to do with the URLs that Jekyll produces when
converting Markdown files to HTML. In our default configuration, the name of the
file becomes the URL. So if you start changing filenames just to re-order your
homepage, your URLs will start changing as well. If you'd like to fix this
issue, you can use the `permalink` attribute in your project front matter. For
example, right now, _Project 3_ has a filename of
```00-2014-09-24-project-3.md```. The zeros at the front are why it shows up
first in the [main page](http://nu-msr.github.io/mariosebasco.github.io/) of the
actual site. Notice however, that we've
[set the permalink](https://github.com/NU-MSR/mariosebasco.github.io/commit/2b94e3d30f8da66d6bf0ea4a522a601dc253e8a7#diff-c5c82181ca4919fb080fbdf1fc649892R6)
to be ```project-3.html```. Thus, we can find this project at the following URL:
http://nu-msr.github.io/mariosebasco.github.io/project-3.html (instead of the
default URL which would be
http://nu-msr.github.io/mariosebasco.github.io/00-2014-09-24-project-3 ).


## Helpful tools

[Dillinger](http://dillinger.io/) is an online markdown editor that allows you
view the output of markdown files side by side.

[Markdown Preview Plus](https://chrome.google.com/webstore/detail/markdown-preview-plus/febilkbfcbhebfnokafefeacimjdckgl)
is a Google Chrome extension that allows real-time previewing of locally edited
Markdown files.
[Markdown Here](https://addons.mozilla.org/en-US/firefox/addon/markdown-here/)
is a Firefox extension with similar functionality.

[Pandoc](http://pandoc.org/) is an awesome tool that allows you to convert
between various markup formats (Markdown, Org, LaTeX, etc.) and various document
formats (html, doc, pdf, etc.). It can be a little tricky to get it to do
exactly what you want, but it is extremely powerful.

Many text editors have plugins that enable Markdown previewing. For example, if
you use Sublime, check out
[Sublime Text Markdown Preview](https://github.com/revolunet/sublimetext-markdown-preview)
plugin.


