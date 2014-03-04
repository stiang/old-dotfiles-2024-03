# Sweet dotfiles

These are my dotfiles. I’ll try to keep anything sensitive out of them, so 
go ahead and use/fork, but the whole point of dotfiles is to personalize things, 
so my setup probably won’t fit your needs without a fair bit of tweaking.

## Installation

Run this:

```sh
git clone https://github.com/stiang/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Layout

Everything’s built around topics. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked into `$HOME` (without the '.symlink' extension) when you run `script/bootstrap`.

## Components

There are a few special files/directories.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **<topic>/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **<topic>/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **<topic>/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **<topic>/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Credits

Originally forked from Zach Holman’s awesome [dotfiles](http://github.com/holman/dotfiles) repo.
