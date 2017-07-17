require "http/server"

server = HTTP::Server.new(8080) do |context|
  context.response.content_type = "text/plain"
  context.response.print "HTTP Server Listening, got a message #{context.request.path}!"
end

puts "Listening on http://127.0.0.1:8080"
server.listen
