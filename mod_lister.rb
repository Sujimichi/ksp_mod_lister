require 'rubygems'
require 'bundler/setup'
require 'KerbalX'

class ModLister
  def self.list_mods args
    dir = (args[0] || Dir.getwd)
    parser = KerbalX::PartParser.new dir, :associate_components => false
    mod_names = parser.parts.group_by{|p,k| k[:mod] }.keys.sort
    unless mod_names.empty?
      filedata = mod_names.map{|mod_name| "- #{mod_name}\n"}.join
      puts "\n\n#{filedata}\n\nWritting File mod_names.txt to #{Dir.getwd}\n\n"
      File.open("mod_names.txt", "w"){|f| f.write filedata}
    else
      puts "\nDid not find any mods in #{Dir.getwd}\nMake sure the target path is the root of a KSP folder\n\n"
    end
  end
end

ModLister.list_mods ARGV
