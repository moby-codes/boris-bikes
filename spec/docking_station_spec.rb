require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  
  it 'responds to release_bike' do
   expect(subject).to respond_to :release_bike
  end

  it 'bikes work' do 
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it 'gets a working bike' do
    bike = Bike.new
    subject.dock(bike)
    test_bike = subject.release_bike
    expect(test_bike.working?).to eq true
  end
  
  it 'docks a bike' do
    is_expected.to respond_to(:dock).with(1).argument
  end

  it 'shows docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).not_to be_empty
  end
  
  it 'raises an error when no bikes are available to be released' do 
    expect {subject.release_bike}.to raise_error("This bike does not exist") 
  end
  
  it 'shows docking station is full' do
    bike = Bike.new
    expect { 21.times {subject.dock(bike)} }.to raise_error("This dock is full")
  end

end




