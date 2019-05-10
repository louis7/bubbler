 sis = User.create(name:'lord')
 sis_post = sis.posts.create(comment:'lord first post')
 sis_convos = sis_post.convo.create(convos:1)

 sis_comment = sis_convos.usercomments.create(comment:"lord second comments")
 sis_comment.user_id = sis.id
 sis_comment.post_id = sis_post.id
