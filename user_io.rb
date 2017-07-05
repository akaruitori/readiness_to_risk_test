# Класс, отвечающий за взаимодействие с юзером.
class UserIO
  def ask(question, answers)
    # Получает вопрос и варианты ответа, печатает вопрос, получает ответ.
    # Возвращает балл за вопрос.
    puts question
    get_answer(answers)
  end

  def get_answer(answers)
    # Печатает варианты ответа, проверяет корректность ввода юзера.
    # Возвращает ответ юзера (целое число).
    input = nil
    # Диапазон корректных ответов юзера: от 0 до длины массива с ответами (не
    # включая)
    answers_range = 0...answers.length

    # Пользуясь тем, что индекс каждого варианта ответа в массиве answers
    # совпадает с баллом за этот ответ, выводим варианты ответа
    # через .each_with_index.
    # Цикл повторяется, пока юзер не введет корректный вариант
    until answers_range.cover?(input)
      puts 'Ответьте, пожалуйста, нажав одну из клавиш:'
      answers.each_with_index do |answer, i|
        puts "#{i} - #{answer}"
      end
      input = STDIN.gets.to_i
      puts
    end
    input
  end

  def print(string)
    # Принимает строку и выводит ее в консоль
    puts string
  end
end
