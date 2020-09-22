lgi = require 'lgi' 

gtk = lgi.Gtk
gtk.init()

bld= gtk.Builder()
bld:add_from_file('lab-2.glade')

ob = bld.objects

function ob.btn_dd:on_clicked(...)
a = tonumber(ob.txt_a.text)
b = tonumber(ob.txt_b.text)
ob.result.label = a + b
end

function ob.btn_sub:on_clicked(...)
a = tonumber(ob.txt_a.text)
b = tonumber(ob.txt_b.text)
ob.result.label = a - b
end

function ob.btn_umn:on_clicked(...)
a = tonumber(ob.txt_a.text)
b = tonumber(ob.txt_b.text)
ob.result.label = a * b
end

function ob.btn_del:on_clicked(...)
a = tonumber(ob.txt_a.text)
b = tonumber(ob.txt_b.text)
ob.result.label = a / b
end

ob.wnd:show_all()

gtk.main()


