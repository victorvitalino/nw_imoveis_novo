require 'csv'

namespace :project do
  desc "migração Cadastros"
  task :migrate => :environment do
    @index = 0
    CSV.foreach("lib/files/projects.csv", :col_sep => "#") do |row|
      @index += 1

      @project = Project.new 
      @project.id                = row[0]
      @project.client_id         = row[1]
      @project.name              = row[2]
      @project.image_path        = row[3]
      @project.save!

      puts @index
    end
  end
end