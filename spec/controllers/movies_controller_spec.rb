require 'spec_helper'

describe MoviesController do
  describe 'find movies by director' do
    it 'should update director data when a movie is edited' do
      m = Movie.new
      m.update_attributes!(:director => 'Fox')
      m.director.should == 'Fox'
    end
    
    it 'should make the director search results available to that template'
  end
    
end