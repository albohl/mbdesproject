function dir = setDirection(currentFloor, pressed, direction)
   if direction = 0
       if currentFloor == 1 && (pressed(2) || pressed(3) || pressed(4))
           dir = 1
       elseif currentFloor == 2 && (pressed(3) || pressed(4))
           dir = 1
       elseif currentFloor == 3 && pressed(4)
           dir = 1
       elseif currentFloor == 4 && (pressed(1) || pressed(2) || pressed(3))
           dir = -1
       elseif currentFloor == 3 && (pressed(1) || pressed(2))
           dir = -1
       elseif currentFloor == 2 && pressed(1)
           dir = -1
       end
   end
   if ~pressed(1) && ~pressed(2) && ~pressed(3) && ~pressed(4)
           dir = 0
   end
end
    