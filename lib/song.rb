require 'pry'

class Song
  attr_accessor :artist, :title

  def initialize() end

  def slugify
    slug = @title.gsub(" ", "_").downcase
    file = Tempfile.new([slug, ".txt"], "tmp")
    file.write("#{self.artist.name} - #{self.title}")
    file.close
  end
end
