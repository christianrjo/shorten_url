require 'Faker'

20.times do |t|
  Url.create(

    long_url: Faker::Internet.domain_name

    )
end
