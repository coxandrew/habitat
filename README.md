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

To build and deploy a static version of the site, you must first commit any changes and then `rake publish`:

    $ git commit -am "Updating the news section"
    $ rake publish

Until launch, you can preview the published site here:

http://coxandrew.github.io/habitat/

## Editing

To edit common content, you just need to change the variables at the top of each HTML template:

    ---
    title: Powhatan - Habitat for Humanity
    ---
