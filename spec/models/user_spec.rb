require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'authentication' do
    let!(:user) { User.create!(name: 'bob', email: 'bob@llama.com', password: 'ham') }

    it "returns false if user supplies the wrong password" do
      expect(User.find_by(name: 'bob').try(:authenticate, 'spam')).to be false
    end

    it "returns the user if user supplies the right password" do
      expect(User.find_by(name: 'bob').try(:authenticate, 'ham')).to eq user
    end
  end
end
