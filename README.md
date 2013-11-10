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

First check the status to see what files you've edited:

    $ git status

Add the files you want to commit (that are already under version control):

    $ git add -u

Add any new files by name (for example, add all "Untracked files" in the `source` directory):

    $ git add source

Commit changes with a friendly message:

    $ git commit -m "Updating the news section"

Make sure any new "Untracked files" are removed or moved to a safe place:

    # Untracked files:
    #  (use "git add <file>..." to include in what will be committed)
    # 
    # some-temporary-file.txt

    $ rm some-temporary-file.txt

Push and publish changes to the site:

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

Create a new article using a "slug" for the title. The slug will be used as part of the URL and the thumbnail's image name. It should be in all lowercase, separated by hyphens. For example, if you create an article for the Screaming Eagles raising money for Habitat, switch to your Terminal (iTerm).

In iTerm (your terminal), type:

    $ middleman article screaming-eagles -d 2013-09-04

This would create a file named: `source/news/2013-09-04-screaming-eagles.html.md`

In Sublime Text 2 (your text editor), open the file using Cmd+T and typing the name of the slug ('screaming-eagles' in this example).

Now, the file should be open in your text editor. Edit the title and add the author to the metadata section at the top:

    ---
    title: Screaming Eagles Raise Over $6000 for Habitat Powhatan
    date: 2013-04-09 00:00 UTC
    author: Ken Cox
    tags:
    ---

Create a 90x60 jpg thumbnail with the same name as the file, e.g.

    2013-09-04-screaming-eagles.jpg

Save the file in `habitat/source/images/news-thumbnails`.

### Adding news images

Add the image to `source/images/news`

Build the code to copy the image to the source directory:

    $ middleman build

Add the image to your article with an `image_tag` helper:

    <div class="image">
      <%= image_tag "news/screaming-eagles.jpg", class: "img-polaroid" %>
      <div class="caption">
        The Screaming Eagles present a check to Habitat President Don Whitley.
      </div>
    </div>
