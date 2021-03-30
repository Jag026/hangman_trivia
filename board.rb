require_relative 'player.rb'
require_relative 'question.rb'
require "json"
file = File.open "./trivia-questions.json"
$data = JSON.load file


class Board
    attr_accessor :player

    def initialize
        @moves_remaining = 5
        @questions_remaining = 5
    end

    def intro
        system("clear")
        puts "Welcome To...."
        sleep(2)
        system("clear")
        puts "Hangman Trivia"
        sleep(2)
        system("clear")
        puts "Enter your name"
        player_name = set_player_1
        system("clear")
        puts "Welcome " + player_name
        sleep(2)
        system("clear") 
        @player = Player.new(player_name)
        @player.set_player_display_arr
      while @moves_remaining > 0 && @questions_remaining > 0
        guess = set_question($data)
        if guess == false
            system "clear"
            @moves_remaining -= 1
            render_display
            puts "Incorrect Answer"
        else
            system "clear"
            @questions_remaining -= 1
            render_display
            puts "Correct Answer"
        end
     end
     game_over
    end

    def game_over
        sleep(1)
        system("clear")
        puts "Game Over"
    end

    def render_display
        puts "Misses Remaining: " + @moves_remaining.to_s + " | Questions Remaining: " + @questions_remaining.to_s
        puts @player.player_display_arr[@moves_remaining - 1]

    end

    def set_player_1
        player_name = gets.chomp.to_s
        return player_name
    end

    def play
        self.intro
        render_display
    end

end

new_game = Board.new
new_game.play


