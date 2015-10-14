require 'csv'

namespace :property_images do
  desc "migração Cadastros"
  task :migrate => :environment do
    @index = 0
    CSV.foreach("lib/files/property_images.csv", :col_sep => "#") do |row|
      @index += 1

      @image = PropertyImage.new 
      @image.property_id        = row[1]
      @image.image_path         = row[2]

      @image.save!

      puts @index
    end
  end
end