#include "transform.h"

Transform::Transform(QWidget* parent):
    Tool(QIcon(":/tools/select.svg"),"Transform Tool (V)",
         QCursor(QIcon(":/tools/select.svg").pixmap(QSize(15,15)),0,0),
         Tool::SELECTION,parent)
{
    setShortcut(Qt::Key_V);
    _mouseButton = -1;
}

Transform::~Transform()
{

}


void Transform::press(QMouseEvent *event)
{
    _prevMousex = event->x();
    _prevMousey = event->y();

    _mouseButton = Qt::LeftButton;
    _firstMove = true;
}

void Transform::release(QMouseEvent *event)
{
    _firstMove = false;
}

void Transform::move(QMouseEvent *event)
{
    _curMousex = event->x();
    _curMousey = event->y();

    switch(_mouseButton){

    case Qt::LeftButton: {
        QList<Layer*>::iterator itr = _layers->begin();

        int diffx = _curMousex - _prevMousex;
        int diffy = _curMousey - _prevMousey;

        if(!_firstMove){
            for(;itr!= _layers->end();++itr){

                Layer* temp = *itr;
                int x = temp->getX() + diffx;
                int y = temp->getY() + diffy;
                temp->setPos(x,y);
            }
        }
        else{
            //Check if the mouse is over any of the selected layers
            //if not then don't do anything.
        }

        _firstMove = false;
        _prevMousex = _curMousex;
        _prevMousey = _curMousey;
        break;
    }

    }
}
