def question_generator_math
  num1 = rand(0..20)
  num2 = rand(0..20)

  operation = ["add", "sub", "mult", "div"].sample

  case operation
  when "add"
    question = "#{num1} + #{num2}"
    answer = (num1 + num2).to_s
  when "sub"
    question = "#{num1} - #{num2}"
    answer = (num1 - num2).to_s
  when "mult"
    question = "#{num1} x #{num2}"
    answer = (num1 * num2).to_s
  when "div"
    question = "#{num1 * num2} / #{num2}"
    answer = num1.to_s
  end

  puts "What is " + question + "?"
  answer
end
