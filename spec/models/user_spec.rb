require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryBot.build(:user) }
  subject { @user }

  it { respond_to have_many(:houses) }
  it { respond_to have_many(:appointments) }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }

  it { should be_valid }

  context 'when user is not valid' do
    describe 'name is empty' do
      before { @user.name = ' ' }
      it { should_not be_valid }
    end

    describe 'email is empty' do
      before { @user.email = ' ' }
      it { should_not be_valid }
    end

    describe 'password is empty' do
      before { @user.password_digest = ' ' }
      it { should_not be_valid }
    end
  end
end
