require 'rails_helper'

describe Question do
  it {should validate_presence_of :title}
  it {should validate_presence_of :description}
  it {should validate_presence_of :option_a}
  it {should validate_presence_of :option_b}

end
