/****************************************************************************
** Meta object code from reading C++ file 'splitter_handle.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/rviz-indigo-devel/src/rviz/properties/splitter_handle.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'splitter_handle.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_rviz__SplitterHandle[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

static const char qt_meta_stringdata_rviz__SplitterHandle[] = {
    "rviz::SplitterHandle\0"
};

void rviz::SplitterHandle::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObjectExtraData rviz::SplitterHandle::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject rviz::SplitterHandle::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_rviz__SplitterHandle,
      qt_meta_data_rviz__SplitterHandle, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &rviz::SplitterHandle::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *rviz::SplitterHandle::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *rviz::SplitterHandle::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_rviz__SplitterHandle))
        return static_cast<void*>(const_cast< SplitterHandle*>(this));
    return QWidget::qt_metacast(_clname);
}

int rviz::SplitterHandle::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    return _id;
}
QT_END_MOC_NAMESPACE