namespace :attributes do
  desc "migração attributos"
  task :migrate => :environment do
    Attribute.create([
      {status: true, name: "Aquecimento Solar"},
      {status: true, name: "Ar Condicionado"},
      {status: true, name: "Área de Lazer"},
      {status: true, name: "Área de Serviço"},
      {status: true, name: "Brinquedoteca"},
      {status: true, name: "Churrasqueira"},
      {status: true, name: "Circuito de TV"},
      {status: true, name: "Cobertura Coletiva"},
      {status: true, name: "Cozina com armários"},
      {status: true, name: "Despensa"},
      {status: true, name: "Escritório"},
      {status: true, name: "Gás Canalizado"},
      {status: true, name: "Gerador de energia"},
      {status: true, name: "Guarita"},
      {status: true, name: "Interfone"},
      {status: true, name: "Jardim"},
      {status: true, name: "Lavabo"},
      {status: true, name: "Piscina"},
      {status: true, name: "PlayGround"},
      {status: true, name: "Poço Artesiano"},
      {status: true, name: "Portão Eletrônico"},
      {status: true, name: "Quadra Esportiva"},
      {status: true, name: "Sala de Ginástica"},
      {status: true, name: "Salão de Festas"},
      {status: true, name: "Salão de Jogos"},
      {status: true, name: "Salão Gourmet"},
      {status: true, name: "Sauna"},
      {status: true, name: "SPA"},
      {status: true, name: "Varanda"},
      {status: true, name: "Mobiliado"}
    ])
  end
end