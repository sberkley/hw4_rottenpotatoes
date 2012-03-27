require 'spec_helper'

describe Movie do
  describe 'director_search' do
    it 'should return a list of movies with the same director' do
        a = Movie.create(:title => 'a', :director => 'dir')
        b = Movie.create(:title => 'b', :director => 'other_dir')
        c = Movie.create(:title => 'c', :director => 'dir')
        
        results = a.find_with_same_director
        
        results.count.should eql 2
        results.each do |mov|
          mov.director.should eql a.director
        end
    end
    it 'should return nil if the movie had no director' do
      a = Movie.create(:title => 'a')
      b = Movie.create(:title => 'b', :director => 'other_dir')
      results = a.find_with_same_director
      results.should be_nil
    end
    
  end
end