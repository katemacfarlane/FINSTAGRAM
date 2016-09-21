users = [
    { username: "katemacfarlane", avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/7/005/098/074/078049c.jpg" },
    { username: "profferguson", avatar_url: "http://bridgeable.com/wp-content/uploads/Ferguson-Chris-700x470.jpg" },
    { username: "profleung", avatar_url: "https://www.rotman.utoronto.ca/-/media/Images/Programs-and-Areas/ExecutiveProgram/EP_Faculty/Mark-Leung.JPG?h=100&la=en&w=100&hash=44FABFE357849DC1978F9BB950E0E9306C9B6D86" }
]

users.each do |user|
  User.create(user)
end

posts = [
    { photo_url: "https://pbs.twimg.com/media/CfoKws4WEAI28Ff.jpg:large", user_id: User.find_by({username: 'katemacfarlane'}).id},
    { photo_url: "http://bridgeable.com/wp-content/uploads/IMG_5125-crop-1600x540.jpg", user_id: User.find_by({username: 'profferguson'}).id },
    { photo_url: "http://kr.designmarketinglab.com/wp-content/uploads/sites/2/2013/01/rotman-designworks.jpg", user_id: User.find_by({username: 'profleung'}).id }
]

posts.each do |post|
  Post.create(post)
end
