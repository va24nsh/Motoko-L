actor {
    var height : Float = 0.0; 
    var is_awake : Bool = true;
    var age : Nat = 0;
    var fav_show : ?Text = null;
    let species : Text = "Human";

    // only for reading -- query
    public query func get_height() : async Float {
        return height;
    };

    // normal for updating or other tasks
    public func set_height(new_height : Float) : async () {
        height := new_height;
    };

    // Let's see what is returned on querying null -- returns (null) or (opt "<string>") indicating the optional field value 
    public query func get_fav_show() : async ?Text {
        return fav_show;
    };

    public func set_fav_show(new_show : ?Text) : async () {
        fav_show := new_show;
    };

    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
};
