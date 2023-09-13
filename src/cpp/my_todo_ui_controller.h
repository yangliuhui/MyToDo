#ifndef MY_TODO_UI_CONTROLLER_H
#define MY_TODO_UI_CONTROLLER_H

#include <QObject>

class MyTodoUiController : public QObject
{
    Q_OBJECT
public:
    explicit MyTodoUiController(QObject *parent = nullptr);

    Q_INVOKABLE void close();

signals:

};

#endif // MY_TODO_UI_CONTROLLER_H
