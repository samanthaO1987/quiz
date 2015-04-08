q1 = Question.create!(content: "Wat is je favoriete versioning tool?", position: 1)
q2 = Question.create!(content: "Wat is je favoriete cat?", position: 2)
q3 = Question.create!(content: "Wat is je favoriete edelsteen?", position: 3)

q1.answers.create!(content:"SVN", weighted_value: 0, position: 1)
q1.answers.create!(content: "GIT", weighted_value: 10, position: 2)
q1.answers.create!(content: "CVS", weighted_value: -5, position: 3)
q1.answers.create!(content: "Mercurial", weighted_value: 5, position: 4)
q1.answers.create!(content: "HUHH?", weighted_value: 0, position: 5)

q2.answers.create!(content: "Ceiling cat", weighted_value: 10, position: 1)
q2.answers.create!(content: "Invisible bike cat", weighted_value: 5, position: 2)
q2.answers.create!(content: "Octocat", weighted_value: 12, position: 3)
q2.answers.create!(content: "Monorail cat", weighted_value: 2, position: 4)

q3.answers.create!(content: "Diamant", weighted_value: 5,  position: 1)
q3.answers.create!(content: "Robijn", weighted_value: 10, position: 2)
q3.answers.create!(content: "Kryptonite", weighted_value: 10, position: 3)
q3.answers.create!(content: "Smaragd", weighted_value: -5,  position: 4)
