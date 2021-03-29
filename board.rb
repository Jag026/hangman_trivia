class Board

    def initialize
        @moves_remaining = 5


    end

    def intro
        system("clear")
        puts "Welcome To...."
        sleep(2)
        system("clear")
        puts "Hangman Trivia"
        sleep(3)
        system("clear")
    end

    def game_over
        sleep(1)
        system("clear")
        puts "Game Over"
    end

    def render_display
        puts "Misses Remaining: " + @moves_remaining.to_s
    end

    def play
        self.intro
        render_display
    end

end
#
new_game = Board.new
new_game.play

