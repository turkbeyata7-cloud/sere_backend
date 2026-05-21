#include "crow.h"

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

    app.port(8080).multithreaded().run();
}