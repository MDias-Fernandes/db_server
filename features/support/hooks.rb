require 'capybara'
require 'capybara/cucumber'
require 'faker'

Before '@ecommerce' do
    @email_address = Faker::Internet.email
    @first_name = Faker::Name.first_name
    @last_name = Faker::Name.last_name
    @password = 'dbserver123!'
    @company = 'DB Server'
    @address = 'Morumbi'
    @city = 'São Paulo'
    @state = 'Alabama'
    @zip_code = '00000'
    @additional_info = Faker::Company.catch_phrase
    @home_phone = Faker::PhoneNumber.phone_number
    @mobile_phone = Faker::PhoneNumber.cell_phone
    @future_ref = Faker::Company.buzzword
end