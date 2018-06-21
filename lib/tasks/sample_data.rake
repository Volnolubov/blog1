namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "gena",
                         email: "genavinogradov@gmail.com",
                         password: "noogen19811981",
                         password_confirmation: "noogen19811981",
                         admin: true)
  
  end
end