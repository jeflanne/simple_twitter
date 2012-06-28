#!/usr/bin/env ruby
require ("simple_twitter")
require ('pp')

#def run_twitter
class TwitterScript
 def initialize
   @keyword
   @perpage
   @language
   @output
 end
 def output(text)
  output == $stout.write(text)
  end
run = SimpleTwitter::Search.new
loop do
  # $stdout.write("Please specify Twitter keyword search ")
   r.output("Please specify Twitter keyword search ")
   @keyword = $stdin.gets.chomp
   break if @keyword == "quit"
   $stdout.write("Specify results per page ")
   @perpage = $stdin.gets.chomp
   break if @perpage == "quit"
   $stdout.write("What language?  ")
   @language = $stdin.gets.chomp
   break if @language =="quit"
run.per_page = @perpage
run.lang = @language
pp(run.search(@keyword))
end
 end
TwitterScript.new





