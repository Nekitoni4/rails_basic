1.upto(5) do |i|
    Category.create(title: "Категория №#{i}")
    User.create(name: "Пользователь №#{i}", email: "test#{i}@yandex.ru", 
    password: "#{i}23456")
    Test.create(title: "Тест №#{i}", level: i, category_id: i)
    Question.create(body: "Вопрос №#{i}", test_id: i)
    Answer.create(body: "Ответ №#{i}", correct: false, question_id: i)
end