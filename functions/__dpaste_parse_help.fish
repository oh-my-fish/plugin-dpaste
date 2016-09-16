function __dpaste_parse_help
  begin
    contains -- -h $argv
	or contains -- --help $argv
  end
  and __dpaste_help
end
