require('rspec')
require('places')


describe(Place) do

  describe('.all') do
    it('is empty at first') do
      expect(Place.all()).to(eq([]))
  end
 end

  describe('#get_place') do
    it('tests for an instance variable') do
      new_place = Place.new("Hong Kong")
      expect(new_place.get_place).to(eq("Hong Kong"))
    end
  end

  describe('#save') do
    it('pushes an instance of a class to the "all" variable array') do
      Place.clear()
      new_place = Place.new("Tokyo")
      new_place.save()
      new_place_2 = Place.new("Oregon")
      new_place_2.save()
      expect(Place.all()).to(eq([new_place, new_place_2]))
    end
  end

  describe(".clear") do
    it("clears the @@places array") do
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

  describe(".display") do
    it("displays the name of each place in the 'all' array") do
      Place.clear()
      new_place = Place.new("Tokyo")
      new_place.save()
      new_place_2 = Place.new("Oregon")
      new_place_2.save()
      expect(Place.display()).to(eq("Tokyo" "Oregon"))
    end
  end


end
