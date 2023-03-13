# frozen_string_literal: true

require 'fileutils'

t1 = Time.now
puts "Started at: #{t1}"

FileUtils.rm_rf("data")
system("relaton fetch-data ietf-rfc-entries")

t2 = Time.now
puts "Stopped at: #{t2}"
puts "Done in: #{(t2 - t1).round} sec."
