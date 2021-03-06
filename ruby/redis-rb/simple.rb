require "redis"

if !(ARGV.length == 2 || ARGV.length == 3)
  puts "Usage: host port password"
  return
end

HOST = ARGV[0]
PORT = ARGV[1]
PASSWORD = ARGV.length == 3 ? ARGV[2] : nil
begin
  redis = Redis.new(host: HOST, port: PORT, password: PASSWORD)
  print "Set: ", redis.set("foo", "bar")
  puts
  print "Get:", redis.get("foo")
  puts
  #close connection at end of application
  redis.close
rescue StandardError => e
  puts e.inspect
end
