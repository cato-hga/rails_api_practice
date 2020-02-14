photo1 = Photo.create(title: "Vacation Photo", photo_url_string: "https://images.dog.ceo/breeds/dingo/n02115641_14117.jpg")

comment1 = Comment.create(content: "This photo is dope", owner: "Person 1", photo_id: photo1.id)
comment2 = Comment.create(content: "This photo", owner: "Person 2", photo_id: photo1.id)
comment3 = Comment.create(content: "This", owner: "Person 3", photo_id: photo1.id)
comment4 = Comment.create(content: "This dope", owner: "Person 4", photo_id: photo1.id)