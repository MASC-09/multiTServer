require 'socket'
starttime = Process.clock_gettime(Process::CLOCK_MONOTONIC)


s = TCPSocket.new 'localhost', 8989
s. write("/home/mike/Uni/SistemasOperativos/multiTServer/testfiles/#{ARGV[0]}.c\n")
s.each_line do |line|
    # puts line
end

s.close
endtime = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = endtime - starttime
puts "Elapsed: #{elapsed} (#{ARGV[0]})" 