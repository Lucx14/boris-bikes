require 'bike'

describe Bike do

  it ".working? returns true" do
    expect(subject.working?).to eq(true)
  end

  it ".report_broken - responds to method" do
    expect(subject).to respond_to(:report_broken)
  end

  it ".report_broken - can be reported broken" do
    subject.report_broken
    expect(subject).to be_broken
  end

end
