require 'spec_helper'

# describe "Authentication" do

#   subject { page }

#   describe "login page" do
#     before { visit login_path }

#     it { should have_content('Login') }
#     it { should have_title('Login') }
#   end

#   describe "login" do
#     before { visit login_path }

#     describe "with invalid information" do
#       before { click_button "Login" }

#       it { should have_title('Login') }
#       it { should have_selector('div.alert.alert-error') }
#     end

#     describe "with valid information" do
#       let(:user) { FactoryGirl.create(:user) }
#       before do
#         fill_in "Email",    with: user.email.upcase
#         fill_in "Password", with: user.password
#         click_button "Login"
#       end

#       it { should have_title(user.name) }
#       it { should have_link('Profile',     href: user_path(user)) }
#       it { should have_link('Logout',    href: logout_path) }
#       it { should_not have_link('Login', href: login_path) }
#     end
#   end
# end