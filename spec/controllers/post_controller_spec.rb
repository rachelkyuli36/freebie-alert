require 'rails_helper'
describe MoviesController, :type => :controller do
  before (:all) do
    if Movie.where(:director => "Ruth Lee").empty?
      Movie.create(:title => "Clash of Clan", :director => "Ruth Lee",
                   :freebie => "PG-13", :release_date => "2022-06-12")
      Movie.create(:title => "Pride and Prejudice", :director => "Ruth Lee",
                   :freebie => "R", :release_date => "2022-12-12")
    end
    if Movie.where(:title => "Gilmore Girls").empty?
      Movie.create(:title => "Gilmore Girls",
                   :freebie => "PG", :release_date => "2012-03-05")
    end
  end
  describe "find movies with similar director" do
    it "returns movies with the same director if exists" do
      movie = Movie.find_by(title: "Clash of Clan")
      same_movies = Movie.similar_director(movie.title)
      expect(same_movies).to include("Pride and Prejudice")
    end
    it "can't find similar movies if we don't know director" do
      movie = Movie.find_by(title: "Gilmore Girls")
      same_movies = Movie.similar_director(movie.title)
      expect(same_movies).to eq(nil)
    end
  end

  describe "creating a movie" do
    it "redirects to home page after movie is created" do
      get :create, {:movie => {"title" => "Princess Diaries", :director => "Steven Spiel",
      :freebie => "PG", :release_date => "2022-06-12"}}
      expect(response).to redirect_to('/movies')
    end
  end

  describe "destroying a movie" do
    it "redirects to home page after movie is destroyed" do
      Movie.create(:id => 12, :title => "Gilmore Girls 2",
                   :freebie => "PG-13", :release_date => "2002-03-05")
      get :destroy, {:id => 12}
      expect(response).to redirect_to('/movies')
    end
  end
  describe "updating a movie" do
    it "redirects to home page after movie is updated" do
      Movie.create(:id => 12, :title => "Gilmore Girls 2",
                   :freebie => "PG-13", :release_date => "2002-03-05")
      get :update, id: 12, movie:{"title" => "Updated Gilmore", "freebie" => "PG"} 
      expect(response).to redirect_to('/movies/12')
      expect(Movie.find_by(id: 12).title).to eq("Updated Gilmore")
    end
  end
end