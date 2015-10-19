require 'csv'

namespace :client do
  desc "migração Cadastros"
  task :migrate => :environment do
    @index = 0
    CSV.foreach("lib/files/clients.csv", :col_sep => "#") do |row|
      @index += 1

      @client = Client.new 
      @client.id                = row[0]
      @client.username          = row[0]
      @client.social_reason     = row[3]
      @client.fantasy_name      = row[4]
      @client.address           = row[5]
      @client.contact_email     = row[6]
      @client.email             = row[7]
      @client.telephone         = row[8]
      @client.celphone          = row[9]
      @client.responsible_name  = row[10]
      @client.logo_path         = row[11]
      @client.cep               = row[13]
      @client.city              = row[14].to_s.upcase
      @client.uf                = row[15].to_s.upcase
      @client.cnpj              = row[16]
      @client.type_client       = 0
      @client.responsible_telephone = row[18]

      @client.password              = '123456789'
      @client.password_confirmation = '123456789'
      
      @client.save!

      puts @index
    end
  end
end