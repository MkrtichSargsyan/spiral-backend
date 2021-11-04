require 'rails_helper'

RSpec.describe Agent, type: :model do
  before { @agent = FactoryBot.build(:agent) }
  subject { @agent }

  it { respond_to have_many(:houses) }
  it { respond_to have_many(:appointment) }

  it { should respond_to(:name) }
  it { should respond_to(:title) }
  it { should respond_to(:photo) }
  it { should respond_to(:number) }

  it { should be_valid }

  context 'when agent is not valid' do
    describe 'name is empty' do
      before { @agent.name = ' ' }
      it { should_not be_valid }
    end

    describe 'title is empty' do
      before { @agent.title = ' ' }
      it { should_not be_valid }
    end

    describe 'number is empty' do
      before { @agent.number = ' ' }
      it { should_not be_valid }
    end

    describe 'photo is empty' do
      before { @agent.photo = ' ' }
      it { should_not be_valid }
    end
  end
end
