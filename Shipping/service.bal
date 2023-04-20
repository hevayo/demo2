import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Shipping",
    id: "Shipping-1a23d5bb-2032-4e23-a18a-90a7e3134429"
}
service / on new http:Listener(9090) {

    @display {
        label: "Tracking",
        id: "Tracking-84e45dda-ce5b-4452-9730-d7746798137c"
    }
    http:Client trackingClient;

    function init() returns error? {
        self.trackingClient = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get orders(string filter) returns error?|Orders[] {
        int x = 8;
        return [];
    }

    resource function post orders(@http:Payload PostOrder payload) returns error?|Orders {

    }
}

type PostOrder record {
};

type Orders record {
};
