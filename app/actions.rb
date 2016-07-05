def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes/60} hours ago"
    else 
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do
    @post_kate = {
        username: "katemacfarlane",
        avatar_url:"https://pbs.twimg.com/profile_images/689895732497813504/3MPlb0V7_400x400.jpg",
        photo_url:"https://pbs.twimg.com/media/CfoKws4WEAI28Ff.jpg:large",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "katemacfarlane",
            text: "cult"
            }]
        }
        
    @post_allee = {
        username: "alleethompson",
        avatar_url:"https://pbs.twimg.com/profile_images/489918105238269953/rc8Yhb5V.jpeg",
        photo_url:"https://pbs.twimg.com/media/B-BAFadCAAEQW48.jpg",
        humanized_time_ago: humanized_time_ago(60),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "alleethompson",
            text: "stay warm"
            }]
        }
        
    @post_georgia = {
        username: "georgiagracevogeli",
        avatar_url:"https://pbs.twimg.com/profile_images/743646889426329601/e-Fpphll_400x400.jpg",
        photo_url:"https://pbs.twimg.com/media/CR72DmEWIAAmUO1.jpg",
        humanized_time_ago: humanized_time_ago(120),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "georgiagracevogeli",
            text: "vln 4 life"
            }]
        }
 
    @posts = [@post_kate, @post_allee, @post_georgia]
    
    erb (:index)
end
