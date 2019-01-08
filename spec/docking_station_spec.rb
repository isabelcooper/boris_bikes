require 'docking_station'
require 'bike'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'expects release_bike equals a new bike' do
  expect(subject.release_bike.working?).to eq true
  end

end
