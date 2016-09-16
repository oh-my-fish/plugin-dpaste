function __dpaste_send
  curl --silent --request POST --data-urlencode "$__dpaste_keyword@-" -d $__dpaste_url_data $__dpaste_send_url | read -l url
  if [ $__dpaste_eat_once = 1 ]
    curl --silent $url >/dev/null
  end
  echo $url
end
