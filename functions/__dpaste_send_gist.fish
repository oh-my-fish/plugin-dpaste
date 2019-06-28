function __dpaste_send_gist
  set -l __gist_desc $argv[1]
  set -l __gist_file_name $argv[2]
  set -l __gist_public $argv[3]
  set -l __gist_file_content (cat $__gist_file_name | sed s/\"/\\\\\"/g)
  set -l __gist_auth (__dpaste_auth)
  set -l json "{
        \"description\": \"$__gist_desc\",
        \"public\": $__gist_public,
        \"files\": {
          \"$__gist_file_name\": { \"content\": \"$__gist_file_content\" }
        }
      }"

  curl --silent -X POST "$__dpaste_url_gist_github_com" \
      -H "Authorization: $__gist_auth" \
      -H "Content-Type: application/json" \
      -d $json \
  | grep -Eo '(?:"raw_url":\\s*")(.*?)(?:")' \
  | grep -o '"[^"]*"$'
  
  if test $status -ne 0
    echo "Some error occured"
  end
end
