class User < ApplicationRecord
  validates :username, uniqueness: true

  def self.generate
    adjectives = ['Ancient', 'Creative', 'Dangerous', 'Effective', 'Flying']
    nouns = ['Highway', 'Intern', 'Jackhammer', 'Lion']
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end
end
