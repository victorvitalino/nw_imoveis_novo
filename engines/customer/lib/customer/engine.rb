module Customer
  class Engine < ::Rails::Engine
    isolate_namespace Customer
  end
end
