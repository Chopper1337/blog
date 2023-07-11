<!--
.. title: My First Blog Post
.. slug: my-first-blog-post
.. date: 2023-07-11 15:02:53 UTC+01:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
-->

# 

This is my first blog post. It has been written in markdown in DOOM Emacs and the static site is generated using [Nikola](https://getnikola.com/).

## Current workflow

I am using `nikola build && nikola serve` to easily rebuild the site when I'd like to preview changes.

I have also created the following script, called "newpost.sh" in the working directory to quickly add a new post:

```
nikola new_post -e -f markdown
```

This then drops me into NeoVim where I can write the initial contents of the blog post.

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
