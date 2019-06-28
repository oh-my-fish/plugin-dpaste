function __dpaste_auth
  read -P "Enter your GitHub Username : " -l username
  read -s -P "Enter your GitHub Password : "  -l password
  set -l auth (echo -n "$username:$password" | base64)
  echo "Basic $auth"
end
