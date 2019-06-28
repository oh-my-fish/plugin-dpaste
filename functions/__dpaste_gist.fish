function __dpaste_gist
  set -l __gist_desc "uploaded from dpaste fish shell plugin"
  set -l __gist_public true
  set -l __gist_file_name ""

  argu d: desc: g gist p public  -- $argv | while read -l opt value
  switch $opt
    case -d --desc
      set __gist_desc $value
    case -p --private
      set __gist_public false
    case -g --gist
    case _
      set __gist_file_name $value
    end
  end
  
  if test -e $__gist_file_name
    __dpaste_send_gist $__gist_desc $__gist_file_name $__gist_public
  else
    echo "File does not exist"
  end
end
