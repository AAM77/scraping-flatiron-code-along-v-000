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
    course = @doc.css(".post h2")
    
  end #get_courses
  
  
  def make_courses
    
  end #make_courses
  
  
  def print_courses
    
  end #print_courses
  
end # class Scraper

Scraper.new.get_page