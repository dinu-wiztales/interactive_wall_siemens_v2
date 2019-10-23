import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0
import QtMultimedia 5.12
import "componentCreation.js" as MyScript

Window {
    id:root
    visible: true
    width: 1280  // 3840
    height: 800
    title: qsTr("Interactive Wall Siemens")

    visibility: "Windowed"

    property var speed: 20000
    property var elementWidth: 800
    property var elementHeight: 800
    property var buttonAnimationSpeed: 500
    property var _buttonCollectRotate: 30000

    property var lightBlue: "#3AA5AD"
    property var redColor: "#B81757"
    property var blueColor: "#045D86"
    property var orangeColor: "#EF8000"
    property var _json : ({
                              "innovationandyou": {
                                "kioskapp": {
                                  "id":"kioskapp",
                                  "title":"Missing parts of the conversation?",
                                  "content":"Do a quick hearing test with the Kiosk App, that enables your smart mobile device become an audiometry device. Powered by audiological details and test labs from Sivantos, the AU Fitting Apps team helps you to check your hearing ability and suggest a suitable hearing aid with effective configurations",
                                  "topRightAnimation":"none",
                                  "sideLine":"KIOSK APP",
                                  "mainContentType":"slideshow",
                                  "mainContent": "maincontent",
                                  "belowMainContent":"extraContent.png",
                                  "businessUnit":"DTS"
                                },
                                "comfyapp": {
                                  "id":"comfyapp",
                                  "title":"Met everyone’s favorite workplace app?",
                                  "content":"An innovative solution to further the creating perfect places. It gives individuals personal control over their workplace like adjusting temperature and lighting and more. The Comfy app with a breakthrough indoor positioning system powered by Gimbal Bluetooth beacons remembers your preferences and works towards giving you the best experience. Also bundled are features that make navigating your way in new buildings or public space easy. With separate SDK’s on Android and iOS; Comfy creates a better way to work and delivers the operational results that workplace teams need. ",
                                  "topRightAnimation":"bulb.mov",
                                  "sideLine":"COMFY APP",
                                  "mainContentType":"video",
                                  "mainContent": "comfypro.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"BT"
                                },
                                "dubaiexpoapp": {
                                  "id":"dubaiexpoapp",
                                  "title":"What's next after smart buildings",
                                  "content":"A smart city that uses the digital twin capability and is built on the Mindsphere native platform to reduce energy consumption, use clean energy, minimize potable water consumption and more while ensuring efficient operations and a great visitor experience. Protocols like OPC UA, MQTT, BACNet, ModBus, HTTPS, and HTTPS push work hard behind the scenes to connect the large number of sensors and gateways that enable bi-directional monitor and control. This customized IOT agent will enable 25 million visitors have a great time at the Dubai Expo 2020.",
                                  "topRightAnimation":"bulb.mov",
                                  "sideLine":"DUBAI EXPO APP",
                                  "mainContentType":"video",
                                  "mainContent": "dubaiexpo.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"ISE"
                                },
                                "veronica": {
                                  "id":"veronica",
                                  "title":"Dislike repetitive support questions?",
                                  "content":"Get Veronica on your team! Veronica’s AI-based technology includes an impressive rollcall of machine learning algorithms such as Recurrent Neural Networks, Reinforcement Learning and Natural Language processing. Product teams can now use the Veronica web-app to create, train and deploy product-specific chatbots to answer end-user queries in an instant.<br> Helps automate repetitive jobs like L1 and L2 support; so, the end users and support teams can focus on the core development. Check out Veronica! ",
                                  "topRightAnimation":"bulb.mov",
                                  "sideLine":"VERONICA, DTS",
                                  "mainContentType":"video",
                                  "mainContent": "veronica.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"DTS"
                                },
                                "sinecnms": {
                                  "id":"sinecnms",
                                  "title":"Manual configuration of devices<br>impacting productivity? ",
                                  "content":"Imagine configuring firewalls for all the different industrial security devices in a factory setup. With many vendors and standards, this complex and heterogeneous problem needs many days of effort with a steep learning curve for a plant commissioning engineer.<br> The Firewall Security Configuration for heterogeneous firewall devices using the SINEC NMS solution offers nearly zero touch onboarding, using the concept of communication relations (patent application filed) by visualizing many different protocols, services and rules in uniform way by abstracting the complexities behind the scenes.",
                                  "topRightAnimation":"bulb.mov",
                                  "sideLine":"SINEC NMS!",
                                  "mainContentType":"photo",
                                  "mainContent": "image.png",
                                  "belowMainContent":"none",
                                  "businessUnit":"DPI"
                                }
                              },



                              "poweringgrids": {
                                "aom": {
                                  "id":"aom",
                                  "title":"Keeping medium voltage switchgear <br>devices powered!",
                                  "content":"Maintenance of switchgears are critical and heavily dependent on the skill level of the service engineers. The Augmented Operations and Maintenance (AOM) used mobile devices and AR/VR tech to provide detailed step by step instructions for service engineers that bridge the expertise gap with inbuilt domain knowledge.<br> Built on Unity, 3DSMax and MaxST, Backend on ASP .Net, and a few other technologies, this solution can be integrated to the plant database. The AOM packs enough intelligence to enable the site engineers handle L1 and L2 support tickets. Started as a PoC, this solution is now a 300 K EUR project",
                                  "topRightAnimation":"powersocket.mov",
                                  "sideLine":"AOM",
                                  "mainContentType":"video",
                                  "mainContent": "aom.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"SGI"
                                },
                                "siprotecmr": {
                                  "id":"siprotecmr",
                                  "title":"Digital Twins and Mixed Reality to the rescue",
                                  "content":"Power Grid substations are usually spread across remote locations and host a massive number of relay protection devices. Each service engineer is assigned multiple substations and traveling physically to sites for troubleshooting service requests adds to the plant downtime.<br> With the Remote Troubleshooting Mixed Reality app using Hololens, a digital twin of the relays are deployed. Hosted on the MindSphere platform and built using Unity, 3DSMax and MRTK; the service engineers can trouble shoot from their offices or the control center. The app provides a real time view of the substation, and remote troubleshooting of all connections and hardware components in the panels is now possible. ",
                                  "topRightAnimation":"powersocket.mov",
                                  "sideLine":"SIPROTEC MR",
                                  "mainContentType":"video",
                                  "mainContent": "siprotecmr.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"SGI"
                                },
                                "faultanalyzer": {
                                  "id":"faultanalyzer",
                                  "title":"Analysis that keep plants reliable",
                                  "content":"To keep plants running at acceptable levels of power quality, quick analysis of faults is critical. Currently, this needs an expert on site to manually download the fault reports and generate the report. For cascading failures, this analysis needs to happen for multiple substations.<br>The Fault Analyzer application uses EDGE devices to monitor IED’s (both Siprotech and 3rd party), push the reports on to the MindSphere platform and centralize the fault monitoring. Basic analytics are run on the data generated and all these data and reports are available on the front end of the app. Now customers are alerted via email and SMS, and the analysis can be done using any mobile or app, from any part of the world. ",
                                  "topRightAnimation":"powersocket.mov",
                                  "sideLine":"FAULT ANALYZER",
                                  "mainContentType":"video",
                                  "mainContent": "faultanalyzer.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"SGI"
                                },
                                "sad": {
                                  "id":"sad",
                                  "title":"Zero Downtime Deployments.",
                                  "content":"Live Substations need to be up 24/7 and any activity that might disrupt their planned functioning is seen as high risk. But to enable remote monitoring of power quality and other events and reports, a fast, secure, light weight application that could be integrated with zero downtime was essential.<br> The Substation Automation Dashboard is built as a MindApp that tracks and displays power quality parameters, protection functions and other live and historical data. Agents connect IED’s that support IEC61850 protocol were integrated with zero downtime, to continuously send data securely to MindShpere. This solution has made live tracking substations a reality, and this was possible only because of the trust the customer has on the Siemens team.",
                                  "topRightAnimation":"powersocket.mov",
                                  "sideLine":"SUBSTATION <br>AUTOMATION",
                                  "mainContentType":"video",
                                  "mainContent": "sad.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"SGI"
                                },
                                "pqa": {
                                  "id":"pqa",
                                  "title":"Cause and effect, figuring out the<br>power quality puzzle",
                                  "content":"Computer Numerical Control (CNC) machines that from the backbone of the production line are highly sensitive to fluctuations, breaking down and impacting operational efficiency. Traditionally, the Power Quality Analysis (PQA) is done as a yearly activity for audit; but it fails to give any real insights.<br>The PQA is based on the cloud and continuously monitors the critical nodes on production lines, recording outages and conditions. With a user friendly application, historical PQ analysis is used to predict the possible outages and, the system recommends a common optimal solution. Using machine learning models, Signaling concepts, analytic job scheduling and a host of other tech, PQA co-relates cause and effect with the power of IoT and data. ",
                                  "topRightAnimation":"powersocket.mov",
                                  "sideLine":"PQA",
                                  "mainContentType":"video",
                                  "mainContent": "pqa.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"SGI"
                                }
                              },

                              "intelligentfactories": {
                                "amrmonitoring": {
                                  "id":"amrmonitoring",
                                  "title":"Robots that learn on the job",
                                  "content":"Imagine factories that use AR based Autonomous Robots for intra factory logistics and manufacturing processes. These robots have a load capacity of 2000 Kgs and run on natural navigation that requires no change in the infrastructure.<br>Based on the MindSphere platform, with an AR based representation of the manufacturing plant with that show the status of the individual AMR’s, this system generates powerful reports at the AMR and factory level. These reports enable better maintenance and optimal utilization of resources while being completely transparent. This transparency helps in getting the customers to adopt to new business",
                                  "topRightAnimation":"intelligentfactories.mov",
                                  "sideLine":"AMR MONITORING",
                                  "mainContentType":"video",
                                  "mainContent": "amrmonitoring.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"ISE"
                                },
                              "energylite": {
                                  "id":"energylite",
                                  "title":"All you need to know about the your plant in real time, at one place.",
                                  "content":"Industrial plants have many subsystems and an overview of the energy utilization is valuable as an overall snapshot of the health of the plant. Energy Lite is a MindSphere native application which acquires this data and does the required processing and analytics to produce insightful KPIs for site managers.<br>The application also offers advanced data application feature that provide real-time advisory and predictive analytics for energy usage, performance and potential savings. One-click report generation allows users to download historical data for auditing and metric reporting on the go; transforming the way customers manage, monitor and optimize energy performance.",
                                  "topRightAnimation":"intelligentfactories.mov",
                                  "sideLine":"ENERGY LITE",
                                  "mainContentType":"video",
                                  "mainContent": "energylite.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"ISE"
                                },
                                "supplychaintransparency": {
                                  "id":"supplychaintransparency",
                                  "title":"Helping you stay on top of your supply chain.",
                                  "content":"Matching demand and supply has always been a challenge. Out of stock situations, efforts needed for procurement and managing inventory and utilization is tough. But when every step of the process is enabled with IOT, the supply chain becomes completely transparent.<br> The Intelligent container management enabled by SIMATIC RF600 utilizes the UHF RFID system to clearly identify items and quantities and the OPC UA open interface for data transfer assisted by RUGGECOM devices into the MindSphere platform. The data is processed and unique insights are available to better manage the plant and production.",
                                  "topRightAnimation":"intelligentfactories.mov",
                                  "sideLine":"SUPPLY CHAIN <br> TRANSPARENCY",
                                  "mainContentType":"video",
                                  "mainContent": "supplychaintransparency.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"ISE"
                                },
                                "apm": {
                                  "id":"apm",
                                  "title":"Let data predict the next step",
                                  "content":"Traditional maintenance models are based on OEM protocols, and operational experience. In power plants this translates to mainly firefighting and might lead to suboptimal performance. The Asset Performance Management (APM) system optimizes maintenance by creating intelligent models of critical assets and is integrated into the client’s CRM system, creating in a closed loop learning system. Powered by the MindSphere platform it draws on Bently APM suite and provides powerful analytics that predicts maintenance creating automatic work orders / request creations based on failure mode triggering of digital twins. APM helps plants perform at the highest level of availability and reliability backed by data and analysis.",
                                  "topRightAnimation":"intelligentfactories.mov",
                                  "sideLine":"APM",
                                  "mainContentType":"video",
                                  "mainContent": "apm.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"DPI"
                                },
                                "zeroengineering": {
                                  "id":"zeroengineering",
                                  "title":"Make setting up power plants a breeze",
                                  "content":"A typical power plant needs significant repetitive bulk engineering effort which is a time-consuming activity. Setting up hardware, HMI units and software needs high manual involvement, which increases the plant set up time.<br> With the Zero Engineering application, plant engineering is compleatly automated with no manual intervention. The algorithm runs on input data, which includes information not only about the process plant but also configuration data for the automation respectively electrification solution (e.g. specific customer requirements). A Signal I/O list or an extended P&ID diagram is imported by the Zero Engineering application and converted engineering can be exported to either PCS 7, PCS neo or SPPA T-3000.",
                                  "topRightAnimation":"intelligentfactories.mov",
                                  "sideLine":"ZERO <br> ENGINEERING",
                                  "mainContentType":"video",
                                  "mainContent": "zeroengineering.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"DPI"
                                },
                                "industrialedge": {
                                  "id":"industrialedge",
                                  "title":"Make setting up power plants a breeze",
                                  "content":"Data analytics over cloud has many limitations, security, connectivity and often high costs involved in storing large amounts of data on the cloud.<br> The EDGE Management System enables you to monitor the status of all connected devices and install apps and software functions on them. This enables diagnostics and analytics of big, high-frequent data volumes in the automation and manufacturing environment like preventive maintenance or work piece analytics. Industrial EDGE is developed using container-based technologies and cluster management by orchestration tools such as Kubernetes. With Industrial EDGE you get to choose where you will process, store and use your data.",
                                  "topRightAnimation":"intelligentfactories.mov",
                                  "sideLine":"ZERO <br> ENGINEERING",
                                  "mainContentType":"video",
                                  "mainContent": "industrialedge.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"DDI"
                                },
                                "simaticnpu": {
                                  "id":"simaticnpu",
                                  "title":"Artificial intelligence for the shop floor",
                                  "content":"Many of the important parameters for manufacturing processes on the shop floor for quality control, object detection and anomaly detection depend on images / sounds / videos.<br> Artificial intelligence is deployed directly on the shop floor in SIMATIC S7-1500 to manage such complex patterns. The Neural Processing Unit (NPU) gets data into a neural network which can be integrated with TIA Portal and AI Workbench. Sensors can be connected via a USB and ethernet interfaces helping to process input data such as Camera, sound via a trained neural network. This increases inspection speed, reduces worker fatigue and identifies areas that are error prone, leading to better decisions and a plant operating at maximum availability",
                                  "topRightAnimation":"intelligentfactories.mov",
                                  "sideLine":"SIMATIC NPU",
                                  "mainContentType":"video",
                                  "mainContent": "simaticnpu.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"DDI"
                                },
                                "iacloud": {
                                  "id":"iacloud",
                                  "title":"TIA Portal for all sizes of plants",
                                  "content":"The TIA Portal application is traditionally installed on the customer premises and it faces challenges in maintaining multiple versions of the software, deployment of bug fixes, temporary introduction of new features etc.<br>TIA Cloud uses a mix of technologies like Amazon web services, dockers on Amazon Elastic Container Service, a locally developed tool AutoVision and others to bring the power of TIA Portal on the cloud. It also reduces the entry barrier, increases up-selling of options, and makes a subscription-based model possible; pay as you go to harness the power of TIA portal on your browsers. ",
                                  "topRightAnimation":"intelligentfactories.mov",
                                  "sideLine":"IA CLOUD",
                                  "mainContentType":"video",
                                  "mainContent": "iacloud.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"DDI"
                                }
                              },

                              "connectingworlds": {
                                "senzzoit": {
                                  "id":"senzzoit",
                                  "title":"IOT device priced right for India",
                                  "content":"IOT is being driven by integration of sensors into workstreams and devices that enable data collection and support computational capabilities. The commonly used advanced computing controllers that integrate these sensors support multiple protocols and support multiple input output interfaces. They are costly, and this is a difficult hurdle to cross in a cost sensitive market like India.<br> The solution? One board, with 8 pins and two I/O pins; powered by 2 AA batteries. A device that is build using OSS components, incorporated with Mindsphere; supporting plug and play with a low cost Wi-Fi module. Senzzoit, an IOT device for INR 150.",
                                  "topRightAnimation":"connectingworlds.mov",
                                  "sideLine":"SENZZOIT",
                                  "mainContentType":"video",
                                  "mainContent": "senzzoit.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"DTS"
                                },
                              "connectx300": {
                                  "id":"connectx300",
                                  "title":"Connecting legacy devices to the cloud.",
                                  "content":"Buildings and factories with their large number of devices and vendors is a jungle of interfaces and protocols. And to keep installation costs low, its important to find a way to connect the legacy applications to the cloud. The Connect X300 is a connectivity component that is built to be easy to integrate and flexible. <br>Using EDGE devices and microservices based cloud architecture, this supports a wide variety of technology stacks and network topologies. It also bundles for over the air update, logging, metrics, device fleet management thus reducing runtime costs and onboarding efforts. Connect X300 is running successfully in 60+ sites for Fire safety, and the Beta is in the works for Building Operator and Energy Management.",
                                  "topRightAnimation":"connectingworlds.mov",
                                  "sideLine":"CONNECT X300",
                                  "mainContentType":"video",
                                  "mainContent": "connectx300.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"BT"
                                },
                                "cerberusfs": {
                                  "id":"cerberusfs",
                                  "title":"Fire detection and remote monitoring.",
                                  "content":"Skyscrapers are getting higher, and cities are spreading wider. Fire safety providers need to spend a lot of time travelling to sites and manually checking and maintaining fie safety panels. The Cerberus FS suite of cloud solutions enable the fire panels on the cloud for remote monitoring and analysis. Built on top of BT horizon; This solution involves cutting edge technologies such as Angular, Ionic, Cordova as frontend and Node, GoLang, Python as backend technologies. Cerberus uses AWS services and platform for all micro services deployment. The solution is secure, scalable and reliable.<br> The solution has saved travel cost up to 70% for the site engineers and reduced the turnaround time for resolution of faults. This helps customers service more sites without the need to hire additional site engineers.",
                                  "topRightAnimation":"connectingworlds.mov",
                                  "sideLine":"CERBERUS FS",
                                  "mainContentType":"video",
                                  "mainContent": "cerberusfs.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"BT"
                                },
                                "sensformer": {
                                  "id":"sensformer",
                                  "title":"Transformers meet connectivity",
                                  "content":"Transformers are a vital part of keeping power grids running, but traditional transformers are not equipped to show their status to the operators. These blind corners can lead to unplanned failures.<br> Sensformer digitizes the transformer and parameters such as oil level, temperature, winding current etc. are remotely monitored. Sensformer advance provides a digital twin of the transformer. With a wireless connection and data analysis app; active overload manager allows Sensformer® advanced operators to manage temporary overloads without compromising on lifetime. This solution reduces unplanned outages, increases availability and overall system performance ensuring the grids are powered.",
                                  "topRightAnimation":"connectingworlds.mov",
                                  "sideLine":"SENSFORMER",
                                  "mainContentType":"video",
                                  "mainContent": "sensformer.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"ISE"
                                },
                                "sinecnms": {
                                  "id":"sinecnms",
                                  "title":"Making configuration for IOT easier",
                                  "content":"Process industries like Oil refineries have thousands of industrial networking and communication devices like Siemens RUGGEDCOM, and often in less than ideal conditions. Manually configuring and managing these devices on the cloud is a challenge.<br> SINEC NMS uses heterogenous network communication protocols such as SNMP, NETCONF and CLI to manage the network elements and has used policy based network management (PBNMS) to for bulk configuration. This fuss free configuration helps to strengthen the already existing portfolio and drive additional hardware sales while making life easier for the process industries.",
                                  "topRightAnimation":"connectingworlds.mov",
                                  "sideLine":"SINEC NMS",
                                  "mainContentType":"video",
                                  "mainContent": "sinecnms.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"DPI"
                                },
                                "ctf": {
                                  "id":"ctf",
                                  "title":"Connected trains that guarantee safety",
                                  "content":"Monitoring train systems and track side equipment for health is an important regulatory requirement. Controlguide Common Technician facility (CTF) does this and more, using proprietary communication protocols, Big data analytics and web services to generate Realtime diagnostics of different types of interlockings.<br> CTF also creates judicial logs which can be used by authority in case of accidents or mishaps. Provides remote monitoring of interlocking using client server architecture as well as cloud architecture. Operational in 150 installations across UK, the Pune team has complete ownership of this product, and is playing key roles and provides L2 support during commissioning and maintenance.",
                                  "topRightAnimation":"connectingworlds.mov",
                                  "sideLine":"CTF",
                                  "mainContentType":"video",
                                  "mainContent": "ctf.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"MO"
                                },
                                "nagpurmetro": {
                                  "id":"nagpurmetro",
                                  "title":"From 25 kmph to 90 kmph",
                                  "content":"Metro trains run in densely populated areas, and as operators have access to only visual clearance of their tracks, the speed is way below the capacity of the engine. Siemens Trainguide MT (TGMT) uses Airlink to communicate with wireless access points across the track.<br> The Pune team has been working on these softwares for their customers, but were missing out on hands on commissioning experience. Nagpur Metro with the Siemens Ltd. Mobility, started right from deploying access points every 200 meters along the track to final commissioning. And the results are clear, with both airlink and TGMT turned on, the trains zip at 90 kmph from their cautious manual speed of 25 kmph. Getting passengers to their destination faster and increasing the load capacity for the metro in one go; without adding more rolling stock.",
                                  "topRightAnimation":"connectingworlds.mov",
                                  "sideLine":"NAGPUR METRO",
                                  "mainContentType":"video",
                                  "mainContent": "nagpurmetro.mp4",
                                  "belowMainContent":"none",
                                  "businessUnit":"MO"
                                }
                              }
                            })

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
                width: parent.width/6
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
//                        content.text = "<h2><u>How good is your hearing?</u></h2>\n\n Check it out with the Kisosk App, that enables your mobile device to become an audiometry device. Powered by audiological details and test labs from Sivantos, the AU Fitting Apps team helps you to check your hearing ability and suggest a suitable hearing aid with effective configurations."
//                        redsideData.text = "<h1><u>KIOSK APP</u></h1>"
//                        redBussinessSuite.text = "DTS"
//                        redanimation.visible = false
                    }
                }


            }
            Rectangle {
                id:redButtonTwo
                anchors.right: parent.right
                anchors.bottom : parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/6
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
//                        content.text = "<h2><u>Are you comfortable?</u></h2>\nWe have different preferences for the perfect temperature, which becomes a bother in large centrally airconditioned spaces. The Comfy app with a breakthrough indoor positioning system powered by Gimbal Bluetooth beacons remembers your preferences and works towards giving you the best experience. Also bundled are features that make finding your way in new buildings; grabbing meeting rooms in office and navigating amenities in public spaces like airports a breeze. With separate SDK’s on Android and iOS; smart buildings are made more comfortable with the comfy app."
//                        redsideData.text = "<h1><u>COMFY APP</u></h1>"
//                        redVideo.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/comfyapp/comfypro.mp4"
//                        redVideo.play()
//                        redBussinessSuite.text = "BT"
//                        redanimation.visible = true
                    }
                }


            }

            Rectangle {
                id:redButtonThree
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/6
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
//                        content.text = "<h2><u>What's next after smart buildings</u></h2> <br><br>A smart city that uses the digital twin capability and is built on the Mindsphere native platform to reduce energy consumption, use clean energy, minimize potable water consumption and more while ensuring efficient operations and a great visitor experience. Protocols like OPC UA, MQTT, BACNet, ModBus, HTTPS, and HTTPS push work hard behind the scenes to connect the large number of sensors and gateways that enable bi-directional monitor and control. This customized IOT agent will enable 25 million visitors have a great time at the Dubai Expo 2020."
//                        redsideData.text = "<h1><u>DUBAI EXPO APP                                             </u></h1>"
//                        redVideo.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/dubaiexpoapp/dubaiexpo.mp4"
//                        redVideo.play()
//                        redBussinessSuite.text = "ISE"
//                        redanimation.visible = true
                    }
                }


            }



            Rectangle {
                id:redButtonFour
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: parent.width/2.5
                anchors.bottomMargin: parent.height/2.5
                width: parent.width/6
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
//                        content.text = "<h2><u>Hate manual configuration of devices?</u></h2>\nImagine configuring firewalls for all the different industrial security devices in a factory setup. With many vendors and standards, this complex and heterogeneous problem needs many days of effort with a steep learning curve for a plant commissioning engineer.  \nThe Firewall Security Configuration for heterogeneous firewall devices using SINEC NMS solution offers nearly zero touch onboarding, using the concept of communication relations (patent application filed) by visualizing many different protocols, services and rules in uniform way by abstracting the complexities behind the scenes."
//                        redsideData.text = "<h1><u>SINEC NMS</u></h1>"
//                        redVideo.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/sinecnms/image.png"
//                        redVideo.play()
//                        redBussinessSuite.text = "DTS"
//                        redanimation.visible = true
                    }
                }


            }


            Rectangle {
                id:redButtonFive
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: parent.width/2.5
                anchors.topMargin: parent.height/2.5
                width: parent.width/6
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
//                        content.text = "<h2><u>Hate repetitive support questions?</u></h2>\nA smart city that uses the digital twin capability and is built on the Mindsphere native platform to reduce energy consumption, use clean energy, minimize potable water consumption and more while ensuring efficient operations and a great visitor experience. Protocols like OPC UA, MQTT, BACNet, ModBus, HTTPS, and HTTPS push work hard behind the scenes to connect the large number of sensors and gateways that enable bi-directional monitor and control. This customized IOT agent will enable 25 million visitors have a great time at the Dubai Expo 2020."
//                        redsideData.text = "<h1><u>DUBAI EXPO APP                                                     </u></h1>"
//                        redVideo.source = "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/veronica/veronica.mp4"
//                        redVideo.play()
//                        redBussinessSuite.text = "DTS"
//                        redanimation.visible = true
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
            spacing: 5
            anchors.centerIn: parent

            Component.onCompleted: {
                for (var item in children)
                    children[item].anchors.horizontalCenter = columnred.horizontalCenter;
            }
            AnimatedImage {
                id: redIcon
                source: "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/Animation GIFS/1.gif"
                width: redCenter.width/2
                height: (redCenter.height/2)/0.79
            }
            Text {
                id: redName
                text: qsTr("INNOVATION AND YOU")
                color: "white"
                wrapMode: Text.Wrap
                font.pointSize: 11
                font.family: dinAlternate_Bold.name
                smooth: true
            }


        }





        Rectangle {
            id:redDataBase
            anchors.centerIn: parent
            width: parent.width/100  //parent.width/100
            height: width
            radius: width
            color:redColor





            Rectangle {
                id:redMain
                visible: redDataBase.width === redrotatingImage.width ? true : false
                anchors.fill: parent
//                border.color: "black"
                color: "transparent"
//                FinalBase {_width : redDataBase.width}



                Column{
                    anchors.centerIn: parent



                    Rectangle {
                        height: redMain.height/3
                        width: redMain.width
                        color: "transparent"
            //            border.color: "black"

                        Rectangle {
                            width: parent.width
                            height: (parent.height/3)*2
                            color: "transparent"
                            Rectangle {
                                anchors.left: parent.left
                                anchors.top: parent.top
                                width: parent.width/2
                                height: parent.height
                                color: "transparent"
                                Rectangle {
                                    anchors.left: parent.left
                                    anchors.leftMargin: parent.width/12
            //                        anchors.verticalCenter: parent.verticalCenter
                                    width: parent.width - 60
                                    height: parent.height
                                    color: "transparent"
                                 layer.enabled: true
                                 layer.effect : Glow {
                                     samples :3
                                     color: "black"
                                     transparentBorder: true
                                 }

                                    Video {
                                        anchors.fill: parent
                                        source: "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/SiemensInteractiveWallData/content/innovationandyou/dubaiexpoapp/dubaiexpo.mp4"
                                        autoPlay: true
                                        muted: true
                                        loops: MediaPlayer.Infinite
                                    }



                                }

                                Rectangle {
                                    height: parent.height
                                    width: parent.width/4
                                    anchors.right: parent.right
                                    anchors.rightMargin: - parent.width/4
                                    color: "transparent"
                                    Text {
                                        x: -16
//                                        anchors.left: parent.left
//                                        anchors.bottom: parent.bottom
//                                        anchors.bottomMargin: parent.height/12
                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.bottom: parent.bottom
                                        anchors.right: parent.right
                                        text: qsTr("KIOSK APP")
                                        anchors.verticalCenterOffset: 27
                                        anchors.rightMargin: 0
                                        anchors.bottomMargin: -14
                                        font.family: dinCondensed_Bold.name
                                        font.pointSize: 20
                                        font.bold: true
                                        color: "white"
                                        rotation: 270
                                    }
                                }
                            }

                        Rectangle {
                            id:animtionSpace
                            height: parent.height
                            width: parent.width/3
                            anchors.right: parent.right
                            anchors.rightMargin: parent.width/8
                            color: "transparent"
                            AnimatedImage {
                                anchors.centerIn: parent
                                source: "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/Animation GIFS/1.gif"
                                width: parent.width/2
                                height: parent.height


                            }
                        }

                        }

                        Rectangle {
                            anchors.bottom: parent.bottom
                            width: parent.width
                            color: "transparent"
                            height: parent.height/4
                            Text {
                                anchors.left: parent.left
                                anchors.leftMargin: parent.width/12
                                font.family: dinCondensed_Bold.name
                                color: "white"
                                font.bold: true
                                font.pointSize: 20
                                text: qsTr("Dummmy Heading data is here")
                            }
                        }

                        Rectangle {
                            anchors.bottom: parent.bottom
//                            anchors.bottomMargin: parent.height/6
                            color: "transparent"
                            width: parent.width
                            height: parent.height/8
                            Rectangle {
                                anchors.left: parent.left
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.leftMargin: parent.width/12
                                width: parent.width/2
                                color: "white"
                                height: parent.height/20
                            }
                        }



                    }

                    Rectangle {
                        height: redMain.height/3
                        width: redMain.width
                        color: 'transparent'
                        border.color: 'black'
                        Row {
                            spacing: 5
                            Rectangle {
                                width: redDataBase.width
                                height: redDataBase.height/6
                                color: "transparent"
                                Text {
                                    font.family: dinAlternate_Bold.name
                                    color: "white"
                                    font.pointSize: 13
                                    wrapMode: Text.Wrap
                                    text: qsTr("Do a quick hearing test with the Kiosk App, that enables your smart mobile device become an audiometry device. Powered by audiological details and test labs from Sivantos, the AU Fitting Apps team helps you to check your hearing ability and suggest a suitable hearing aid with effective configurations")
                                }
                            }


                        }
                    }
                }

                Rectangle {
                    anchors.bottom: parent.bottom
                    width: parent.width
                    height: parent.height/6
                    color: "transparent"
//                    border.color: "black"
                    Rectangle {
                        anchors.left: parent.left
                        height: parent.height
                        width: parent.width/2
                        color: "transparent"
                        Rectangle {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: parent.width/3
                            height: redDataBase.height/24
                            width: redDataBase.width/6
                            color: orangeColor
                        }
                        Text {

                            id: businessSuite
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: parent.width/4
                            font.bold: true
                            font.pointSize: 12
                            font.family: dinAlternate_Bold.name
                            color: "white"
                            text: qsTr("BT")
                        }

                    }

                    Rectangle {
                        anchors.right: parent.right
                        color: "transparent"
                        height: parent.height
                        width: parent.width/2
                        Rectangle {
                            anchors.centerIn: parent
                            width: parent.width/9
                            height: width
                            radius: width
                            color: orangeColor
                            Text {
                                anchors.centerIn: parent
                                text: qsTr("X")
                                color: "white"
                                font.bold: true
                                font.pointSize: 12
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    redDataBase.state = "small"
                                }
                            }
                        }
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
                    PropertyAnimation {  properties: "width,radius,height"; easing.type: Easing.InOutQuad; duration: 500}


                }
            ]


        }

