require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  
  it 'gets a working bike' do
   bike = subject.release_bike
   expect(bike).to be_working
  end
  
  it 'docks a bike' do
    is_expected.to respond_to(:dock).with(1).argument
  end


  # we need to write a test that checks if the bike can be seen after its been docked
  it 'shows docked bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end


end


