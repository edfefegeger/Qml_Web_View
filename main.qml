import QtWebView 1.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15


ApplicationWindow {
    width: 640
    height: 480
    visible: true
    id: root
    title: qsTr("Hello World")
    ColumnLayout {

        width: parent.width
        height: parent.width
        id: grid

        anchors.fill: parent

        Rectangle {
            Layout.alignment: Qt.AlignTop
            id: elem
            visible: true
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: 55
            border {
                width: 2
            }
                GridLayout
                {
                    width: elem.width
                    height: elem.height
                    id: grid12
                    columns: 3
                    rows: 1
                    columnSpacing: 7
                Button
                {

                    id: button_left
                    height: elem.height
                    Layout.fillWidth: true
                    Layout.fillHeight: parent
                    Layout.maximumWidth: 100
                    text: "<---"
                    onClicked:
                    {

                    }
                }
                Button
                {
                    id: button_right
                     text: "--->"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.maximumWidth: 100

                    width: 150
                    onClicked:
                    {

                    }
                }
                    Rectangle
                    {
                        visible: true
                        Layout.fillWidth: true
                        Layout.fillHeight: true


                        border {
                            width: 2
                            color: "black"

                        }
                        TextEdit {
                            anchors.centerIn:  parent
                            id: name
                            text: qsTr("text")
                        }
}
}
}

        WebView
        {
            id: web
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height
            url: "https://bugreports.qt.io/browse/QTBUG-80912"
        }
}
}
