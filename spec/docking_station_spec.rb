require 'docking_station'
#require 'bike'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'expects release_bike to return a bike when a (working) bike is at the station' do
    station_with_bike = DockingStation.new
    bike_at_station = Bike.new
    station_with_bike.dock(bike_at_station)
    expect(station_with_bike.release_bike).to eq(bike_at_station)
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'expects bike attribute of station to equal docked bike' do
    subject.dock(Bike.new)
    expect(subject.bike.class).to eq Bike
  end

  it 'expects new docking station with no bikes to raise error when releasing a bike' do
    expect { DockingStation.new.release_bike }.to raise_error("There are no bikes")
  end
end
