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

    def render_display
        puts "Moves Remaining: " + @moves_remaining.to_s
    end

    def play
        self.intro
    end

end
#
#new_game = Board.new
#new_game.play

