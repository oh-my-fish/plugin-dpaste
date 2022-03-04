set -g __dpaste_expires_choises '(onetime|1|twotimes|2|hour|week|month|never)'
set -g __dpaste_url_dpaste_de 'https://dpaste.org/api/'
set -g __dpaste_keyword_dpaste_de 'content'
set -g __dpaste_url_sprunge_us 'http://sprunge.us/'
set -g __dpaste_keyword_sprunge_us 'sprunge'
set -g __dpaste_url_gist_github_com 'https://api.github.com/gists'
set -g __dpaste_keyword_gist_github_com 'github'

set -q dpaste_site; or set -g dpaste_site 'dpaste.org'
set suffix (echo $dpaste_site | sed "s/\./_/g")

set -g __dpaste_url_data 'format=url'
set -g __dpaste_keyword (eval 'echo $__dpaste_keyword_'$suffix)
set -q __dpaste_keyword; or set -g __dpaste_keyword $__dpaste_keyword_dpaste_de
set -g __dpaste_send_url (eval 'echo $__dpaste_url_'$suffix)
set -q __dpaste_send_url; or set -g __dpaste_send_url $__dpaste_url_dpaste_de
set -g __dpaste_eat_once 1
