# encoding: utf-8

require 'spec_helper'

describe "Default page" do

  before do
    2.times    { FactoryGirl.create(:movie) }

    @top_movie = FactoryGirl.create(:movie, score: 100)

    visit root_path
  end

  subject { page }

  it { Movie.count.should be == 3 }

  it { current_path.should be == movie_path(1) }

  it { should have_selector 'h1', text: @top_movie.title }

  it { should have_selector 'input#theaters_zip' }

  it "should link to the next movie" do
    click_link 'Next →'
    current_path.should be == movie_path(2)
  end

  context "when a zip_code cookie is present" do

    it "should redirect to showtime page for top ranking movie" do

      zip_code = 20024
      page.driver.browser.set_cookie "zip_code=#{zip_code}"

      Fandango.stub(:movies_near) { [@top_movie.title] }
      Recommendations.any_instance.stub(:showtime_information) { [] }

      visit root_path

      current_path.should be == movie_theater_path( 1, zip_code )

    end
  end
end