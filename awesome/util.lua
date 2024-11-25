local gears = require("gears")

local M = {}

local function esquinas_redondeadas(c)
  c.shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, 20)
  end
end

local function esquinas_rectas(c)
  c.shape = gears.shape.rectangle
end

local aplicaciones_sin_redondear = { "Eww" }

M.existe_en_arreglo = function(objetivo, arreglo)
  for _, valor in ipairs(arreglo) do
    if valor == objetivo then
      return true
    end
  end

  return false
end

M.establecer_bordes = function(c)
  if not c.fullscreen and not c.maximized and not M.existe_en_arreglo(c.class, aplicaciones_sin_redondear) then
    esquinas_redondeadas(c)
  else
    esquinas_rectas(c)
  end
end

M.aplicaciones_sin_marco = {
  "firefox-beta",
  "firefox",
  "firefox-aurora",
  "discord",
  "Chromium",
  "steam",
}

return M
