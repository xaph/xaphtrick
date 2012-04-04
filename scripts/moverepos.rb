require 'date'

repos = `find -L -maxdepth 1 -type d -name '*' ! -name '.*' -printf '%f\n'`.split("\n")

puts "starting to dump. May the force be with you! \n \n"
repos.each { |repo|
  puts "started dumping svn repo: #{repo}"
  t = Time.now
  date = t.strftime("%d%m%Y_%H%M")
  dumpname = "#{repo}_#{date}.svn_dump"
  `svnadmin dump #{repo} > #{dumpname}`
  if File.exists? dumpname
    puts "dumpfile: #{dumpname} created successfully"
  else
    puts "problem occurred while creating dumpfile: #{dumpname}"
  end
}
puts "Exiting..."
