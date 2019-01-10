require 'bike'

describe Bike do

  it { is_expected.to respond_to :working? }

  it 'should update working to false on update_bike_if_broken ' do
    bike = Bike.new
    updated = bike.report_broken
    expect(updated).to eq bike.working?
  end

  # it 'should print to stdout' do
  #   bike = Bike.new
  #   test = bike.condition
  #   expect {test}.to output("is the bike working or broken?").to_stdout
  # end
  #
  # it 'should get user input and update bike broken' do
  #
  # end

end
