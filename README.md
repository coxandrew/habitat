## Quickstart

Go to your project (paths in the terminal are relative, so if you're in a different directory and this doesn't work, you can always do: `cd ~/Projects/habitat`):

    $ cd Projects/habitat

*Always* do a `git pull` before starting to work on the site to make sure you have the latest updates from GitHub:

    $ git pull

If there are updates, it will look something like:

    (master) $ git pull
    remote: Counting objects: 83, done.
    remote: Compressing objects: 100% (14/14), done.
    remote: Total 47 (delta 23), reused 45 (delta 21)
    Unpacking objects: 100% (47/47), done.
    From www.github.com:coxandrew/habitat
       f061530..2dffcaa  master     -> origin/master
       61e8a72..b36fd92  gh-pages   -> origin/gh-pages
    First, rewinding head to replay your work on top of it...
    Fast-forwarded master to 2dffcaa7c80e47f584d79ede60c57980e0b89fd0.

If everything is up-to-date, it should say:

    (master) $ git pull
    Current branch master is up to date.

Do a `git log` if you're interested in seeing the latest commits (hit `q` to quit viewing the log):

    $ git log

Open a new tab in iTerm and start up the preview webserver:

    $ rake preview

Once it tells you the site is up, click on the link: [http://0.0.0.0:4567](http://0.0.0.0:4567) to preview the Habitat site in your browser.

Open *Sublime Text* (if it's not already open) to start editing:

    $ subl .

## Getting Started

This site is built using [Middleman](http://middlemanapp.com/). If you have a working Ruby installation (preferably using RVM), you should be able to follow along with the Quickstart instructions.

### Installation

#### Checkout and install dependencies

`cd` into the project and install the gems:

    $ git clone git@github.com:coxandrew/habitat
    $ cd habitat
    $ bundle install --binstubs

### Publish the site

To build and deploy a static version of the site, you must first commit and push any changes and then `rake publish`:

First check the status to see what files you've edited:

    $ git status

To double check what you've changed before adding files, do a `git diff` (hit `q` to exit the diff):

    $ git diff

Add the files you want to commit (that are already under version control):

    $ git add -u

Add any new files by name (for example, add all "Untracked files" in the `source` directory):

    $ git add source

Commit changes with a friendly personal note of what I changed:

    $ git commit -m "Updating the news section"

Make sure any new "Untracked files" are removed or moved to a safe place:

    # Untracked files:
    #  (use "git add <file>..." to include in what will be committed)
    # 
    # some-temporary-file.txt

    $ rm some-temporary-file.txt

When the directory is clean, you should see a message like this:

    (master|*) $ git status
    # On branch master
    # Your branch is ahead of 'origin/master' by 3 commits.
    #   (use "git push" to publish your local commits)
    #
    nothing to commit, working directory clean

Push and publish changes to the site:

    $ git push
    $ rake publish

Until launch, you can preview the published site here:

http://coxandrew.github.io/habitat/

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

In Sublime Text 2 (your text editor), open the file using Cmd+T and start to type the name of the slug and when it appears, click on it ('screaming-eagles' in this example).

Now, the file should be open in your text editor. Edit the title and add the author to the metadata section at the top:

    ---
    title: Screaming Eagles Raise Over $6000 for Habitat Powhatan
    date: 2013-04-09 00:00 UTC
    author: Ken Cox
    tags:
    ---

### Add the news thumbnail

Create a 90x60 jpg thumbnail with the same name as the file, e.g.

    2013-09-04-screaming-eagles.jpg

Save the file in `habitat/source/images/news-thumbnails`.

### Add a news image

Save the image to `source/images/news`

Add the image to your article with a `news_image` partial:

    <%= partial "news_image", locals: {
        image: "screaming-eagles.jpg",
        caption: "The Screaming Eagles present a check to Habitat President Don Whitley."
      } %>
    

## Advanced

### Recovering from a mistake

If you get yourself into trouble and want to reset to the last good copy, you can blow away all your changes with one command:

**WARNING:** This step is irreversible and will wipe out any local changes you've made. Make sure this is what you want to do (this is also a good reason to commit *and* push frequently so you can wipe out your changes without losing a lot of work):

    $ git reset --hard origin/master

### Build the site cleanly

    $ middleman build --clean
