#include <stdlib.h>

#include "server.h"

#define DEFAULT_PORT 8080

int main() {
    const char *port_env = getenv("SERVER_PORT");
    int port = port_env ? atoi(port_env) : DEFAULT_PORT;

    start_server(port);

    return 0;
}