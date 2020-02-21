class Author

    @@posts = []
    attr_accessor :name, :post

    def initialize(name)
        @name = name
    end

    def posts
       Post.all
    end

    def add_post(post)
       post.author = self 
       self.post = post
       @@posts << post
       
    end

    def add_post_by_title(post_name)
        new_post = Post.new(post_name)
        new_post.author = self
        self.post = new_post
        @@posts << new_post
        
        
    end

    def self.post_count
        Post.all.length
        
    end
    
    
end
