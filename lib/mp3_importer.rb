class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end



  def files
    files = Dir.glob("#{self.path}/*.mp3") #looked this up
    #how exactly does it work in detail? Didn't completely understand reading
    files.collect do |file|
      file.split("/").last
    end
  end

  def import
    files.collect do |filename|
      Song.new_by_filename(filename)
    end 
  end
end
