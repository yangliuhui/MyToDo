#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "my_todo_ui_controller.h"
#include "macos.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<MyTodoUiController>("MyToDoUiController", 1, 0, "MyToDoUiController");
    const QUrl url(u"qrc:/MyToDo/src/qml/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    MacOS::removeTitlebarFromWindow();

    return app.exec();
}
