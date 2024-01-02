#include "greeter/greeter.h"

using namespace greeter;

int main(int argc, char** argv) {

    if (argc > 1) {
        hello(argv[1]);
    }
    else {
        helloWorld();
    }

    return 0;
}