function dpaste
  __dpaste_parse_help $argv
  or begin
    set argv (__dpaste_parse_expires $argv)
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
end
