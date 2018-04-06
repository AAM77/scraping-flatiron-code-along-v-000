require_relative './course.rb'

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
    binding.pry
  end #get_page
  
  
  def get_courses
    get_page.css(".post").each do |course|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    
  end #get_courses
  
  
  def make_courses
    
  end #make_courses
  
  
  def print_courses
    
  end #print_courses
  
end # class Scraper

Scraper.new.get_page