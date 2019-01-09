require 'docking_station'
#require 'bike'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'expects release_bike equals a new bike' do
  expect(subject.release_bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'expects bike attribute of station to equal docked bike' do
    subject.dock(Bike.new)
    expect(subject.bike.class).to eq Bike
  end

  it 'expects docking station to respond to has_bike?' do
    expect(subject).to respond_to (:has_bike?)
  end
end
