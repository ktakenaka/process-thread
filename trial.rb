print "--- thread ---\n"

@hoge = 123
print "hoge: #{@hoge}\n"
Thread.fork do
  @hoge = 456
  print "in forked thred: #{@hoge}\n"
end

sleep 1
print "in parent thread: #{@hoge}\n"


print "--- process ---\n"

@hoge = 123
print "hoge: #{@hoge}\n"
Process.fork do
  @hoge = 456
  print "in forked process: #{@hoge}\n"
end

sleep 1
print "in parent process: #{@hoge}\n"
