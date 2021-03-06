#include "layermanager.h"

LayerManager::LayerManager(QWidget *parent) :
    QListWidget(parent)
{
    QFile styleFile(":/styles/layermanager.qss");
    styleFile.open(QFile::ReadOnly);

    QString style(styleFile.readAll() );
    setStyleSheet(style);
    installEventFilter(this);
    setSelectionMode(QAbstractItemView::ExtendedSelection);
}

LayerManager::~LayerManager()
{ }

bool LayerManager::eventFilter(QObject *obj, QEvent *event)
{
    if (event->type() == QEvent::ChildRemoved) {
        int n = count();

        for (int i = 0; i < n; i++) {
            QListWidgetItem *w = item(i);
            Layer *l = dynamic_cast<Layer *>(w);
            l->setZvalue(n - i);
        }
        return true;
    }

    return QListWidget::eventFilter(obj, event);
}

void LayerManager::updateItems(QList<Layer *> items)
{
    int max = count();
    for (int i = max - 1; i >= 0; i--) {
        takeItem(i);
    }

    _curItems = items;
    QList<Layer *>::reverse_iterator itr = _curItems.rbegin();
    for (int i = 0; itr != _curItems.rend(); ++itr, i++) {
        insertItem(i, *itr);
    }
}

QList<QListWidgetItem *> LayerManager::getitems()
{
    QList<QListWidgetItem *> l;

    int n = count();

    for (int i = 0; i < n; i++) {
        l.push_back(item(i));
    }

    return l;
}
