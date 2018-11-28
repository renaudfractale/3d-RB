
import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Window 2.11
Window {
    id : root
    visible: true
    width: 640
    height: 480
    minimumHeight: 160;
    minimumWidth: 200;


            property int w3: ((width-18)/3)
            property int h3: ((height-18-50)/2)
            property int w2: (width-12)/2
            property int h2: h3


    Rectangle
    {
        id : oneCamera;
        x: 3;
        y: 3;
        width: w3;
        height: h3;
        radius: 20.0;
        color: "#000088"
        state: "NORMAL"
        states: [
            State
            {
                name: "NORMAL"
                PropertyChanges
                { target: oneCamera; color: "#000088" }
            },
            State
            {
                name: "USED"
                PropertyChanges
                { target: oneCamera; color: "#0000ff" }
            }
        ]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (oneCamera.state === "NORMAL"){
                    oneCamera.state = "USED"
                    twoCamera.state = "NORMAL"
                    nCamera.state = "NORMAL"
                    choixCamera.text ="One Camera"
                    if(nSubject.state=== "USED" | oneSubject.state=== "USED"){
                        buttonGo.state ="USED"
                    }
                } else {
                 oneCamera.state = "NORMAL"
                choixCamera.text ="None"
                }
            }
        }
        Image {
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            source: "OneCamera.png"
        }
    }
    Rectangle
    {
        id : twoCamera;
        x: (parent.width-18)/3+9;
        y: 3;
        width: w3;
        height: h3;
        radius: 20.0;
        color: "#008800"
        state: "NORMAL"
        states: [
            State
            {
                name: "NORMAL"
                PropertyChanges
                { target: twoCamera; color: "#008800" }
            },
            State
            {
                name: "USED"
                PropertyChanges
                { target: twoCamera; color: "#00ff00" }
            }
        ]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (twoCamera.state === "NORMAL"){
                    twoCamera.state = "USED"
                    nCamera.state = "NORMAL"
                    oneCamera.state="NORMAL"
                    choixCamera.text ="Two Cameras"
                    if(nSubject.state=== "USED" | oneSubject.state=== "USED"){
                        buttonGo.state ="USED"
                    }
                } else {
                    twoCamera.state = "NORMAL"
                    choixCamera.text ="None"
                }
            }
        }
        Image {
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            source: "TwoCamera.png"
        }
    }
    Rectangle
    {
       id : nCamera;
        x: ((parent.width-18)/3+6)*2+3;
        y: 3;
        width: w3;
        height: h3;
        radius: 20.0;
        color: "#880000"
        state: "NORMAL"
        states: [
            State
            {
                name: "NORMAL"
                PropertyChanges
                { target: nCamera; color: "#880000" }
            },
            State
            {
                name: "USED"
                PropertyChanges
                { target: nCamera; color: "#ff0000" }
            }
        ]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (nCamera.state === "NORMAL"){
                    nCamera.state = "USED"
                    oneCamera.state="NORMAL"
                    twoCamera.state="NORMAL"
                     choixCamera.text ="N Cameras"
                    if(nSubject.state=== "USED" | oneSubject.state=== "USED"){
                        buttonGo.state ="USED"
                    }
                } else {
                    nCamera.state = "NORMAL"
                    choixCamera.text ="None"
                }
            }
        }
        Image {
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            source: "NCamera.png"
        }
    }
    Rectangle
    {
        id : oneSubject;
        x: 3;
        y: (parent.height-18-50)/2+9;
        width: w2;
        height: h2;
        radius: 20.0;
        color: "#880088"
        state: "NORMAL"
        states: [
            State
            {
                name: "NORMAL"
                PropertyChanges
                { target: oneSubject; color: "#880088" }
            },
            State
            {
                name: "USED"
                PropertyChanges
                { target: oneSubject; color: "#ff00ff" }
            }
        ]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (oneSubject.state === "NORMAL"){
                    oneSubject.state = "USED"
                    nSubject.state="NORMAL"
                    choixSujet.text = "One subject"
                    if(oneCamera.state=== "USED" | twoCamera.state=== "USED" | nCamera.state=== "USED" ){
                        buttonGo.state ="USED"
                    }
                } else {
                    oneSubject.state = "NORMAL"
                    choixSujet.text="None"
                }
            }
        }
        Image {
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            source: "OneSubject.png"
        }
    }
    Rectangle
    {
        id : nSubject;
        x: (parent.width-12)/2+9;
        y: (parent.height-18-50)/2+9;
        width: w2;
        height: h2;
        radius: 20.0;
        color: "#888800"
        state: "NORMAL"
        states: [
            State
            {
                name: "NORMAL"
                PropertyChanges
                { target: nSubject; color: "#888800" }
            },
            State
            {
                name: "USED"
                PropertyChanges
                { target: nSubject; color: "#ffff00" }
            }
        ]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (nSubject.state === "NORMAL"){
                    nSubject.state = "USED"
                    oneSubject.state="NORMAL"
                    choixSujet.text = "N subjects"
                    if(oneCamera.state=== "USED" | twoCamera.state=== "USED" | nCamera.state=== "USED" ){
                        buttonGo.state ="USED"
                    }
                } else {
                    nSubject.state = "NORMAL"
                    choixSujet.text="None"
                }
            }
        }
        Image {
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            source: "NSubject.png"
        }
    }
    Rectangle
    {
        id : buttonGo;
        x: 3
        y: (parent.height-50-3);
        width: (parent.width-6);
        height: 50-3;
        radius: 20.0;
        color: "#ffffff"
        state: "NORMAL"
        states: [
            State
            {
                name: "NORMAL"
                PropertyChanges
                { target: buttonGo; color: "#ffffff" }
            },
            State
            {
                name: "USED"
                PropertyChanges
                { target: buttonGo; color: "#00ff00" }
            }
        ]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(buttonGo.state==="USED") {
                    var component = Qt.createComponent("main.qml");
                    component.createObject().show();
                    root.close();
                }
            }
        }
            Text {
                id: choixCamera
                x: 0;
                y: 0;
                height: parent.height
                width: parent.width/2
                text: qsTr("None")
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 40.0
            }
            Text {
                id: choixSujet
                x:  parent.width/2;
                y: 0;
                height: parent.height
                width: parent.width/2
                text: qsTr("None")
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 40.0
            }
    }

}
