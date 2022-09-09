#ifndef SINGLE_GAUGE_H
#define SINGLE_GAUGE_H
#include <CoreWidget/IExternalWidget.h>
#include<CoreWidget/Widget.h>
#include <QString>

class single_gauge : public IExternalWidget
{
    Q_OBJECT
public:
    single_gauge() = delete;
    explicit single_gauge(core_widget::Widget* parent);
    ~single_gauge() override = default;
    void setProperty(const QString& key, int value) override;
signals:
    void sendToQml(double fill );
    void blueImg(double bluefill);


public slots:

private:
    double counter{30};
};
#endif
