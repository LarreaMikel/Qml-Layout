import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Layouts 1.0

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "qml-layout.larreamikel"

    width: units.gu(50)
    height: units.gu(75)

//    Page {
//        header: PageHeader {
//            id: pageHeader
//            title: i18n.tr("Qml-Layout")
//            StyleHints {
//                foregroundColor: UbuntuColors.orange
//                backgroundColor: UbuntuColors.porcelain
//                dividerColor: UbuntuColors.slate
//            }
//        }

    Button {
        id: redButton
        text: "Item #1"
        color: "red"
        Layouts.item: "red"
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        width: units.gu(15)
    }
    Button {
        id: greenButton
        text: "Item #2"
        color: "green"
        Layouts.item: "green"
        anchors {
            top: parent.top
            left: redButton.right
            right: parent.right
        }
        height: units.gu(10)
    }
    Button {
        id: blueButton
        text: "Item #3"
        color: "blue"
        Layouts.item: "blue"
        anchors{
            left: redButton.right
            right: parent.right
            bottom: parent.bottom
        }
        height: units.gu(10)
    }

//    }
}

