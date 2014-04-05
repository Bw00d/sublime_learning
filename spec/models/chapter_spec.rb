require "spec_helper"

describe Chapter do
	it { should have_many :lessons }
end