import QtQuick 2.0
import QtQuick.Controls 2.0

Item{
    visible: true
    width: 2000
    height: 810


    Connections {

        target:widget
        onSendToQml:{
            item1.rotation = fill
        }
        onBlueImg:
        {
            itemblue.rotation =bluefill

        }
    }
    Image {
        id: image
        x:-2
        y:0
        width: 2000
        height: 811
        rotation: 0
        fillMode: Image.PreserveAspectFit
        source: "qrc:/assets/assets/img_cluster_11inches_cars_crossovers_bg_2000.png"

    }
    Image {
        id: pinkbg
        x: 180
        y: 310
        width: 307
        height: 240
        fillMode: Image.PreserveAspectFit
        source: "qrc:/assets/assets/img_Alerts_large_placeholder.png"
    }
    Image {
        id: image4
        x: 290
        y: 370
        width: 95
        height: 75
        fillMode: Image.PreserveAspectFit
        source: "qrc:/assets/assets/icn_tt_coolant_temperature_normal.png"
    }
    Text {
        id: element
        x: 240
        y: 450
        width: 196
        height: 70
        color: "#f4f5f5"
        text: qsTr("23")
        font.pixelSize: 45
        font.bold: false
        styleColor: "#f5e4e1"
        font.capitalization: Font.SmallCaps
        font.family: "Arial"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        elide: Text.ElideRight
    }
    Text {
        id: element1
        x: 180
        y: 530
        width: 313
        height: 49
        color: "#eef2f2"
        text: qsTr("%")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        lineHeight: 1.3
        font.pixelSize: 30
    }


    Item {
        id: bluedisplayWindow
        x: 970
        y: 130
        height: 306
        visible: true
        scale: 1
        rotation: 0
        anchors.leftMargin: 154
        anchors.bottomMargin: 284
        z: 5
        width: 420
        clip: true
        anchors.bottom: parent.bottom
        anchors.left: parent.left


        Image {
            id: image3
            x: 58
            y: 118
            width: 253
            height: 188
            visible: true
            clip: false
            fillMode: Image.PreserveAspectFit
            source: "qrc:/assets/assets/Tick_marks.png"
        }
        Item {
            id: item1
            x: 127
            y: 193
            width: 115
            height: 100
            scale: 1
            rotation: -120

            Image {
                id: image2
                x: -68
                y: -77
                width: 253
                height: 188
                rotation: 0
                visible: true
                fillMode: Image.PreserveAspectFit
                source: "qrc:/assets/assets/Mid_Fill.png"
            }
        }
        Item {
            id: itemblue
            x: 127
            y: 193
            width: 120
            height: 100
            rotation: -120
            Image {
                id: image1
                x: -68
                y: -77
                rotation: 0
                visible: true
                fillMode: Image.PreserveAspectFit
                source: "qrc:/assets/assets/half_blue.png"
            }

        }

    }
    Text {
        id: element5
        x: 280
        y: 530
        width: 313
        height: 49
        color: "#eef2f2"
        text: slider.value
    }
}
