function __dpaste_pastebin
  if isatty
    if [ -n $argv ]
      if [ -f $argv ]
        cat $argv
      else
        echo $argv
      end | __dpaste_send
    else
      __dpaste_help
    end
  else
    __dpaste_send
  end
end
