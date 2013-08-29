class Url < ActiveRecord::Base
  # Remember to create a migration!
  
  # validation for an http address
  validates :long_url, format: { with: /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix }

  before_save :make_short_url

  # private

  # encapsulate in url model or use a filter/callback like 'before_save'
   def make_short_url
      self.short_url =  "shorty" + ((1..9).to_a + ('a'..'z').to_a).sample(5).join('')
   end

end
