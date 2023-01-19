-- balle controllé par les flèches directionelles

ball_sprite = 1
ball_position_x = 60
ball_position_y = 60
ball_speed = 1

function ball_draw()
    spr(ball_sprite, ball_position_x, ball_position_y);
end

function ball_update_position()
    if btn(0) then -- flèche gauche
        ball_position_x -= ball_speed
    end

    if btn(1) then-- flèche droite
        ball_position_x += ball_speed
    end

    if btn(2) then -- flèche haut
        ball_position_y -= ball_speed
    end

    if btn(3) then -- flèche bas
        ball_position_y += ball_speed
    end
end