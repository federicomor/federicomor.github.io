# This file was generated, do not modify it. # hide
# n bowls, m balls
function simulate_F(n::Int, m::Int; num_trials::Int=10000, verbose=false)
    total_moves = 0
	if verbose num_trials = 1 end

    for _ in 1:num_trials
        # random initial distribution of balls
        balls = rand(1:n, m) # array of size m, each element in 1:n
        # so that each ball i is assigned to the bowl given by balls[i]
        moves = 0

        while length(unique(balls)) > 1 # stop when all balls are in the same bowl
        # and they will be in the same bowl when all the indexes of balls vector will be equal
            ball_idx = rand(1:m) # pick a ball at random
            direction = rand([-1, 1]) # pick a direction (-1 for counterclockwise, 1 for clockwise)
			if verbose println("Balls are in bowls: $balls (selected ball: $ball_idx, will move by: $direction)") end
            balls[ball_idx] = mod1(balls[ball_idx] + direction, n) # move the ball
            # this changes the bowl attribution of ball ball_idx, using mod1 as for the circular structure
            moves += 1
        end
		total_moves += moves
		if verbose
			println("Balls are in bowls: $balls")
			println("Total moves: $total_moves")
		end
    end
    return total_moves / num_trials  # estimate of F(n, m)
end