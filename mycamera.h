#ifndef MYCAMERA_H
#define MYCAMERA_H

#include <QObject>
#include <QDebug>
#include <QCamera>
#include <QMediaDevices>

class MyCamera : public QObject
{
    Q_OBJECT
public:
    explicit MyCamera(QObject *parent = nullptr);

signals:

};

#endif // MYCAMERA_H
