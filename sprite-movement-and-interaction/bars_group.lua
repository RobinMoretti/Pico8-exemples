bars_group_sprites = {16, 18, 17} -- réferences aux sprites de l'éditeur
bars_group_position_x = 117
bars_group_position_y = 64
bars_group_speed = 4
bars_group_vertical_direction = 1

function bars_group_draw()
    bars_group_height = #bars_group_sprites * 8

    bars_group_sprites_starting_position_y = bars_group_position_y - bars_group_height/2

    for index=0, #bars_group_sprites-1 do
        sprite_position = bars_group_sprites_starting_position_y + index * 8
        spr(bars_group_sprites[index + 1], bars_group_position_x, sprite_position);
    end
end

function bars_group_update_position()
    bars_group_position_y += bars_group_speed * bars_group_vertical_direction

    if bars_group_position_y + bars_group_height/2 >= 128 or bars_group_position_y - bars_group_height/2 <= 0 then
        bars_group_vertical_direction = bars_group_vertical_direction * -1
    end
end