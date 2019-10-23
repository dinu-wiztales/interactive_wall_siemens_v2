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
//    property var _suite
    property var _extraContentVisible

    //    property var name

    Column {
        anchors.centerIn: parent
        Rectangle {
            height: root.height/3
            width: root.width
            color: "transparent"
            border.color: "black"
//            border.color: "black"

            Rectangle {
                width: parent.width
                height: (parent.height/3)*2
                Rectangle {
                    anchors.left: parent.left
                    anchors.top: parent.top
                    width: parent.width/2
                    height: parent.height
                    color: "red"
                    Rectangle {
                        anchors.left: parent.left
//                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width/3
                        height: parent.height
                    }
                }
            }




        }
        Rectangle {
            height: root.height/3
            width: root.width
            color: 'transparent'
        }
//        Rectangle {
//            height: root.height/4
//            width: root.width
//            color: "yellow"
//        }
    }


    color: "transparent"
    width: _width
    height: width
//    radius: parent.width



}
