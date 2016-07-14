users = [
    { username: "katemacfarlane", avatar_url: "https://pbs.twimg.com/profile_images/689895732497813504/3MPlb0V7_400x400.jpg" },
    { username: "alleethompson", avatar_url: "https://pbs.twimg.com/profile_images/489918105238269953/rc8Yhb5V.jpeg" },
    { username: "georgiagracevogeli", avatar_url: "https://pbs.twimg.com/profile_images/743646889426329601/e-Fpphll_400x400.jpg" }
]

users.each do |user|
  User.create(user)
end

posts = [
    { photo_url: "https://pbs.twimg.com/media/CfoKws4WEAI28Ff.jpg:large", user_id: User.find_by({username: 'katemacfarlane'}).id},
    { photo_url: "https://pbs.twimg.com/media/B-BAFadCAAEQW48.jpg", user_id: User.find_by({username: 'alleethompson'}).id },
    { photo_url: "https://pbs.twimg.com/media/CR72DmEWIAAmUO1.jpg", user_id: User.find_by({username: 'georgiagracevogeli'}).id }
]

posts.each do |post|
  Post.create(post)
end
