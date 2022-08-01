require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    validates :name, presence: true
    # validation tests/examples here
  end
end