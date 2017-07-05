require_relative 'test'

file_path = File.dirname(__FILE__) + '/data/'

description = File.new(file_path + 'description.txt').read
questions = File.new(file_path + 'questions.txt').readlines
answers = File.new(file_path + 'answers.txt').readlines
results = File.new(file_path + 'results.txt').readlines

# Новый экземпляр теста
test = Test.new(description, questions, answers, results)

# Запуск
puts test.show_description
sleep(7)
puts 'Начинаем тест!'
puts
sleep(1.5)
test.test_user

# Выводит результаты
puts "\nВы ответили на все вопросы. Результат теста:"
test.show_result
