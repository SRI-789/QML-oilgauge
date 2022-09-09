#include "single_gauge.h"
#include <QQmlApplicationEngine>
#include <QtQuick>

single_gauge::single_gauge(core_widget::Widget* parent) : IExternalWidget(parent)
{
}

void single_gauge::setProperty(const QString& key, int value)
{
    if(key == "CoolantTempValue")
    {

    if(value>=0 && value<=1000)
    {
        if(value>=500)
        {
        emit blueImg(-77+(value/10)*2.4-163);
        }

        if(value<=1000)
        {
        emit sendToQml((value/10)*2.4-120);
        }

    }

    }
};

Q_DECL_EXPORT
IExternalWidget* CreateExternalWidget(core_widget::Widget* parent)
{
    single_gauge  *speed = new single_gauge(parent);

        QQuickView *view = new QQuickView();
        QWidget *container = QWidget::createWindowContainer(view, speed);
        container->setMinimumSize(2000, 810);
        container->setMaximumSize(2000, 810);
        container->setFocusPolicy(Qt::TabFocus);
        view->rootContext()->setContextProperty("widget", speed);
        view->setSource(QUrl("qrc:/main.qml"));
        container->setParent(speed);

        return speed;
}
