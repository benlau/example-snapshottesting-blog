import QtQuick 2.0

MouseArea {

    Text {
        id: text
        text: qsTr("Ready?")
        font.pixelSize: 28
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    onClicked: {
        text.text = "Go!"
    }

}
