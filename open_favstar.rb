# -*- coding: utf-8 -*-
# favstarを開く

Module.new do
  Plugin.create(:open_favstar).add_event_filter(:command){ |menu|
    menu[:open_favstar] = {
      :slug => :open_favstar,
      :name => 'こいつのfavstarを見る',
      :condition => lambda{ |m| m.message.repliable? },
      :exec => lambda{ |m| Gtk::openurl("http://favstar.fm/users/#{m.message.user.idname}/recent") },
      :visible => true,
      :role => :message }
    [menu]
  }
end
