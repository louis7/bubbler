 sis = User.create(name:'naica')
 sis_post = sis.posts.create(comment:'My first post')
 sis_convos = sis_post.convo.create(convos:1)

 sis_comment = sis_convo.usercomments.create(comment:"my second comments")
 sis_comment.user_id = sis.id
 sis_comment.post_id = sis_post.id
 
