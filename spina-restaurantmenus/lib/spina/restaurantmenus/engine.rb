module Spina
  module Restaurantmenus
    class Engine < ::Rails::Engine
      isolate_namespace Spina

      initializer "register plugin" do
        plugin = ::Spina::Plugin.new
        plugin.name = "Restaurant menu"
        plugin.config = Restaurantmenus.config
        ::Spina.register_plugin(plugin)
      end
    end
  end
end