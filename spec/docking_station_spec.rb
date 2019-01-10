require 'docking_station'
#require 'bike'
describe DockingStation do
  before(:each) do
    @docking_station = DockingStation.new
    @newbike = Bike.new
  end

  it 'expects release_bike to return a bike when a (working) bike is at the station' do
    @docking_station.dock(@newbike)
    expect(@docking_station.release_bike).to eq(@newbike)
  end

  it 'expects bike attribute of station to equal docked bike' do
    @docking_station.dock(@newbike)
    expect(@docking_station.docked_bikes).to include(@newbike)
  end

  it 'expects new docking station with no bikes to raise error when releasing a bike' do
    expect { @docking_station.release_bike }.to raise_error("There are no bikes")
  end

  it 'will raise an error if attempting to dock a bike in a full station' do
    20.times { @docking_station.dock @newbike }
    expect { @docking_station.dock("21st bike") }.to raise_error("Station is full")
  end

  it 'will give false if the docking station is not full' do
   expect(@docking_station.full?).to eq false
 end

 it 'will give true if the docking station is full' do
   20.times { @docking_station.dock @newbike }
   expect(@docking_station.full?).to eq true
 end

end
