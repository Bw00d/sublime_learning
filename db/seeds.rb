namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Admin",
		email: "bwood@gmail.com",
		password: "foobar",
		password_confirmation: "foobar",
		admin: true)
	end
end