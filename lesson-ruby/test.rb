require 'erb'

def web_page
  <<-PAGE
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>タイトル</title>
  </head>
  <body>
    <p><%= Time.now %></p>
  </body>
</html>
  PAGE
end

erb = ERB.new(web_page)
result = erb.result
puts result