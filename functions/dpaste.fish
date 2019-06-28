function dpaste
  __dpaste_parse_help $argv
  or begin
    if test $__dpaste_keyword = 'github'
    or contains -- -g $argv
    or contains -- --gist $argv
      __dpaste_gist $argv
    else
      set argv (__dpaste_parse_expires $argv)
      __dpaste_pastebin $argv
    end
  end
end
