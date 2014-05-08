require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title "Sign up | Sublime Learning" }
  end

  describe "signup" do
    before { visit signup_path }

    let(:submit) { "Submit" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "user_password_confirmation", with: "foobar"
      end

      it "should create a user" do
        current_lesson = FactoryGirl.create(:lesson) #necessary for redirect
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user" do
        current_lesson = FactoryGirl.create(:lesson) #necessary for redirect
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }
        before { click_link "right-menu"}

        it { should have_link('Logout') } 
        it { should have_content(user.name) }
      end

      describe "followed by signout" do
        before { click_link "right-menu"}
        before { click_link "Logout" }
        before { click_link "Get Started"}
        it { should have_link('Login') }
      end
    end
  end
end