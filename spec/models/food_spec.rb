require 'rails_helper'

describe Food do
  it { should validate_presence_of :description }
  it { should validate_presence_of :meal }
  it { should validate_presence_of :calories }
  it { should validate_presence_of :date }
end
