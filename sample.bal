import ballerina/http;

type Greeting record {
    string to;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"Bienvenido/a"+name+};
        return greetingMessage;
    }
}
