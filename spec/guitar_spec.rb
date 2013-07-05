require 'main'

describe Guitar do
  #Individiual Test
  it 'has guitars in the database' do
    guitars = Guitar.all
    guitars.count.should > 0
    guitars.count.is_a?(Integer)
  end

  it 'allows creation of new guitars with no params' do
    current_guitar_count = Guitar.all.count
    Guitar.create()
    new_guitar_count = Guitar.all.count
    new_guitar_count.should == current_guitar_count
  end
end
