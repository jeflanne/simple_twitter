#!/usr/bin/env ruby
require ("simple_twitter")
require ('pp')
run = SimpleTwitter::Search.new
#def run_twitter
loop do
  $stdout.write("Please specify Twitter keyword search ")
  keyword = $stdin.gets.chomp
break if keyword=="quit"
  $stdout.write("Specify results per page ")
    perpage = $stdin.gets.chomp
    $stdout.write("What language?  ")
    language = $stdin.gets.chomp

  run.per_page = perpage
run.lang = language
  pp(run.search(keyword))
#puts(run.search(keyword))
end

