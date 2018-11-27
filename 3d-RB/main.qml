
import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Window 2.11
Window {
    visible: true
    width: 640
    height: 480
    minimumHeight: 100;
    minimumWidth: 100;
    Rectangle
    {
        id : oneCamera;
        x: 0;
        y: 0;
        width: (parent.width-12)/3;
        height: (parent.height-6-50)/2;
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
                } else
                 oneCamera.state = "NORMAL"
            }
        }
    }
    Rectangle
    {
        id : twoCamera;
        x: (parent.width-12)/3+6;
        y: 0;
        width: (parent.width-12)/3;
        height: (parent.height-6-50)/2;
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
                } else {
                    twoCamera.state = "NORMAL"
                }
            }
        }
    }
    Rectangle
    {
       id : nCamera;
        x: ((parent.width-12)/3+6)*2;
        y: 0;
        width: (parent.width-12)/3;
        height: (parent.height-6-50)/2;
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

                } else {
                    nCamera.state = "NORMAL"
                }
            }
        }
    }
    Rectangle
    {
        id : oneSubject;
        x: 0;
        y: (parent.height-6-50)/2+6;
        width: (parent.width-6)/2;
        height: (parent.height-6-50)/2;
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
                } else {
                    oneSubject.state = "NORMAL"
                }
            }
        }
    }
    Rectangle
    {
        id : nSubject;
        x: (parent.width-6)/2+6;
        y: (parent.height-6-50)/2+6;
        width: (parent.width-6)/2;
        height: (parent.height-6-50)/2;
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
                } else {
                    nSubject.state = "NORMAL"
                }
            }
        }
    }
}

/*import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle{
        width: 100
        height: 100
        //color: "steelblue"
        border.color: "black"
        border.width: 5
        radius: 10
        rotation: 90
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "blue" }
        }
    }
    Image {
        x: 0
        y: 100
        width: 61
        height: 73
        source: "logo_qt.png"
    }
    Item
    {
        x: 100
        y: 100
        width: 140; height: 140; opacity: 0.5;
        layer.enabled: true;
        // ou false
        Rectangle
        { width: 80; height: 80; border.width: 1 }
        Rectangle
        { x: 20; y: 20; width: 80; height: 80; border.width: 1 }
        Image
        { x: 40; y: 40; width: 100; height: 100; source: "logo_qt.png" }
    }

    Item
    {
        x: 200
        y: 200
        width: 310; height: 170
        Column
         {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 5
            Rectangle
        { color: "lightblue"; radius: 10.0; width: 300; height: 50
        Text
        { anchors.centerIn: parent; font.pointSize: 24; text: "
        Books" } }
        Rectangle
        { color: "gold"; radius: 10.0; width: 300; height: 50
        Text
        { anchors.centerIn: parent; font.pointSize: 24; text: "
    Music" } }
    Rectangle
    { color: "lightgreen"; radius: 10.0; width: 300; height: 50
    Text
    { anchors.centerIn: parent; font.pointSize: 24; text: "
    Movies" } }
    }
    }
}
*/
