require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  
  it 'gets a working bike' do
   bike = Bike.new 
   subject.dock(bike)
   expect(subject.release_bike).to be_working
  end
  
  it 'docks a bike' do
    is_expected.to respond_to(:dock).with(1).argument
  end


  # we need to write a test that checks if the bike can be seen after its been docked
  it 'shows docked bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  
  it {expect {subject.release_bike}.to raise_error("This bike does not exist")}
  
  it 'shows docking station is full' do
    bike2 = Bike.new
    subject.dock(bike2)
    expect {subject.dock(bike2)}.to raise_error("This dock is full")
  end

end




