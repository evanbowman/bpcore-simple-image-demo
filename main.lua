
fade(1)

txtr(0, "overlay.bmp")
txtr(2, "test.bmp")


function draw_img(layer, x, y, w, h)
   local t = 0
   for yy = 0, h - 1 do
      for xx = 0, w - 1 do
         tile(layer, x + xx, y + yy, t)
         t = t + 1
      end
   end
end


-- draw the image
draw_img(2, 0, 2, 30, 14)


-- draw border
for x = 0, 29 do
   for y = 0, 19 do
      if y < 2 or y > 15 then
         tile(0, x, y, 29)
      end
   end
end



fade(0)


while true do
   clear()
   display()
end
