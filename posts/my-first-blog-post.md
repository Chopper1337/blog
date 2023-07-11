<!--
.. title: My First Blog Post
.. slug: my-first-blog-post
.. date: 2023-07-11 15:02:53 UTC+01:00
.. tags: markdown,css,git hooks
.. category: 
.. link: 
.. description: 
.. type: text
-->

# 

This is my first blog post. It has been written in markdown in DOOM Emacs and the static site is generated using [Nikola](https://getnikola.com/).

## Current workflow

### Local development

I am using `nikola build && nikola serve` to easily rebuild the site when I'd like to preview changes.

### Creating new posts

I have also created the following script, called "newpost.sh" in the working directory to quickly add a new post:

```
nikola new_post -e -f markdown
```

This then drops me into NeoVim where I can write the initial contents of the blog post.

### Publishing 

Since this blog is stored on [GitHub](https://github.com/Chopper1337/blog), I can add Git hooks to my local copy of the repository.

This allows me to run scripts on certain actions such as when committing to the repo, pushing to the remote etc.

I have added `.git/hooks/pre-commit` to my local repository such that when I make a commit, the site is regenerated.

I would do this before pushing but in the case that I manage to break something, I'd prefer it be spotted sooner rather than later.

## Changes

Writing this inital post, I have noticed there would usually be a very small gap between the post title and the content. Adding a single `#` heading 1 tag adds some space there.

I have already added some theme changes to this [Hack](https://github.com/getnikola/nikola-themes/tree/master/v8/hack) theme.

* Added grey background to code blocks so they stand out more with the dark theme

* Added border radius to large code blocks to make them look nicer

* Changed links to hacker green to match the rest of [ChopperHook](https://chopperhook.xyz)

```
.code, code, .hack code, .hack pre, .hack pre code {
    background-color: #111111;
    padding: 0.08em;
}

div .code {
    border-radius: 0.5em;
}

a:link, a:visited, a.email span.name {
    color: #00ff00;
}
```

## Conclusion 

Overall I am happy with this setup. This didn't take long to set up and it seems easy to work with and customise. Hopefully it doesn't get abandoned like most blogs :)
