import ballerinax/kafka;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Tracking",
    id: "Tracking-84e45dda-ce5b-4452-9730-d7746798137c"
}
service / on new http:Listener(9090) {

    @display {
        label: "kafka",
        id: "kafka-a51fe155-b1b9-4b00-ae7a-93d752376b63"
    }
    kafka:Consumer kafkaEp;

    function init() returns error? {
        self.kafkaEp = check new (bootstrapServers = "", config = {
        });
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be etestmpty!");
        }
        return "Hello, " + name;
    }
}
