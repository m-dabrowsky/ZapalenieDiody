import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Mike 1.0

Window {
    width: 300
    height: 300
    visible: true
    title: qsTr("Hello World")

    Controller{
        id: diodController
    }

    Button {
        id: button
        x: 94
        y: 185
        text: qsTr("Zapal Diode")
        property bool diodState: true
        onClicked: {
            dioda.color = diodController.onOff(!diodState);
            if(diodState === true)
                button.text = "Zgaś diode"
            else
                button.text = "Zapal diode"

            diodState = !diodState

        }
    }

    Rectangle {
        id: dioda
        x: 81
        y: 25
        width: 126
        height: 117
        color: "#c2c2b9" //#f1f128
        radius: 50
    }




}
