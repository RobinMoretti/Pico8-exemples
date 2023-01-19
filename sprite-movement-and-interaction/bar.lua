bar_sprite = 0
bar_position_x = 5
bar_position_y = 60
bar_speed = 2
bar_vertical_direction = 1 -- si positif, vers le bas, si négatif, vers le haut

function bar_draw()
    spr(bar_sprite, bar_position_x, bar_position_y);
end

function bar_update_position()
    bar_position_y += bar_speed * bar_vertical_direction

    -- si la position du sprite (plus sa taille) est supèrieur ou égale à 128px 
    -- ou si la position du sprite est infèrieur ou égale à 0
    if bar_position_y + 8 >= 128 or bar_position_y <= 0 then
        -- inverse la direction de la bar
        bar_vertical_direction = bar_vertical_direction * -1
    end
end