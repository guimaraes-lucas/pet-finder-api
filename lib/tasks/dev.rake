# frozen_string_literal: true

namespace :dev do
  desc 'Setting up the development environment'
  task setup: :environment do
    puts 'Reseting the database...'
    `rails db:drop db:create db:migrate db:seed`

    puts 'Registering users...'
    20.times do |_i|
      User.create!(
        name: Faker::TvShows::Friends.character,
        email: Faker::Internet.email,
        password: Faker::Internet.password,
        address: create_fake_address
      )
    end
    puts 'Users successfully registered'

    puts 'Registering pets...'
    100.times do |_i|
      Pet.create!(
        user: User.all.sample,
        type_pet: TypePet.all.sample,
        name: Faker::Music.band,
        breed: Faker::Date.forward,
        age: rand(0..18),
        weight: rand(1.0..30.0).round(2),
        city: Faker::Address.city
      )
    end
    puts 'Pets successfully registered'
  end

  private

  def create_fake_address
    Address.new(
      street: Faker::Address.street_name,
      number: Faker::Address.building_number,
      city: Faker::Address.city,
      state: Faker::Address.state
        )
  end
end