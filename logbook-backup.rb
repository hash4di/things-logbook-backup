require 'things'

todos = Things::List.logbook.todos


html = ""
html << "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">\n"
html << "<html>\n"

html << "\t<head>\n"
html << "\t\t<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=UTF-8\">\n" 
html << "\t\t<link href=\"style.css\" media=\"screen, projection, print\" rel=\"stylesheet\" type=\"text/css\" />\n"
html << "\t<head>\n"

todos.each do |todo|
  html << "\t\t\t<li class=\"border_radius\">\n"
  html << "\t\t\t\t<span class=\"status\">&#10003</span>\n"
  html << "\t\t\t\t<span class=\"completion_date\">#{todo.completion_date.asctime}</span>\n"
  html << "\t\t\t\t<span class=\"name\">#{todo.name}</span>\n"
  html << "\t\t\t</li>\n"
end

html << "\t\t</ul>\n"

html << "\t</body>\n"

html << "</html>"
backup = File.new("logbook_backup_#{Time.now}.html", "w")
backup.write(html)
backup.close
