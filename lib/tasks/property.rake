require 'csv'

namespace :property do
  desc "migração Cadastros"
  task :migrate => :environment do
    @index = 0
    CSV.foreach("lib/files/properties.csv", :col_sep => "#") do |row|
      @index += 1

      @property = Property.new 
      @property.id                = row[0]
      @property.situation         = row[1].to_i #ATUALIZAR
      @property.type_property     = row[2].to_i #ATUALIZAR
      
      @property.uf         = row[3]
      @property.cep        = row[4]
      @property.city       = row[5]
      @property.district   = row[6]
      @property.address    = row[7]
      @property.number     = row[8]
      @property.complement = row[9]

      @property.complement_link_visible = row[11]
      @property.address_link_visible    = row[12]

      @property.coverage    = row[13]
      @property.commercial  = row[14]

      @property.rooms  = row[16]
      @property.group  = row[17]
      @property.block  = row[18]
      @property.unit   = row[19]
      @property.value  = row[20].to_f
      @property.suit   = row[21]
      @property.elevator = row[22]
      @property.value_m2 = row[23]
      @property.area     = row[24]
      @property.floor    = row[25]
      @property.sun_position = row[26]
      @property.description = row[28]
      @property.value_rent = row[30].to_f

      @property.iptu = row[32]
      @property.expiration_date = row[33]
      @property.name = row[35]
      @property.parking_spaces = row[36]
      @property.project_id = row[37]
      @property.link_tour  = row[29]

      @property.save!
    end
  end
end