
#include "greeter.h"

void greeter::helloWorld(void) {
    cout << "Hello, world! From greeter.\n";
}

void greeter::hello(const char* name) {

    cout << "Hello, " << name << "! From greeter.\n";

}