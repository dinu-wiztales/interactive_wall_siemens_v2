import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0
import QtMultimedia 5.12


Window {
    visible: true
    width: 1280  // 3840
    height: 800
    title: qsTr("Interactive Wall Siemens")

    visibility:"FullScreen"

    property var speed: 20000
    property var elementWidth: 800
    property var elementHeight: 800
    property var buttonAnimationSpeed: 500
    property var _buttonCollectRotate: 30000

    property var lightBlue: "#3AA5AD"
    property var redColor: "#B81757"
    property var blueColor: "#045D86"
    property var orangeColor: "#EF8000"


    property var circleImage: "qrc:/assests/images/white.png"


    FontLoader {id: dinCondensed_Bold; source: "qrc:/assests/fonts/D-DINCondensed-Bold.otf" }
    FontLoader {id: dinAlternate_Bold; source: "qrc:/assests/fonts/DIN Alternate Bold.ttf" }

    //===================================== red bulb ========================================================//

    Rectangle {
        id:redbaseRectangle
        anchors.left: parent.left
        width: elementWidth
        height: elementHeight


        Image {

            id: redrotatingImage
            anchors.centerIn: parent
            anchors.fill: parent
            source: circleImage
            ColorOverlay {
                id:redImageOverlay
                anchors.fill: redrotatingImage
                source: rotatingImage
                color: redColor


            }

            RotationAnimation on rotation {
                id:redRotation
                loops: Animation.Infinite
                from: 360
                to: 0
                duration: speed
            }




        }


        Rectangle {
            id:redButtonCollect
            anchors.fill: parent
            color: "transparent"


            Rectangle {
                id:redButtonOne
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: redColor

                Text {
                    id: reddataOne
                    anchors.centerIn: parent
                    text: qsTr("KIOSKAPP")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }

                states: [ State {
                        name: "reanchored"
                        AnchorChanges { target: redButtonOne; anchors.top:parent.top; anchors.right: parent.right}
                        PropertyChanges {target: redButtonOne; anchors.topMargin: parent.width/7; anchors.rightMargin: parent.height/7}
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: redButtonOne; anchors.top:parent.top; anchors.right: parent.right}
                        PropertyChanges {target: redButtonOne; anchors.topMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }

                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed; }
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        redDataBase.state = "moved"
                        //                        redImage.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/kioskapp/maincontent/1.jpg"
                        content.text = "<h2><u>How good is your hearing?</u></h2>\n\n Check it out with the Kisosk App, that enables your mobile device to become an audiometry device. Powered by audiological details and test labs from Sivantos, the AU Fitting Apps team helps you to check your hearing ability and suggest a suitable hearing aid with effective configurations."
                        redsideData.text = "<h1><u>KIOSK APP</u></h1>"
                        redBussinessSuite.text = "DTS"
                        redanimation.visible = false
                    }
                }


            }
            Rectangle {
                id:redButtonTwo
                anchors.right: parent.right
                anchors.bottom : parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: redColor

                Text {
                    id: reddataTwo
                    anchors.centerIn: parent
                    text: qsTr("COMFYAPP")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }



                states:[ State {
                        name: "reanchored"
                        AnchorChanges { target: redButtonTwo;  anchors.right: parent.right; anchors.bottom: parent.bottom }
                        PropertyChanges {target: redButtonTwo;  anchors.rightMargin: parent.width/12; anchors.bottomMargin: parent.height/3.5 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: redButtonTwo; anchors.bottom:parent.bottom; anchors.right: parent.right}
                        PropertyChanges {target: redButtonTwo; anchors.bottomMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }

                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        redDataBase.state = "moved"
                        content.text = "<h2><u>Are you comfortable?</u></h2>\nWe have different preferences for the perfect temperature, which becomes a bother in large centrally airconditioned spaces. The Comfy app with a breakthrough indoor positioning system powered by Gimbal Bluetooth beacons remembers your preferences and works towards giving you the best experience. Also bundled are features that make finding your way in new buildings; grabbing meeting rooms in office and navigating amenities in public spaces like airports a breeze. With separate SDK’s on Android and iOS; smart buildings are made more comfortable with the comfy app."
                        redsideData.text = "<h1><u>COMFY APP</u></h1>"
                        redVideo.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/comfyapp/comfypro.mp4"
                        redVideo.play()
                        redBussinessSuite.text = "BT"
                        redanimation.visible = true
                    }
                }


            }

            Rectangle {
                id:redButtonThree
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: redColor

                Text {
                    id: reddataThree
                    anchors.centerIn: parent
                    text: qsTr("DUBAI EXPO APP")
                    color: "white"
                    wrapMode: Text.WordWrap
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }


                states:[
                    State {
                        name: "reanchored"
                        AnchorChanges { target: redButtonThree;  anchors.right: parent.right; anchors.bottom:parent.bottom }
                        PropertyChanges {target: redButtonThree;  anchors.rightMargin: parent.width/2.5; anchors.bottomMargin: parent.height/12 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: redButtonThree; anchors.bottom:parent.bottom; anchors.right: parent.right}
                        PropertyChanges {target: redButtonThree; anchors.bottomMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }




                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        redDataBase.state = "moved"
                        content.text = "<h2><u>What's next after smart buildings</u></h2>\nA smart city that uses the digital twin capability and is built on the Mindsphere native platform to reduce energy consumption, use clean energy, minimize potable water consumption and more while ensuring efficient operations and a great visitor experience. Protocols like OPC UA, MQTT, BACNet, ModBus, HTTPS, and HTTPS push work hard behind the scenes to connect the large number of sensors and gateways that enable bi-directional monitor and control. This customized IOT agent will enable 25 million visitors have a great time at the Dubai Expo 2020."
                        redsideData.text = "<h1><u>DUBAI EXPO APP                                             </u></h1>"
                        redVideo.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/dubaiexpoapp/dubaiexpo.mp4"
                        redVideo.play()
                        redBussinessSuite.text = "ISE"
                        redanimation.visible = true
                    }
                }


            }



            Rectangle {
                id:redButtonFour
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: redColor

                Text {
                    id: reddataFour
                    anchors.centerIn: parent
                    text: qsTr("SINEC NMS")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }
                }


                states: [
                    State {
                        name: "reanchored"
                        AnchorChanges { target: redButtonFour;  anchors.bottom: parent.bottom; anchors.left: parent.left}
                        PropertyChanges {target: redButtonFour;  anchors.bottomMargin: parent.width/3.5 ; anchors.leftMargin: parent.height/12}
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: redButtonFour; anchors.bottom:parent.bottom; anchors.left: parent.left}
                        PropertyChanges {target: redButtonFour; anchors.bottomMargin: parent.width/2.5; anchors.leftMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        redDataBase.state = "moved"
                        content.text = "<h2><u>Hate manual configuration of devices?</u></h2>\nImagine configuring firewalls for all the different industrial security devices in a factory setup. With many vendors and standards, this complex and heterogeneous problem needs many days of effort with a steep learning curve for a plant commissioning engineer.  \nThe Firewall Security Configuration for heterogeneous firewall devices using SINEC NMS solution offers nearly zero touch onboarding, using the concept of communication relations (patent application filed) by visualizing many different protocols, services and rules in uniform way by abstracting the complexities behind the scenes."
                        redsideData.text = "<h1><u>SINEC NMS</u></h1>"
                        redVideo.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/sinecnms/image.png"
                        redVideo.play()
                        redBussinessSuite.text = "DTS"
                        redanimation.visible = true
                    }
                }


            }


            Rectangle {
                id:redButtonFive
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: redColor

                Text {
                    id: reddataFive
                    anchors.centerIn: parent
                    text: qsTr("VERONICA")
                    color: "white"
                    font.family: dinAlternate_Bold.name

                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }



                states:[
                    State {
                        name: "reanchored"
                        AnchorChanges { target: redButtonFive;  anchors.left: parent.left; anchors.top: parent.top}
                        PropertyChanges {target: redButtonFive;  anchors.leftMargin: parent.height/7; anchors.topMargin: parent.height/7 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: redButtonFive; anchors.top:parent.top; anchors.left: parent.left}
                        PropertyChanges {target: redButtonFive; anchors.topMargin: parent.width/2.5; anchors.leftMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }


                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        redDataBase.state = "moved"
                        content.text = "<h2><u>Hate repetitive support questions?</u></h2>\nA smart city that uses the digital twin capability and is built on the Mindsphere native platform to reduce energy consumption, use clean energy, minimize potable water consumption and more while ensuring efficient operations and a great visitor experience. Protocols like OPC UA, MQTT, BACNet, ModBus, HTTPS, and HTTPS push work hard behind the scenes to connect the large number of sensors and gateways that enable bi-directional monitor and control. This customized IOT agent will enable 25 million visitors have a great time at the Dubai Expo 2020."
                        redsideData.text = "<h1><u>DUBAI EXPO APP                                                     </u></h1>"
                        redVideo.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/veronica/veronica.mp4"
                        redVideo.play()
                        redBussinessSuite.text = "DTS"
                        redanimation.visible = true
                    }
                }


            }


            RotationAnimation on rotation {
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: _buttonCollectRotate
            }


        }




        Rectangle {
            id: redCenter
            anchors.centerIn: parent
            color: redColor
            width: parent.width/3
            height: width
            radius: height
            MouseArea {
                anchors.fill: parent
                onClicked: {

                    redRotation.paused ? redRotation.resume() : redRotation.pause()
                    redImageOverlay.color = "grey"
                    redRotation.paused ? redImageOverlay.color = "grey" : redImageOverlay.color = redColor
                    redRotation.paused ? redButtonOne.state = redButtonTwo.state = redButtonThree.state = redButtonFour.state = redButtonFive.state = "reanchored" : redButtonOne.state = redButtonTwo.state = redButtonThree.state = redButtonFour.state = redButtonFive.state =  "anchored"


                }
            }


        }





        Column {
            id:columnred
//            spacing:
            anchors.centerIn: parent

            Component.onCompleted: {
                for (var item in children)
                    children[item].anchors.horizontalCenter = columnred.horizontalCenter;
            }
            AnimatedImage {
                id: redIcon
                source: "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/Animation GIFS/2.gif"
                width: redCenter.width/2
                height: redCenter.height/2
            }
            Text {
                id: redName
                text: qsTr("POWERING GRIDS")
                color: "white"
                wrapMode: Text.Wrap
                font.pointSize: 12
                font.family: dinAlternate_Bold.name
                smooth: true
            }

        }





        Rectangle {
            id:redDataBase
            anchors.centerIn: parent
            width: parent.width/100   //parent.width/100
            height: width
            radius: width
            color:redColor



            Rectangle {
                visible: parent.width > 100 ? true: false
                //                visible: true
                color: "transparent"
                anchors.top: parent.top
                anchors.topMargin: parent.height/12
                width: parent.width
                height: parent.height/3


                Row {
                    anchors.fill: parent
                    spacing: 3

                    Rectangle {
                        width: parent.width/2
                        height: parent.height
                        color: "transparent"
                        //                        border.color: "black"

                        //                        Image{
                        //                            id:redImage
                        //                            anchors.fill: parent
                        ////                            MouseArea {
                        ////                                onClicked: {
                        ////                                    redVideo.play()
                        ////                                }
                        //                            }

                        Video {
                            id:redVideo
                            anchors.fill: parent
                            muted: true
                            autoPlay: true

                        }

                        MouseArea {
                            onClicked: {
                                redVideo.play()
                            }
                        }

                    }

                    Text {
                        id: redsideData
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 100
                        text: "<u><h2>HU</h2></u>"
                        rotation: 270
                        color: "white"
                        font.family: dinCondensed_Bold.name
                        font.pointSize: 9

                    }
                    Rectangle {

                        color: "transparent"
                        width: parent.width/3
                        height: parent.height
                        //                        border.color: "black"


                        AnimatedImage {
                            id: redanimation;
                            y: 0
                            anchors.left: parent.left
                            width: parent.width+100
                            height: parent.height+100
                            anchors.leftMargin: -70
                            source: "file:///" + applicationDirPath + "/assests/Animation GIFS/1.gif"
                        }
                    }

                }
            }

            Rectangle {
                visible: parent.width > 100 ? true: false
                color: "transparent"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/4
                width: parent.width/1.5
                height: parent.height/3

                Text {
                    id: content
                    width: parent.width
                    height: parent.height
                    color: "white"
                    font.pointSize: 12
                    font.family: dinAlternate_Bold.name
                    wrapMode: Text.WordWrap
                    text: "<h1><u> Heading </u></h1>\n" + "loperium data is  the dummy of t he dsdummy ssdTA IR ais pit jwrere"
                }
            }

            //            Rectangle {
            //             visible: false
            //            }


            Rectangle {
                visible: parent.width > 100 ? true: false
                anchors.left: parent.left
                anchors.leftMargin: parent.width/12
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/12
                width: parent.width/6
                color: orangeColor
                height: 50


//                Rectangle {
//                    anchors.top: parent.top
//                    anchors.topMargin: parent.height
//                    anchors.left: parent.left
//                    height: parent.height
//                    width: parent.width/2

//                }


                Text {
                    id: redBussinessSuite
                    anchors.left: parent.left
                    anchors.leftMargin: parent.width + 10
                    anchors.top: parent.top
                    anchors.topMargin: parent.height/4
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    font.pointSize: 12
                    text: qsTr("text")
                }
            }

            Rectangle {
                visible: parent.width > 100 ? true: false
                anchors.right: parent.right
                anchors.rightMargin: parent.height/8
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/12
                width: 100
                height: width
                color: orangeColor
                radius: width
                Text {
                    id: dumb
                    anchors.centerIn: parent
                    color: "white"
                    text: qsTr("X")
                }


                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        redVideo.stop()
                        redDataBase.state = "small"
                    }
                }
            }







            states:[

                State {
                    name: "moved"
                    PropertyChanges { target: redDataBase; width: parent.width;  }
                },
                State {
                    name: "small"
                    PropertyChanges {
                        target: redDataBase; width: parent.width/100

                    }
                }


            ]
            transitions:[
                Transition {
                    PropertyAnimation { properties: "width,radius,height"; easing.type: Easing.InOutQuad; duration: 500}


                }
            ]


        }


    }


    //====================================== red bulb done ==================================================//

    //===================================== Light Blue Bulb ==================================================//



    Rectangle {
//                visible: false
        id:baseRectangle
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        //        anchors.leftMargin: parent.width/3
        width: elementWidth
        height: elementHeight


        Image {

            id: rotatingImage
            anchors.centerIn: parent
            anchors.fill: parent
            source: circleImage
            ColorOverlay {
                id:lightBlueImageOverlay
                anchors.fill: rotatingImage
                source: rotatingImage
                color: lightBlue


            }

            RotationAnimation on rotation {
                id:lightBlueRotation
                loops: Animation.Infinite
                from: 360
                to: 0
                duration: speed
            }




        }


        Rectangle {
            id:lightBlueButtonCollect
            anchors.fill: parent
            color: "transparent"


            Rectangle {
                id:lightBlueButtonOne
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: lightBlue

                Text {
                    id: lightBluedataOne
                    anchors.centerIn: parent
                    text: qsTr("one")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }

                states: [ State {
                        name: "reanchored"
                        AnchorChanges { target: lightBlueButtonOne; anchors.top:parent.top; anchors.right: parent.right}
                        PropertyChanges {target: lightBlueButtonOne; anchors.topMargin: parent.width/7; anchors.rightMargin: parent.height/7}
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: lightBlueButtonOne; anchors.top:parent.top; anchors.right: parent.right}
                        PropertyChanges {target: lightBlueButtonOne; anchors.topMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }

                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed; }
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        lightBlueDataBase.state = "moved"
                    }
                }


            }
            Rectangle {
                id:lightBlueButtonTwo
                anchors.right: parent.right
                anchors.bottom : parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: lightBlue

                Text {
                    id: lightBluedataTwo
                    anchors.centerIn: parent
                    text: qsTr("two")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }



                states:[ State {
                        name: "reanchored"
                        AnchorChanges { target: lightBlueButtonTwo;  anchors.right: parent.right; anchors.bottom: parent.bottom }
                        PropertyChanges {target: lightBlueButtonTwo;  anchors.rightMargin: parent.width/12; anchors.bottomMargin: parent.height/3.5 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: lightBlueButtonTwo; anchors.bottom:parent.bottom; anchors.right: parent.right}
                        PropertyChanges {target: lightBlueButtonTwo; anchors.bottomMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }

                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        lightBlueDataBase.state = "moved"
                    }
                }


            }

            Rectangle {
                id:lightBlueButtonThree
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: lightBlue

                Text {
                    id: lightBluedataThree
                    anchors.centerIn: parent
                    text: qsTr("three")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }


                states:[
                    State {
                        name: "reanchored"
                        AnchorChanges { target: lightBlueButtonThree;  anchors.right: parent.right; anchors.bottom:parent.bottom }
                        PropertyChanges {target: lightBlueButtonThree;  anchors.rightMargin: parent.width/2.5; anchors.bottomMargin: parent.height/12 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: lightBlueButtonThree; anchors.bottom:parent.bottom; anchors.right: parent.right}
                        PropertyChanges {target: lightBlueButtonThree; anchors.bottomMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }




                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        lightBlueDataBase.state = "moved"
                    }
                }


            }



            Rectangle {
                id:lightBlueButtonFour
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: lightBlue

                Text {
                    id: lightBluedataFour
                    anchors.centerIn: parent
                    text: qsTr("four")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }
                }


                states: [
                    State {
                        name: "reanchored"
                        AnchorChanges { target: lightBlueButtonFour;  anchors.bottom: parent.bottom; anchors.left: parent.left}
                        PropertyChanges {target: lightBlueButtonFour;  anchors.bottomMargin: parent.width/3.5 ; anchors.leftMargin: parent.height/12}
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: lightBlueButtonFour; anchors.bottom:parent.bottom; anchors.left: parent.left}
                        PropertyChanges {target: lightBlueButtonFour; anchors.bottomMargin: parent.width/2.5; anchors.leftMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        lightBlueDataBase.state = "moved"
                    }
                }


            }


            Rectangle {
                id:lightBlueButtonFive
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: lightBlue

                Text {
                    id: lightBluedataFive
                    anchors.centerIn: parent
                    text: qsTr("five")
                    color: "white"
                    font.family: dinAlternate_Bold.name

                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }



                states:[
                    State {
                        name: "reanchored"
                        AnchorChanges { target: lightBlueButtonFive;  anchors.left: parent.left; anchors.top: parent.top}
                        PropertyChanges {target: lightBlueButtonFive;  anchors.leftMargin: parent.height/7; anchors.topMargin: parent.height/7 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: lightBlueButtonFive; anchors.top:parent.top; anchors.left: parent.left}
                        PropertyChanges {target: lightBlueButtonFive; anchors.topMargin: parent.width/2.5; anchors.leftMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }


                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        lightBlueDataBase.state = "moved"
                    }
                }


            }


            RotationAnimation on rotation {
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: _buttonCollectRotate
            }


        }




        Rectangle {
            id: lightBlueCenter
            anchors.centerIn: parent
            color: lightBlue
            width: parent.width/3
            height: width
            radius: height
            MouseArea {
                anchors.fill: parent
                onClicked: {

                    lightBlueRotation.paused ? lightBlueRotation.resume() : lightBlueRotation.pause()
                    lightBlueImageOverlay.color = "grey"
                    lightBlueRotation.paused ? lightBlueImageOverlay.color = "grey" : lightBlueImageOverlay.color = lightBlue
                    lightBlueRotation.paused ? lightBlueButtonOne.state = lightBlueButtonTwo.state = lightBlueButtonThree.state = lightBlueButtonFour.state = lightBlueButtonFive.state = "reanchored" : lightBlueButtonOne.state = lightBlueButtonTwo.state = lightBlueButtonThree.state = lightBlueButtonFour.state = lightBlueButtonFive.state =  "anchored"


                }
            }


        }





        Column {
            id:columnLightBlue
            spacing: 5
            anchors.centerIn: parent

            Component.onCompleted: {
                for (var item in children)
                    children[item].anchors.horizontalCenter = columnLightBlue.horizontalCenter;
            }
            Image {
                id: lightBlueIcon
                source: "qrc:/assests/icons/lightBlueIcon.png"
                width: lightBlueCenter.width/2.5
                height: width
            }
            Text {
                id: lightBlueName
                text: qsTr("POWERING GRIDS")
                color: "white"
                wrapMode: Text.Wrap
                font.pointSize: 7
                font.family: dinAlternate_Bold.name
                smooth: true
            }

        }





        Rectangle {
            id:lightBlueDataBase
            anchors.centerIn: parent
            width: parent.width/100   //parent.width/100
            height: width
            radius: width
            color:lightBlue



            Rectangle {
                visible: parent.width > 100 ? true: false
                //                visible: true
                color: "transparent"
                anchors.top: parent.top
                anchors.topMargin: parent.height/12
                width: parent.width
                height: parent.height/3


                Row {
                    anchors.fill: parent
                    spacing: 10
                    Rectangle {
                        width: parent.width/2
                        height: parent.height
                        color: "transparent"
                        border.color: "black"

                    }

                    Text {
                        id: lightBluesideData
                        text: "<u><h2>HU</h2></u>"
                        rotation: 270
                        color: "white"
                        font.family: dinCondensed_Bold.name
                        font.pointSize: 10

                    }
                    Rectangle {

                        color: "transparent"
                        width: parent.width/3
                        height: parent.height
                        //                        border.color: "black"


                        AnimatedImage {
                            id: blueanimation;
                            y: 0
                            anchors.left: parent.left
                            width: parent.width+100
                            height: parent.height+100
                            anchors.leftMargin: -70
                            source: "file:///" + applicationDirPath + "/assests/Animation GIFS/2.gif"
                        }
                    }

                }
            }

            Rectangle {
                visible: parent.width > 100 ? true: false
                color: "transparent"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/4
                width: parent.width/1.5
                height: parent.height/3
                Text {
                    id: bluecontent
                    width: parent.width
                    height: parent.height
                    color: "white"
                    font.pointSize: 10
                    font.family: dinAlternate_Bold.name
                    wrapMode: Text.WordWrap
                    text: "<h1><u> Heading </u></h1>\n" + "loperium data is  the dummy of t he dsdummy ssdTA IR ais pit jwrere"
                }
            }


            Rectangle {
                visible: parent.width > 100 ? true: false
                anchors.left: parent.left
                anchors.leftMargin: parent.width/12
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/12
                width: parent.width/6
                color: orangeColor
                height: 30
            }

            Rectangle {
                visible: parent.width > 100 ? true: false
                anchors.right: parent.right
                anchors.rightMargin: parent.height/12
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/12
                width: 40
                height: width
                color: orangeColor
                radius: width
                Text {
                    id: bluedumb
                    anchors.centerIn: parent
                    color: "white"
                    text: qsTr("X")
                }


                MouseArea{
                    anchors.fill: parent
                    onClicked: {

                        lightBlueDataBase.state = "small"
                    }
                }
            }







            states:[

                State {
                    name: "moved"
                    PropertyChanges { target: lightBlueDataBase; width: parent.width;  }
                },
                State {
                    name: "small"
                    PropertyChanges {
                        target: lightBlueDataBase; width: parent.width/100

                    }
                }


            ]
            transitions:[
                Transition {
                    PropertyAnimation { properties: "width,radius,height"; easing.type: Easing.InOutQuad; duration: 500}


                }
            ]


        }


    }





    // =================================   Light Blue Bulb ends here =============================//

    // =================================   orange bulb =============================================//

    Rectangle {
        visible: false
        id:orangebaseRectangle
        //        anchors.centerIn: parent
        anchors.right: parent.right
        anchors.rightMargin: parent.width/5
        width: elementWidth
        height: elementHeight


        Image {

            id: orangerotatingImage
            anchors.centerIn: parent
            anchors.fill: parent
            source: circleImage
            ColorOverlay {
                id:orangeImageOverlay
                anchors.fill: orangerotatingImage
                source: rotatingImage
                color: orangeColor


            }

            RotationAnimation on rotation {
                id:orangeRotation
                loops: Animation.Infinite
                from: 360
                to: 0
                duration: speed
            }




        }


        Rectangle {
            id:orangeButtonCollect
            anchors.fill: parent
            color: "transparent"


            Rectangle {
                id:orangeButtonOne
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: orangeColor

                Text {
                    id: orangedataOne
                    anchors.centerIn: parent
                    text: qsTr("one")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }

                states: [ State {
                        name: "reanchored"
                        AnchorChanges { target: orangeButtonOne; anchors.top:parent.top; anchors.right: parent.right}
                        PropertyChanges {target: orangeButtonOne; anchors.topMargin: parent.width/7; anchors.rightMargin: parent.height/7}
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: orangeButtonOne; anchors.top:parent.top; anchors.right: parent.right}
                        PropertyChanges {target: orangeButtonOne; anchors.topMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }

                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed; }
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        orangeDataBase.state = "moved"
                    }
                }


            }
            Rectangle {
                id:orangeButtonTwo
                anchors.right: parent.right
                anchors.bottom : parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: orangeColor

                Text {
                    id: orangedataTwo
                    anchors.centerIn: parent
                    text: qsTr("two")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }



                states:[ State {
                        name: "reanchored"
                        AnchorChanges { target: orangeButtonTwo;  anchors.right: parent.right; anchors.bottom: parent.bottom }
                        PropertyChanges {target: orangeButtonTwo;  anchors.rightMargin: parent.width/12; anchors.bottomMargin: parent.height/3.5 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: orangeButtonTwo; anchors.bottom:parent.bottom; anchors.right: parent.right}
                        PropertyChanges {target: orangeButtonTwo; anchors.bottomMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }

                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        orangeDataBase.state = "moved"
                    }
                }


            }

            Rectangle {
                id:orangeButtonThree
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: orangeColor

                Text {
                    id: orangedataThree
                    anchors.centerIn: parent
                    text: qsTr("three")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }


                states:[
                    State {
                        name: "reanchored"
                        AnchorChanges { target: orangeButtonThree;  anchors.right: parent.right; anchors.bottom:parent.bottom }
                        PropertyChanges {target: orangeButtonThree;  anchors.rightMargin: parent.width/2.5; anchors.bottomMargin: parent.height/12 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: orangeButtonThree; anchors.bottom:parent.bottom; anchors.right: parent.right}
                        PropertyChanges {target: orangeButtonThree; anchors.bottomMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }




                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        orangeDataBase.state = "moved"
                    }
                }


            }



            Rectangle {
                id:orangeButtonFour
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: orangeColor

                Text {
                    id: orangedataFour
                    anchors.centerIn: parent
                    text: qsTr("four")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }
                }


                states: [
                    State {
                        name: "reanchored"
                        AnchorChanges { target: orangeButtonFour;  anchors.bottom: parent.bottom; anchors.left: parent.left}
                        PropertyChanges {target: orangeButtonFour;  anchors.bottomMargin: parent.width/3.5 ; anchors.leftMargin: parent.height/12}
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: orangeButtonFour; anchors.bottom:parent.bottom; anchors.left: parent.left}
                        PropertyChanges {target: orangeButtonFour; anchors.bottomMargin: parent.width/2.5; anchors.leftMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        orangeDataBase.state = "moved"
                    }
                }


            }


            Rectangle {
                id:orangeButtonFive
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: orangeColor

                Text {
                    id: orangedataFive
                    anchors.centerIn: parent
                    text: qsTr("five")
                    color: "white"
                    font.family: dinAlternate_Bold.name

                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }



                states:[
                    State {
                        name: "reanchored"
                        AnchorChanges { target: orangeButtonFive;  anchors.left: parent.left; anchors.top: parent.top}
                        PropertyChanges {target: orangeButtonFive;  anchors.leftMargin: parent.height/7; anchors.topMargin: parent.height/7 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: orangeButtonFive; anchors.top:parent.top; anchors.left: parent.left}
                        PropertyChanges {target: orangeButtonFive; anchors.topMargin: parent.width/2.5; anchors.leftMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }


                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        orangeDataBase.state = "moved"
                    }
                }


            }


            RotationAnimation on rotation {
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: _buttonCollectRotate
            }


        }




        Rectangle {
            id: orangeCenter
            anchors.centerIn: parent
            color: orangeColor
            width: parent.width/3
            height: width
            radius: height
            MouseArea {
                anchors.fill: parent
                onClicked: {

                    orangeRotation.paused ? orangeRotation.resume() : orangeRotation.pause()
                    orangeImageOverlay.color = "grey"
                    orangeRotation.paused ? orangeImageOverlay.color = "grey" : orangeImageOverlay.color = orangeColor
                    orangeRotation.paused ? orangeButtonOne.state = orangeButtonTwo.state = orangeButtonThree.state = orangeButtonFour.state = orangeButtonFive.state = "reanchored" : orangeButtonOne.state = orangeButtonTwo.state = orangeButtonThree.state = orangeButtonFour.state = orangeButtonFive.state =  "anchored"


                }
            }


        }





        Column {
            id:columnorange
            spacing: 5
            anchors.centerIn: parent

            Component.onCompleted: {
                for (var item in children)
                    children[item].anchors.horizontalCenter = columnorange.horizontalCenter;
            }
            Image {
                id: orangeIcon
                source: "qrc:/assests/icons/orangeIcon.png"
                width: orangeCenter.width/2.5
                height: width
            }
            Text {
                id: orangeName
                text: qsTr("POWERING GRIDS")
                color: "white"
                wrapMode: Text.Wrap
                font.pointSize: 7
                font.family: dinAlternate_Bold.name
                smooth: true
            }

        }





        Rectangle {
            id:orangeDataBase
            anchors.centerIn: parent
            width: parent.width/100   //parent.width/100
            height: width
            radius: width
            color:orangeColor



            Rectangle {
                visible: parent.width > 100 ? true: false
                //                visible: true
                color: "transparent"
                anchors.top: parent.top
                anchors.topMargin: parent.height/12
                width: parent.width
                height: parent.height/3


                Row {
                    anchors.fill: parent
                    spacing: 10
                    Rectangle {
                        width: parent.width/2
                        height: parent.height
                        color: "transparent"
                        border.color: "black"

                    }

                    Text {
                        id: orangesideData
                        text: "<u><h2>HU</h2></u>"
                        rotation: 270
                        color: "white"
                        font.family: dinCondensed_Bold.name
                        font.pointSize: 10

                    }
                    Rectangle {

                        color: "transparent"
                        width: parent.width/3
                        height: parent.height
                        //                        border.color: "black"


                        AnimatedImage {
                            id: orangeanimation;
                            y: 0
                            anchors.left: parent.left
                            width: parent.width+100
                            height: parent.height+100
                            anchors.leftMargin: -70
                            source: "file:///" + applicationDirPath + "/assests/Animation GIFS/1.gif"
                        }
                    }

                }
            }

            Rectangle {
                visible: parent.width > 100 ? true: false
                color: "transparent"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/4
                width: parent.width/1.5
                height: parent.height/3
                Text {
                    id: orangecontent
                    width: parent.width
                    height: parent.height
                    color: "white"
                    font.pointSize: 10
                    font.family: dinAlternate_Bold.name
                    wrapMode: Text.WordWrap
                    text: "<h1><u> Heading </u></h1>\n" + "loperium data is  the dummy of t he dsdummy ssdTA IR ais pit jwrere"
                }
            }


            Rectangle {
                visible: parent.width > 100 ? true: false
                anchors.left: parent.left
                anchors.leftMargin: parent.width/12
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/12
                width: parent.width/6
                color: redColor
                height: 30
            }

            Rectangle {
                visible: parent.width > 100 ? true: false
                anchors.right: parent.right
                anchors.rightMargin: parent.height/12
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/12
                width: 40
                height: width
                color: redColor
                radius: width
                Text {
                    id: orangedumb
                    anchors.centerIn: parent
                    color: "white"
                    text: qsTr("X")
                }


                MouseArea{
                    anchors.fill: parent
                    onClicked: {

                        orangeDataBase.state = "small"
                    }
                }
            }







            states:[

                State {
                    name: "moved"
                    PropertyChanges { target: orangeDataBase; width: parent.width;  }
                },
                State {
                    name: "small"
                    PropertyChanges {
                        target: orangeDataBase; width: parent.width/100

                    }
                }


            ]
            transitions:[
                Transition {
                    PropertyAnimation { properties: "width,radius,height"; easing.type: Easing.InOutQuad; duration: 500}


                }
            ]


        }


    }


    // ============================================ orange bulb end here =================================================//

    // =============================================blue bulb strts =======================================================//


    Rectangle {
        visible: false
        id:bluebaseRectangle
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        width: elementWidth
        height: elementHeight


        Image {

            id: bluerotatingImage
            anchors.centerIn: parent
            anchors.fill: parent
            source: circleImage
            ColorOverlay {
                id:blueImageOverlay
                anchors.fill: bluerotatingImage
                source: rotatingImage
                color: blueColor


            }

            RotationAnimation on rotation {
                id:blueRotation
                loops: Animation.Infinite
                from: 360
                to: 0
                duration: speed
            }




        }


        Rectangle {
            id:blueButtonCollect
            anchors.fill: parent
            color: "transparent"


            Rectangle {
                id:blueButtonOne
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: blueColor

                Text {
                    id: bluedataOne
                    anchors.centerIn: parent
                    text: qsTr("one")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }

                states: [ State {
                        name: "reanchored"
                        AnchorChanges { target: blueButtonOne; anchors.top:parent.top; anchors.right: parent.right}
                        PropertyChanges {target: blueButtonOne; anchors.topMargin: parent.width/7; anchors.rightMargin: parent.height/7}
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: blueButtonOne; anchors.top:parent.top; anchors.right: parent.right}
                        PropertyChanges {target: blueButtonOne; anchors.topMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }

                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed; }
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        blueDataBase.state = "moved"
                    }
                }


            }
            Rectangle {
                id:blueButtonTwo
                anchors.right: parent.right
                anchors.bottom : parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: blueColor

                Text {
                    id: bluedataTwo
                    anchors.centerIn: parent
                    text: qsTr("two")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }



                states:[ State {
                        name: "reanchored"
                        AnchorChanges { target: blueButtonTwo;  anchors.right: parent.right; anchors.bottom: parent.bottom }
                        PropertyChanges {target: blueButtonTwo;  anchors.rightMargin: parent.width/12; anchors.bottomMargin: parent.height/3.5 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: blueButtonTwo; anchors.bottom:parent.bottom; anchors.right: parent.right}
                        PropertyChanges {target: blueButtonTwo; anchors.bottomMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }

                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        blueDataBase.state = "moved"
                    }
                }


            }

            Rectangle {
                id:blueButtonThree
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: blueColor

                Text {
                    id: bluedataThree
                    anchors.centerIn: parent
                    text: qsTr("three")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }


                states:[
                    State {
                        name: "reanchored"
                        AnchorChanges { target: blueButtonThree;  anchors.right: parent.right; anchors.bottom:parent.bottom }
                        PropertyChanges {target: blueButtonThree;  anchors.rightMargin: parent.width/2.5; anchors.bottomMargin: parent.height/12 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: blueButtonThree; anchors.bottom:parent.bottom; anchors.right: parent.right}
                        PropertyChanges {target: blueButtonThree; anchors.bottomMargin: parent.width/2.5; anchors.rightMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }




                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        blueDataBase.state = "moved"
                    }
                }


            }



            Rectangle {
                id:blueButtonFour
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: blueColor

                Text {
                    id: bluedataFour
                    anchors.centerIn: parent
                    text: qsTr("four")
                    color: "white"
                    font.family: dinAlternate_Bold.name
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }
                }


                states: [
                    State {
                        name: "reanchored"
                        AnchorChanges { target: blueButtonFour;  anchors.bottom: parent.bottom; anchors.left: parent.left}
                        PropertyChanges {target: blueButtonFour;  anchors.bottomMargin: parent.width/3.5 ; anchors.leftMargin: parent.height/12}
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: blueButtonFour; anchors.bottom:parent.bottom; anchors.left: parent.left}
                        PropertyChanges {target: blueButtonFour; anchors.bottomMargin: parent.width/2.5; anchors.leftMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        blueDataBase.state = "moved"
                    }
                }


            }


            Rectangle {
                id:blueButtonFive
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/5
                height: width
                radius: width
                color: blueColor

                Text {
                    id: bluedataFive
                    anchors.centerIn: parent
                    text: qsTr("five")
                    color: "white"
                    font.family: dinAlternate_Bold.name

                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 360
                        to: 0
                        duration: _buttonCollectRotate
                    }

                }



                states:[
                    State {
                        name: "reanchored"
                        AnchorChanges { target: blueButtonFive;  anchors.left: parent.left; anchors.top: parent.top}
                        PropertyChanges {target: blueButtonFive;  anchors.leftMargin: parent.height/7; anchors.topMargin: parent.height/7 }
                    },

                    State {
                        name: "anchored"
                        AnchorChanges { target: blueButtonFive; anchors.top:parent.top; anchors.left: parent.left}
                        PropertyChanges {target: blueButtonFive; anchors.topMargin: parent.width/2.5; anchors.leftMargin: parent.height/2.5}

                    }
                ]

                transitions: Transition {
                    AnchorAnimation { duration: buttonAnimationSpeed }

                }


                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        blueDataBase.state = "moved"
                    }
                }


            }


            RotationAnimation on rotation {
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: _buttonCollectRotate
            }


        }




        Rectangle {
            id: blueCenter
            anchors.centerIn: parent
            color: blueColor
            width: parent.width/3
            height: width
            radius: height
            MouseArea {
                anchors.fill: parent
                onClicked: {

                    blueRotation.paused ? blueRotation.resume() : blueRotation.pause()
                    blueImageOverlay.color = "grey"
                    blueRotation.paused ? blueImageOverlay.color = "grey" : blueImageOverlay.color = blueColor
                    blueRotation.paused ? blueButtonOne.state = blueButtonTwo.state = blueButtonThree.state = blueButtonFour.state = blueButtonFive.state = "reanchored" : blueButtonOne.state = blueButtonTwo.state = blueButtonThree.state = blueButtonFour.state = blueButtonFive.state =  "anchored"


                }
            }


        }





        Column {
            id:columnblue
            spacing: 5
            anchors.centerIn: parent

            Component.onCompleted: {
                for (var item in children)
                    children[item].anchors.horizontalCenter = columnblue.horizontalCenter;
            }
            Image {
                id: blueIcon
                source: "qrc:/assests/icons/blueIcon.png"
                width: blueCenter.width/2.5
                height: width
            }
            Text {
                id: blueName
                text: qsTr("POWERING GRIDS")
                color: "white"
                wrapMode: Text.Wrap
                font.pointSize: 7
                font.family: dinAlternate_Bold.name
                smooth: true
            }

        }





        Rectangle {
            id:blueDataBase
            anchors.centerIn: parent
            width: parent.width/100   //parent.width/100
            height: width
            radius: width
            color:blueColor



            Rectangle {
                visible: parent.width > 100 ? true: false
                //                visible: true
                color: "transparent"
                anchors.top: parent.top
                anchors.topMargin: parent.height/12
                width: parent.width
                height: parent.height/3


                Row {
                    anchors.fill: parent
                    spacing: 10
                    Rectangle {
                        width: parent.width/2
                        height: parent.height
                        color: "transparent"
                        border.color: "black"

                    }

                    Text {
                        id: bluesideData
                        text: "<u><h2>HU</h2></u>"
                        rotation: 270
                        color: "white"
                        font.family: dinCondensed_Bold.name
                        font.pointSize: 10

                    }
                    Rectangle {

                        color: "transparent"
                        width: parent.width/3
                        height: parent.height
                        //                        border.color: "black"


                        AnimatedImage {
                            id: blueAnimation;
                            y: 0
                            anchors.left: parent.left
                            width: parent.width+100
                            height: parent.height+100
                            anchors.leftMargin: -70
                            source: "file:///" + applicationDirPath + "/assests/Animation GIFS/1.gif"
                        }
                    }

                }
            }

            Rectangle {
                visible: parent.width > 100 ? true: false
                color: "transparent"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/4
                width: parent.width/1.5
                height: parent.height/3
                Text {
                    id: blueContent
                    width: parent.width
                    height: parent.height
                    color: "white"
                    font.pointSize: 10
                    font.family: dinAlternate_Bold.name
                    wrapMode: Text.WordWrap
                    text: "<h1><u> Heading </u></h1>\n" + "loperium data is  the dummy of t he dsdummy ssdTA IR ais pit jwrere"
                }
            }


            Rectangle {
                visible: parent.width > 100 ? true: false
                anchors.left: parent.left
                anchors.leftMargin: parent.width/12
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/12
                width: parent.width/6
                color: blueColor
                height: 30
            }

            Rectangle {
                visible: parent.width > 100 ? true: false
                anchors.right: parent.right
                anchors.rightMargin: parent.height/12
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/12
                width: 40
                height: width
                color: blueColor
                radius: width
                Text {
                    id: blueDumb
                    anchors.centerIn: parent
                    color: "white"
                    text: qsTr("X")
                }


                MouseArea{
                    anchors.fill: parent
                    onClicked: {

                        blueDataBase.state = "small"
                    }
                }
            }







            states:[

                State {
                    name: "moved"
                    PropertyChanges { target: blueDataBase; width: parent.width;  }
                },
                State {
                    name: "small"
                    PropertyChanges {
                        target: blueDataBase; width: parent.width/100

                    }
                }


            ]
            transitions:[
                Transition {
                    PropertyAnimation { properties: "width,radius,height"; easing.type: Easing.InOutQuad; duration: 500}


                }
            ]


        }


    }


}
