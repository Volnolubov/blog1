# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = {

    admin: {

        username: 'admin',
        email: 'svetozarvolnolubov@yandex.ru',
        password: 'noogen19811981',
        password_confirmation: 'noogen19811981',
        is_admin: true
    },

    
}

users.each do |user, data|

  user = User.new(data)

  unless User.where(email: user.email).exists?
    user.save!
  end
end