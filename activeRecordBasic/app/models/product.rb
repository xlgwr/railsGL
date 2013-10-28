class Product < ActiveRecord::Base
  validates :name, presence: true
  after_initialize do |product|
    puts "You have initialize on porduct!"
  end
  after_find do |product|
    puts "You have found an product."
  end
end
