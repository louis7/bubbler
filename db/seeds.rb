 sis = User.create(name:'naica')
 sis_post = sis.posts.create(comment:'My first post')
 sis_convos = sis_post.convo.create(convos:1)

 usercomment = sis.usercomment.create(comment:'my first comment under post')

 naica = User.create(name: "naica")
post1 = Post.create(comment: "hello world")
#post1.user = david
