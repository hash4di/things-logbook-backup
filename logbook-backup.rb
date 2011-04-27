require 'things'

todos = Things::List.logbook.todos


html = ""
html << "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">\n"
html << "<html>\n"
html << "\t<head>\n"
html << "\t\t<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=UTF-8\">\n" 
html << "\t\t<link href=\"style.css\" media=\"screen, projection, print\" rel=\"stylesheet\" type=\"text/css\" />\n"

todos[1..10].each do |todo|
  html << "\t\t\t<li class=\"border_radius\">\n"
  html << "\t\t\t\t<span class=\"status\">&#10003</span>\n"
  html << "\t\t\t\t<span class=\"completion_date\">#{todo.completion_date.asctime}</span>\n"
  html << "\t\t\t\t<span class=\"name\">#{todo.name}</span>\n"
  html << "\t\t\t</li>\n"
end

html << "\t\t</ul>\n"
html << "\t</body>\n"
html << "</html>"

test = File.new("logbook_backup.html", "w")
test.write(html)
test.close
