local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gears = require("gears")

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local inicio = os.getenv("HOME")
local ruta_configuracion = inicio .. "/.config/awesome"

local mestizo = require("mestizo_aw")
local tema = {}

tema.font = "Ubuntu 8"

tema.bg_normal = mestizo.colores.base
tema.bg_focus = mestizo.colores.base
tema.bg_urgent = mestizo.colores.rojo
tema.bg_minimize = mestizo.colores.sombra
tema.bg_systray = tema.bg_normal

tema.fg_normal = mestizo.colores.reflejo
tema.fg_focus = mestizo.colores.tope
tema.fg_urgent = mestizo.colores.tope
tema.fg_minimize = mestizo.colores.tope

tema.useless_gap = dpi(6)
tema.border_width = dpi(1)
tema.border_normal = mestizo.colores.sombra
tema.border_focus = mestizo.colores.vacio
tema.border_marked = mestizo.colores.rojo

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
tema.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, tema.fg_normal)
tema.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, tema.fg_normal)

-- Variables set for theming notifications:
tema.notification_font = "Ubuntu 10"
tema.notification_bg = mestizo.colores.sombra
tema.notification_fg = mestizo.colores.tope
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
tema.notification_width = dpi(450)
tema.notification_icon_size = 50
tema.notification_border_color = mestizo.colores.contaminacion
tema.notification_border_width = dpi(1)
tema.notification_shape = function(cr, w, h)
	gears.shape.rounded_rect(cr, w, h, 20)
end

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
tema.menu_submenu_icon = themes_path .. "default/submenu.png"
tema.menu_height = dpi(15)
tema.menu_width = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
tema.bg_widget = mestizo.colores.rojo

-- Define the image to load
tema.titlebar_close_button_normal = ruta_configuracion .. "/recursos/img/circulo_degradado_rojo.png"
tema.titlebar_close_button_focus = ruta_configuracion .. "/recursos/img/circulo_degradado_rojo.png"

tema.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
tema.titlebar_minimize_button_focus = themes_path .. "default/titlebar/minimize_focus.png"

tema.titlebar_ontop_button_normal_inactive = themes_path .. "default/titlebar/ontop_normal_inactive.png"
tema.titlebar_ontop_button_focus_inactive = themes_path .. "default/titlebar/ontop_focus_inactive.png"
tema.titlebar_ontop_button_normal_active = themes_path .. "default/titlebar/ontop_normal_active.png"
tema.titlebar_ontop_button_focus_active = themes_path .. "default/titlebar/ontop_focus_active.png"

tema.titlebar_sticky_button_normal_inactive = ruta_configuracion .. "/recursos/img/circulo_degradado_verde.png"
tema.titlebar_sticky_button_focus_inactive = ruta_configuracion .. "/recursos/img/circulo_degradado_verde.png"
tema.titlebar_sticky_button_normal_active = ruta_configuracion .. "/recursos/img/circulo_degradado_amarillo.png"
tema.titlebar_sticky_button_focus_active = ruta_configuracion .. "/recursos/img/circulo_degradado_amarillo.png"

tema.titlebar_floating_button_normal_inactive = themes_path .. "default/titlebar/floating_normal_inactive.png"
tema.titlebar_floating_button_focus_inactive = themes_path .. "default/titlebar/floating_focus_inactive.png"
tema.titlebar_floating_button_normal_active = themes_path .. "default/titlebar/floating_normal_active.png"
tema.titlebar_floating_button_focus_active = themes_path .. "default/titlebar/floating_focus_active.png"

tema.titlebar_maximized_button_normal_inactive = ruta_configuracion .. "/recursos/img/circulo_degradado_azul.png"
tema.titlebar_maximized_button_focus_inactive = ruta_configuracion .. "/recursos/img/circulo_degradado_azul.png"
tema.titlebar_maximized_button_normal_active = ruta_configuracion .. "/recursos/img/circulo_degradado_magenta.png"
tema.titlebar_maximized_button_focus_active = ruta_configuracion .. "/recursos/img/circulo_degradado_magenta.png"

tema.wallpaper = inicio .. "/Imágenes/fondo_de_pantalla.png"

-- You can use your own layout icons like this:
tema.layout_fairh = themes_path .. "default/layouts/fairhw.png"
tema.layout_fairv = themes_path .. "default/layouts/fairvw.png"
tema.layout_floating = themes_path .. "default/layouts/floatingw.png"
tema.layout_magnifier = themes_path .. "default/layouts/magnifierw.png"
tema.layout_max = themes_path .. "default/layouts/maxw.png"
tema.layout_fullscreen = themes_path .. "default/layouts/fullscreenw.png"
tema.layout_tilebottom = themes_path .. "default/layouts/tilebottomw.png"
tema.layout_tileleft = themes_path .. "default/layouts/tileleftw.png"
tema.layout_tile = themes_path .. "default/layouts/tilew.png"
tema.layout_tiletop = themes_path .. "default/layouts/tiletopw.png"
tema.layout_spiral = themes_path .. "default/layouts/spiralw.png"
tema.layout_dwindle = themes_path .. "default/layouts/dwindlew.png"
tema.layout_cornernw = themes_path .. "default/layouts/cornernww.png"
tema.layout_cornerne = themes_path .. "default/layouts/cornernew.png"
tema.layout_cornersw = themes_path .. "default/layouts/cornersww.png"
tema.layout_cornerse = themes_path .. "default/layouts/cornersew.png"

-- Generate Awesome icon:
tema.awesome_icon = theme_assets.awesome_icon(tema.menu_height, tema.bg_focus, tema.fg_focus)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
tema.icon_theme = nil

return tema

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
