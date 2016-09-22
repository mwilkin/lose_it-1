require 'rails_helper'

describe Exercise do
  it { should validate_presence_of :description }
  it { should validate_presence_of :activity }
  it { should validate_presence_of :calories }
  it { should validate_presence_of :date }
end
