require "yaml"
WORDS = YAML.load_file("madlibs_words.yml")
WORDS.each { |k, v| WORDS[k] = v.split }

template = File.read("madlibs_template.txt")

puts template.gsub(/\b(#{WORDS.keys.join("|")})\b/) { WORDS[$1].sample }
