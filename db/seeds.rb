david = User.create(name: "david")
naica = User.create(name: "naica")
post1 = Post.create(comment: "hello world")
#post1.user = david

post1.user_id = naica.id
