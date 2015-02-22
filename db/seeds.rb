namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Admin",
		email: "bwood@gmail.com",
		password: "Pr32c0tt",
		password_confirmation: "Pr32c0tt",
		admin: true)
	end
end