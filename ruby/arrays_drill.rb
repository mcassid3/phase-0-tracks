def build_array (item1,item2,item3)
  array = [item1,item2,item3]
end

p build_array(1,2,3)

def add_to_array (array,item)
     array << item
end
p add_to_array([1,2,3], 4)

#tv_shows = [] 
#
#tv_shows += ['Game of thrones', 'Breaking Bad', 'The wire', 'the office', 'silicon valley']
#
#tv_shows.delete_at(2)
#
#tv_shows.insert(2, "Vinyl")
#
#tv_shows.shift
#
#tv_shows.index('the office')
#
#other_shows = ['family guy','john oliver','sopranos']
#
#combined = tv_shows + other_shows
#
#p combined