import QtQuick 2.7
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import io.thp.pyotherside 1.3

Page {
    id:aboutPage
    header: PageHeader {
        title: "关于"
    }

    Text {
        id: element
        x: 265
        y: 140
        width: 109
        height: 35
        text: "作者 Tom Xue"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 17
    }

    Text {
        id: element1
        x: 45
        y: 180
        width: 550
        height: 206
        text: qsTr("这是我的第一个 Ubuntu Touch 应用。  \n角色图片( img/image1.png )使用 charaft 生成,禁止商用，可用于个人及非商业用途  ")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.NoWrap
        font.pixelSize: 15
        anchors.top: header.bottom
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
