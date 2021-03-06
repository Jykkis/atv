/*
 * Interface wrapper code.
 *
 * Generated by SIP 4.15.5 on Thu Apr 19 11:39:10 2018
 */

#include "sipAPIlibrviz_sip.h"

#line 7 "yaml_config_reader.sip"
#define ROS_PACKAGE_NAME "rviz"
#include <rviz/yaml_config_reader.h>
#line 13 "/home/atv/atv-project-2017/catkin_ws/devel/bin/sip/rviz_sip/siplibrviz_siprvizYamlConfigReader.cpp"

#line 36 "/usr/share/sip/PyQt4/QtCore/qstring.sip"
#include <qstring.h>
#line 17 "/home/atv/atv-project-2017/catkin_ws/devel/bin/sip/rviz_sip/siplibrviz_siprvizYamlConfigReader.cpp"
#line 7 "config.sip"
#define ROS_PACKAGE_NAME "rviz"
#include <rviz/config.h>
#line 21 "/home/atv/atv-project-2017/catkin_ws/devel/bin/sip/rviz_sip/siplibrviz_siprvizYamlConfigReader.cpp"


extern "C" {static PyObject *meth_rviz_YamlConfigReader_readFile(PyObject *, PyObject *);}
static PyObject *meth_rviz_YamlConfigReader_readFile(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        rviz::Config * a0;
        const QString * a1;
        int a1State = 0;
        rviz::YamlConfigReader *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "BJ9J1", &sipSelf, sipType_rviz_YamlConfigReader, &sipCpp, sipType_rviz_Config, &a0, sipType_QString,&a1, &a1State))
        {
            Py_BEGIN_ALLOW_THREADS
            sipCpp->readFile(*a0,*a1);
            Py_END_ALLOW_THREADS
            sipReleaseType(const_cast<QString *>(a1),sipType_QString,a1State);

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_YamlConfigReader, sipName_readFile, NULL);

    return NULL;
}


extern "C" {static PyObject *meth_rviz_YamlConfigReader_readString(PyObject *, PyObject *);}
static PyObject *meth_rviz_YamlConfigReader_readString(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        rviz::Config * a0;
        const QString * a1;
        int a1State = 0;
        const QString& a2def = "data string";
        const QString * a2 = &a2def;
        int a2State = 0;
        rviz::YamlConfigReader *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "BJ9J1|J1", &sipSelf, sipType_rviz_YamlConfigReader, &sipCpp, sipType_rviz_Config, &a0, sipType_QString,&a1, &a1State, sipType_QString,&a2, &a2State))
        {
            Py_BEGIN_ALLOW_THREADS
            sipCpp->readString(*a0,*a1,*a2);
            Py_END_ALLOW_THREADS
            sipReleaseType(const_cast<QString *>(a1),sipType_QString,a1State);
            sipReleaseType(const_cast<QString *>(a2),sipType_QString,a2State);

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_YamlConfigReader, sipName_readString, NULL);

    return NULL;
}


extern "C" {static PyObject *meth_rviz_YamlConfigReader_error(PyObject *, PyObject *);}
static PyObject *meth_rviz_YamlConfigReader_error(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        rviz::YamlConfigReader *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_rviz_YamlConfigReader, &sipCpp))
        {
            bool sipRes;

            Py_BEGIN_ALLOW_THREADS
            sipRes = sipCpp->error();
            Py_END_ALLOW_THREADS

            return PyBool_FromLong(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_YamlConfigReader, sipName_error, NULL);

    return NULL;
}


extern "C" {static PyObject *meth_rviz_YamlConfigReader_errorMessage(PyObject *, PyObject *);}
static PyObject *meth_rviz_YamlConfigReader_errorMessage(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        rviz::YamlConfigReader *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_rviz_YamlConfigReader, &sipCpp))
        {
            QString *sipRes;

            Py_BEGIN_ALLOW_THREADS
            sipRes = new QString(sipCpp->errorMessage());
            Py_END_ALLOW_THREADS

            return sipConvertFromNewType(sipRes,sipType_QString,NULL);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_YamlConfigReader, sipName_errorMessage, NULL);

    return NULL;
}


/* Cast a pointer to a type somewhere in its superclass hierarchy. */
extern "C" {static void *cast_rviz_YamlConfigReader(void *, const sipTypeDef *);}
static void *cast_rviz_YamlConfigReader(void *ptr, const sipTypeDef *targetType)
{
    if (targetType == sipType_rviz_YamlConfigReader)
        return ptr;

    return NULL;
}


/* Call the instance's destructor. */
extern "C" {static void release_rviz_YamlConfigReader(void *, int);}
static void release_rviz_YamlConfigReader(void *sipCppV,int)
{
    Py_BEGIN_ALLOW_THREADS

    delete reinterpret_cast<rviz::YamlConfigReader *>(sipCppV);

    Py_END_ALLOW_THREADS
}


extern "C" {static void dealloc_rviz_YamlConfigReader(sipSimpleWrapper *);}
static void dealloc_rviz_YamlConfigReader(sipSimpleWrapper *sipSelf)
{
    if (sipIsPyOwned(sipSelf))
    {
        release_rviz_YamlConfigReader(sipGetAddress(sipSelf),0);
    }
}


extern "C" {static void *init_type_rviz_YamlConfigReader(sipSimpleWrapper *, PyObject *, PyObject *, PyObject **, PyObject **, PyObject **);}
static void *init_type_rviz_YamlConfigReader(sipSimpleWrapper *, PyObject *sipArgs, PyObject *sipKwds, PyObject **sipUnused, PyObject **, PyObject **sipParseErr)
{
    rviz::YamlConfigReader *sipCpp = 0;

    {
        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, NULL, sipUnused, ""))
        {
            Py_BEGIN_ALLOW_THREADS
            sipCpp = new rviz::YamlConfigReader();
            Py_END_ALLOW_THREADS

            return sipCpp;
        }
    }

    return NULL;
}


static PyMethodDef methods_rviz_YamlConfigReader[] = {
    {SIP_MLNAME_CAST(sipName_error), meth_rviz_YamlConfigReader_error, METH_VARARGS, NULL},
    {SIP_MLNAME_CAST(sipName_errorMessage), meth_rviz_YamlConfigReader_errorMessage, METH_VARARGS, NULL},
    {SIP_MLNAME_CAST(sipName_readFile), meth_rviz_YamlConfigReader_readFile, METH_VARARGS, NULL},
    {SIP_MLNAME_CAST(sipName_readString), meth_rviz_YamlConfigReader_readString, METH_VARARGS, NULL}
};


pyqt4ClassTypeDef sipTypeDef_librviz_sip_rviz_YamlConfigReader = {
{
    {
        -1,
        0,
        0,
        SIP_TYPE_CLASS,
        sipNameNr_rviz__YamlConfigReader,
        {0}
    },
    {
        sipNameNr_YamlConfigReader,
        {0, 255, 0},
        4, methods_rviz_YamlConfigReader,
        0, 0,
        0, 0,
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    },
    0,
    sipNameNr_PyQt4_QtCore_pyqtWrapperType,
    sipNameNr_sip_simplewrapper,
    0,
    0,
    init_type_rviz_YamlConfigReader,
    0,
    0,
#if PY_MAJOR_VERSION >= 3
    0,
    0,
#else
    0,
    0,
    0,
    0,
#endif
    dealloc_rviz_YamlConfigReader,
    0,
    0,
    0,
    release_rviz_YamlConfigReader,
    cast_rviz_YamlConfigReader,
    0,
    0,
    0,
    0,
    0,
    0
},
    0,
    0,
    0
};
