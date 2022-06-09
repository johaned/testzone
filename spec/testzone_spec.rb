# frozen_string_literal: true

RSpec.describe Testzone do
  it "has a version number" do
    expect(Testzone::VERSION).not_to be nil
  end

  it "does something useful" do
    variable = false
    expect(variable).to eq(true)
  end
end
