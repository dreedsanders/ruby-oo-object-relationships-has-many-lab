class Author

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post_object| post_object.author == self}
    end
    
    def add_post(post)
        post.author=self 
    end

    def add_post_by_title(post_title)
        p2 = Post.new(post_title)
        p2.author=self 
    end

    def self.post_count
        Post.all.count 
    end





end
