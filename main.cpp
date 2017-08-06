#include <QtQuickTest/quicktest.h>
#include <snapshottesting.h>

int main(int argc, char **argv)
{
    SnapshotTesting::setSnapshotsFile(QString(QMLDIR) + "/snapshots.json");
    return quick_test_main(argc, argv, "Example", QMLDIR);
}
