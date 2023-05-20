# frozen_string_literal: true

require 'fileutils'
require 'relaton_ietf'

FileUtils.rm_rf("data")
FileUtils.rm Dir.glob("index*")

RelatonIetf::DataFetcher.fetch("ietf-rfc-entries")

system "zip index-v1.zip index-v1.yaml"
system "git add index-v1.zip index-v1.yaml"
