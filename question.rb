
require "json"
file = File.open "./trivia-questions.json"
data = JSON.load file
# puts data['results'][rand(30)]["question"]

def set_question(data)
    question_pack = data['results'][rand(50)]
    question = question_pack["question"]
    correct_answer = question_pack["correct_answer"]
    answer_choices_arr = question_pack["incorrect_answers"]
    answer_choices_arr << correct_answer
    answer_choices_arr = answer_choices_arr.shuffle
    correct_answer_idx = answer_choices_arr.index(correct_answer) + 1
    puts
    puts question
    puts
    arrange_questions(answer_choices_arr)
    puts
    puts "correct answer: " + correct_answer
    guess_q(answer_choices_arr, correct_answer_idx)
end

def arrange_questions(arr)
    puts "Select Your Answer(1-4):"
    puts "1: #{arr[0]}"
    puts "2: #{arr[1]}"
    puts "3: #{arr[2]}"
    puts "4: #{arr[3]}"
end

def guess_q(arr, correct_answer_idx)
    answer = gets.chomp.to_s
    if !["1", "2", "3", "4"].include?(answer)
        puts "Incorrect input, try again"
        guess_q(arr, correct_answer_idx)
    end

    if answer == correct_answer_idx.to_s
        return true
    else
        return false
    end
end


p set_question(data)