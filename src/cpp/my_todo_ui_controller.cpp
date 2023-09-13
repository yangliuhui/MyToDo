#include "my_todo_ui_controller.h"

MyTodoUiController::MyTodoUiController(QObject *parent)
    : QObject{parent}
{

}

void MyTodoUiController::close()
{
    qDebug("MyTodoUiController::close");
}
