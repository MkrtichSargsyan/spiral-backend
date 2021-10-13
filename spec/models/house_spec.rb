# rubocop:disable Metrics/BlockLength
require 'rails_helper'

RSpec.describe House, type: :model do
  before { @house = FactoryBot.build(:house) }
  subject { @house }

  it { should be_valid }

  context 'when house is not valid' do
    describe 'address is empty' do
      before { @house.address = ' ' }
      it { should_not be_valid }
    end

    describe 'pictures is empty' do
      before { @house.pictures = ' ' }
      it { should_not be_valid }
    end

    describe 'price is empty' do
      before { @house.price = ' ' }
      it { should_not be_valid }
    end

    describe 'description is empty' do
      before { @house.description = ' ' }
      it { should_not be_valid }
    end

    describe 'features is empty' do
      before { @house.features = ' ' }
      it { should_not be_valid }
    end

    describe 'bedrooms is empty' do
      before { @house.bedrooms = ' ' }
      it { should_not be_valid }
    end

    describe 'bathrooms is empty' do
      before { @house.bathrooms = ' ' }
      it { should_not be_valid }
    end

    describe 'sqft is empty' do
      before { @house.sqft = ' ' }
      it { should_not be_valid }
    end

    describe 'long is empty' do
      before { @house.long = ' ' }
      it { should_not be_valid }
    end

    describe 'lat is empty' do
      before { @house.lat = ' ' }
      it { should_not be_valid }
    end

    describe 'acres is empty' do
      before { @house.acres = ' ' }
      it { should_not be_valid }
    end

    describe 'agent_id is empty' do
      before { @house.agent_id = ' ' }
      it { should_not be_valid }
    end
  end
end
# rubocop:enable Metrics/BlockLength
