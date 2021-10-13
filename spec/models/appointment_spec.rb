require 'rails_helper'

RSpec.describe Appointment, type: :model do
  before { @appointment = FactoryBot.build(:appointment) }
  @house = FactoryBot.build(:house)
  @user = FactoryBot.build(:user)
  subject { @appointment }

  it { should respond_to(:house_id) }
  it { should respond_to(:user_id) }
end
