function __dpaste_help
  echo -e \
"Usage:
  dpaste [-t EXPIRES] < README.md
  dpaste [-t EXPIRES] README.md
  cat README.md | dpaste [-t EXPIRES]
  dpaste [-t EXPIRES] \"I \<3 to paste\"

Options:
  -t --time EXPIRES  set snippet expiration time: $__dpaste_expires_choises [default: month]

Configuration:
  You can use this plugin with other dpaste instances.
  If you have a dpaste instance on 'example.com' just insert those lines
  into your config.fish file:
    set __dpaste_url_example_com 'https://example.com/api/'
    set dpaste_site 'example.com'

  You can even use this plugin with sprunge.us.
  Note, that sprunge.us doesn't support '-t' option.
    set dpaste_site 'sprunge.us'"
end
