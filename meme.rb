require 'securerandom'

class Meme
  def self.adjectives
    @@adjectives ||= %w{lol yolo icanhaz}
  end

  def self.nouns
    @@nouns ||= %w{cat paws cheezburger}
  end

  def self.suffix
    @@suffix ||= (1000..9999).to_a
  end

  def self.generate
    "#{pick_random(adjectives)}-#{pick_random(nouns)}-#{pick_random(suffix)}"
  end

  def self.pick_random(arr)
    arr[ SecureRandom.random_number(arr.size) ]
  end
end
