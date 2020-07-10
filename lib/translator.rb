require 'pry'
require 'yaml'
# emote = YAML.load_file('lib/emoticons.yml')
# emote
# binding.pry


def load_library(emote)
  emote = YAML.load_file('lib/emoticons.yml')
  new_hash = {}
  emote.each do |key,value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
    # binding.pry
  end
  new_hash
end

def get_japanese_emoticon(emote, emoticons)
  library = load_library(emote)
  emoticons = library.keys.find do |key|
    library[key][:english] == emoticons
  end
  emotion ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
  # binding.pry
end

def get_english_meaning
  # code goes here
end