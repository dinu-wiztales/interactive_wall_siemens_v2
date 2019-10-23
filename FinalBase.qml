import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0
import QtMultimedia 5.12



Rectangle {
    id: root
    property var _buttonColor
    property var _width
    property var _videoSource
    property var _sideData
    property var _animationSource
    property var _animationVisible
    property var _heading
    property var _content
    property var _extraContent
    property var _suite
    property var _extraContentVisible

    //    property var name

    Column {
        anchors.centerIn: parent
        Rectangle {
            height: root.height/4
            width: root.width
            border.color: "black"
        }
        Rectangle {

        }
    }


    color: "red"
    width: _width
    height: width
    radius: parent.width



}
