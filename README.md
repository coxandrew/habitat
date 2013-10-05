## TL;DR:

Run the site locally:

    $ rake preview

And then visit: [http://127.0.0.1:4567](http://127.0.0.1:4567) in your browser.

## Getting Started

This site is built using [Middleman](http://middlemanapp.com/). If you have a working Ruby installation (preferably using RVM), you should be able to follow along with the Quickstart instructions.

### Quickstart

#### Checkout and install dependencies

`cd` into the project and install the gems:

    $ git clone git@github.com:coxandrew/habitat
    $ cd habitat
    $ bundle install --binstubs

#### Run the site locally

Start the middleman server:

    $ rake preview

### Publish the site

To build and deploy a static version of the site, you must first commit and push any changes and then `rake publish`:

    $ git commit -am "Updating the news section"
    $ git push
    $ rake publish

Until launch, you can preview the published site here:

http://coxandrew.github.io/habitat/

## Build the site cleanly

    $ middleman build --clean

## Editing

To edit metadata about the page, like the title, you just need to change the variables at the top of each HTML template:

    ---
    title: Powhatan - Habitat for Humanity
    ---

## News Articles

Create a new article using a "slug" for the title. The slug will be used as part of the URL and the thumbnail's image name. It should be in all lowercase, separated by hyphens. For example, if you create an article for the Screaming Eagles raising money for Habitat:

    $ middleman article screaming-eagles -d 2013-09-04

This would create a file named in `source/news/2013-09-04-screaming-eagles.html.md`.

Open up the file and edit the title and add the author to the metadata section at the top:

    ---
    title: Screaming Eagles Raise Over $6000 for Habitat Powhatan
    date: 2013-04-09 00:00 UTC
    author: Ken Cox
    ---

The article's photo thumbnail must be a jpg with the same name as the file, e.g.:

    2013-10-03-article-title-slug.jpg
