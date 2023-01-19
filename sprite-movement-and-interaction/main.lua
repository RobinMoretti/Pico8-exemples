function _init()
    cls(4);
end

function _update()
    cls(4); -- commenter pour voire la trace
    ball_update_position()
    ball_draw()
    
    bar_update_position()
    bar_draw()

    bars_group_draw()
    bars_group_update_position()
end

