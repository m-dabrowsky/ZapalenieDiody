#include "controller.h"
#include <QDebug>

Controller::Controller(QObject *parent) : QObject(parent),
    diodaOnOff(false)
{

}

QString Controller::onOff(bool ledState)
{
    QString newColor;
    if(ledState == false) {
        qDebug() << "GPIO na RPI - stan Wysoki";
        newColor = "yellow";
    }else if (ledState == true){
        qDebug() << "GPIO na RPI - stan niski";
        newColor = "green";
    }
    return newColor;
}