//        FinalBase{
//            id: forRed;
//           anchors.centerIn: parent
////           _width : redrotatingImage.width

//        }
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
                    text: qsTr("AOM")
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
                        bluecontent.text = "<h2><u>Keeping medium voltage switchgear devices powered!</u></h2>\n\n Maintenance of switchgears are critical and heavily dependent on the skill level of the service engineers. With the changing demographics leading to senior resources retiring; guaranteeing high level of service accuracy of devices and panels like 8BK80, NXAir etc. with limited domain knowledge was becoming a challenge. The Augmented Operations and Maintenance (AOM) used mobile devices and AR/VR tech to provide detailed step by step instructions for service engineers that bridge the expertise gap with inbuilt domain knowledge. Built on Unity, 3DSMax and MaxST, Backend on ASP .Net, and a few other technologies, this solution can be integrated to the plant database. This makes ordering spare parts a breeze, and packs enough intelligence to enable the site engineers handle L1 and L2 support tickets. Started as a PoC, this solution turned into a 300 K EUR project."
                        lightBluesideData.text = "<h1><u>AOM</u></h1>"
//                        lightBlueBussinessSuite.text = "DTS"
                        lightblueanimation.visible = false
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
            AnimatedImage {
                id: lightBlueIcon
                source: "file:///C:/Users/Wiztales/Documents/build-interactive_wall_siemens_v2-Desktop_Qt_5_13_1_MinGW_64_bit-Debug/debug/assests/Animation GIFS/2.gif"
                width: lightBlueCenter.width/2
                height: (lightBlueCenter.height/2)/0.83
            }
            Text {
                id: lightBlueName
                text: qsTr("POWERING GRIDS")
                color: "white"
                wrapMode: Text.Wrap
                font.pointSize: 12
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
                        Video {
                            id:lightBlueVideo
                            anchors.fill: parent
                            autoPlay: true
                        }

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
                            id: lightblueanimation;
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
                    id: lightbluecontent
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
                    id: lightbluedumb
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


//    Base{}




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






//    Rectangle {
//        anchors.centerIn: parent
//        width: 100
//        height: 100
//        color: "red"
//        MouseArea {
//            anchors.fill: parent
//            onClicked: {

//            }
//        }
//    }

}
