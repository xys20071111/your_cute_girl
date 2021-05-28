import QtQuick 2.7
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import io.thp.pyotherside 1.3

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'ycg.xys'
    automaticOrientation: true

    width: units.gu(45)
    height: units.gu(75)

    Page {
        anchors.fill: parent

        header: PageHeader {
            id: header
            title: i18n.tr('Your Cute Girl')
        }

        Image {
            id: image
            x: 0
            y: 50
            anchors.topMargin: 8
            source: "../img/image1.png"
            fillMode: Image.PreserveAspectFit
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            
            MouseArea {
                id: mouseArea
                anchors.bottomMargin: 70
                anchors.fill: parent
                onClicked: {
                    python.call('speak.speak',[],function(res){
                        element.text = res;
                    })
                }
            }

        }

        Text {
            id: element
            x: 0
            y: 541
            height: 59
            text: qsTr("")
            fontSizeMode: Text.HorizontalFit
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 523
            lineHeight: 2
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 48
        }
    }
    Python {
        id: python

        Component.onCompleted: {
            addImportPath(Qt.resolvedUrl('../src/'));

            importModule('speak', function() {
                console.log('module imported');
                python.call('speak.get_python_version', [], function(returnValue) {
                    console.log(returnValue)
                })
            });
        }

        onError: {
            console.log('python error: ' + traceback);
        }
    }
}


