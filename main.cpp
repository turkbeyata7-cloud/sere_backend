#include "crow.h"
#include <cstdlib>

int main()
{
    crow::SimpleApp app;

    CROW_ROUTE(app, "/")
    ([](){
        return "Sera backend calisiyor";
    });

    CROW_ROUTE(app, "/data").methods("POST"_method)
    ([](const crow::request& req){
        return "Veri geldi: " + req.body;
    });

    int port = std::getenv("PORT") ? std::stoi(std::getenv("PORT")) : 8080;

    app.port(port).bindaddr("0.0.0.0").run();
}