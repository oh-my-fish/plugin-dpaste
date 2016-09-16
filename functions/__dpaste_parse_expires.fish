function __dpaste_parse_expires
  # set expires_spec "-t $__dpaste_expires_choises"
  # set expires (echo $argv | sed -E "s/.*$expires_spec.*/\1/")
  # if [ -z (echo $expires | sed -E "s/$__dpaste_expires_choises//") ]
  #   echo $expires | grep -qE '(onetime|1)'; set -g __dpaste_eat_once (and echo 1; or echo 0)
  #   set expires (echo $expires | sed -E 's/(1|2|twotimes)/onetime/;s/hour/3600/;s/week/604800/;s/month/2592000/')
  #   set __dpaste_send_url "$__dpaste_send_url&expires=$expires"
  # end
  # echo $argv | sed -E "s/$expires_spec//" | xargs
  argu t:: time:: -- $argv | while read -l opt value
  switch $opt
    case -t --time
      set expires (echo $value | sed -E 's/(1|2|twotimes)/onetime/;s/hour/3600/;s/week/604800/;s/month/2592000/' | xargs)
      set -g __dpaste_url_data "$__dpaste_url_data&expires=$expires"
	case _
      echo $value
    end
  end
end
