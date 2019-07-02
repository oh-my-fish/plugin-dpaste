function __dpaste_help
  echo -e \
"Examples:
  dpaste \"I <3 to paste\"
  dpaste -t week README.md
  dpaste -t onetime < README.md
  cat README.md | dpaste -t month
  dpaste  # Starts interactive mode

Options:
  -t --time EXPIRES  set snippet expiration time: $__dpaste_expires_choises [default: month]

GitHub Gist:
  dpaste --gist -d \"Your description\" a.fish
  dpaste --gist -d \"Your description\" -p my-file.fish

  -g --gist Create a GitHub gist
  -p --private Create a private gist
  -d --desc Description of the gist

Configuration:
  You can use this plugin with other dpaste instances.
  If you have a dpaste instance on 'example.com' just insert those lines
  into your config.fish file:
    set __dpaste_url_example_com 'https://example.com/api/'
    set dpaste_site 'example.com'

  You can even use this plugin with sprunge.us.
  Note, that sprunge.us doesn't support '-t' option.
    set dpaste_site 'sprunge.us'

  You can configure it to use GitHub Gist always
    set dpaste_site 'gist.github.com'
    Once this is set, you will not need to add the --gist flag"
end
