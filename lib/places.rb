class Place

  @@all = []

  define_method(:initialize) do |user_place|
    @user_place = user_place
  end

  define_method(:get_place) do
    @user_place
  end

  define_singleton_method(:all) do
    @@all
  end

  define_method(:save) do
    @@all.push(self)
  end

  define_singleton_method(:display) do
    array = []
    @@all.each do |element|
      array.push(element.get_place())
    end
    array.join()
  end
end
