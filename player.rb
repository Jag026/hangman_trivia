class Player
    attr_reader :name, :player_display_arr

    def initialize(name)
        @name = name
        @player_display_arr = []
    end

    def set_player_display_arr
        @new_hangman = "   0  \n --|--\n  1^1  "
        @one_miss_hangman = "   0  \n --|--\n  1^  "
        @two_miss_hangman = "   0  \n --|--\n   ^  "
        @three_miss_hangman = "   0  \n --|\n   ^  "
        @four_miss_hangman = "   0  \n   |\n   ^  "

        @player_display_arr = [@four_miss_hangman, @three_miss_hangman, @two_miss_hangman, @one_miss_hangman, @new_hangman]
    end

end