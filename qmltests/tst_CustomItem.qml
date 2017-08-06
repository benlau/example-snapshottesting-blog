import QtQuick 2.0
import QtTest 1.0
import SnapshotTesting 1.0

Item {
    id: root
    width: 640
    height: 480

    CustomItem {
        // Don't place this under TestCase object.
        id: customItem
        width: 320
        height: 240
        anchors.centerIn: parent
    }

    TestCase {
        name: "CustomItem"
        when: windowShown

        function test_CustomItem() {
            var snapshot = SnapshotTesting.capture(customItem);
            snapshot = snapshot.replace(Qt.resolvedUrl(".."), "");
            SnapshotTesting.matchStoredSnapshot("test_CustomItem_default", snapshot);

            mouseClick(customItem)

            snapshot = SnapshotTesting.capture(customItem);
            snapshot = snapshot.replace(Qt.resolvedUrl(".."), "");
            SnapshotTesting.matchStoredSnapshot("test_CustomItem_clicked", snapshot);
        }
    }

}
