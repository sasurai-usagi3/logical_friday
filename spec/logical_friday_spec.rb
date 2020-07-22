require 'date'

RSpec.describe LogicalFriday do
  it "has a version number" do
    expect(LogicalFriday::VERSION).not_to be nil
  end

  it { expect(Date.new(2020, 7, 24).logical_friday?).to be_truthy }

  it { expect(Date.new(2020, 3, 19).logical_friday?).to be_truthy }
end
