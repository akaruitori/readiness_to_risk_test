require_relative 'user_io'

class Test
  def initialize(description, questions, answers, results)
    # description: строка с описанием теста
    # questions, results, answers: массивы вопросов теста и ответов на вопросы.
    # score: переменная для подсчета результатов теста.
    # @user_io: экземляр класса UserIO, с помощью которого тест будет
    # взаимодействовать с юзером.
    @description = description
    @questions = questions
    @answers = answers
    @results = results
    @score = 0
    @user_io = UserIO.new
  end

  def show_description
    @user_io.print(@description)
  end

  def test_user
    # Отправляет на вывод вопрос, получает ответ, обновляет общий балл
    @questions.each do |question|
      points = @user_io.ask(question, @answers)
      @score += points
    end
  end

  def show_result
    # Определяет результат теста по итоговому баллу,
    # передает его на вывод.
    result =
      case @score
      when 0..20 then @results[0]
      when 21..70 then @results[1]
      else
        @results[2]
      end
    @user_io.print(result)
  end
end
