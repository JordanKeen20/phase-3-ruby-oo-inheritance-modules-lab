require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable


  @@songs = []

                      # Removed code

                      # def initialize
                      #   self.class.all << self
                      # end

  def self.find_by_name(name)
  @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

                                # Removed code

                                # def self.reset_all
                                #   self.all.clear
                                # end

                                # def self.count
                                #   self.all.count
                                # end

  def artist=(artist)
    @artist = artist
  end

                                # Removed Code
                                # def to_param
                                #   name.downcase.gsub(' ', '-')
                                # end
end
