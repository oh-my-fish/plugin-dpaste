<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### dpaste
> A plugin for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

Package allows to quickly share text on pastebin sites dpaste.org (and similar), sprunge.us.

## Install

```fish
$ omf install dpaste
```


## Usage

### Basic usage to pastebin:

```fish
$ dpaste "I <3 to paste"
https://dpaste.org/ID0
$ dpaste -t week README.md
https://dpaste.org/ID1
$ dpaste -t onetime < README.md
https://dpaste.org/ID2
$ cat README.md | dpaste -t month
https://dpaste.org/ID3
```

### GitHub Gist Usage

```fish
$ dpaste --gist -d "Your description" a.fish
```

#### Private gist
```fish
$ dpaste --gist -d "Your description" -p my-file.fish
```

Params:
- `-g --gist` Create a GitHub gist
- `-d or --desc ` Description of the gist, default "uploaded from dpaste fish shell plugin"
- `-p or --private ` Private gist, default public

For more information see:

```fish
$ dpaste --help
```

# License

[MIT][mit] © [rominf][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/rominf
[contributors]:   https://github.com/oh-my-fish/plugin-dpaste/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
