require './worker'

10.times do
  File.open("lasgsx01.20120108183507.1026188.2158213975", "r") do |file|
    file.each do |line|
      HardWorker.perform_async(line, 5)
    end
  end
end