require 'benchmark'
require_relative '../lib/delete_ats.rb'

ARRAY_SIZE = gets.to_i
array_1 = (0...ARRAY_SIZE).to_a
array_2 = array_1.dup
array_3 = array_1.dup
array_4 = array_1.dup
being_deleted = 0.step(ARRAY_SIZE - 1, 2).to_a
Benchmark.bm do |x|
  puts ("ARRAY_SIZE: #{sprintf("%.0e", ARRAY_SIZE)}")
  x.report("1:") { array_1.delete_ats_1(being_deleted) }
  x.report("2:") { array_2.delete_ats_2(being_deleted) }
  x.report("3:") { array_3.delete_ats_3(being_deleted) }
  x.report("4:") { array_4.delete_ats_4(being_deleted) }
end
