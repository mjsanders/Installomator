starface72x)
    name="STARFACE"
    # Downloads the latest 7.2.x version of the STARFACE Client. The client depends on the version of the PBX, so the correct version should be selected for installation
    type="zip"
    downloadURL=$(curl -fs "https://www.starface-cdn.de/starface/clients/mac/appcast.xml" | grep -i 'enclosure url=' | grep -m 1 "7.2" | cut -d '"' -f 2)
    appNewVersion=$(curl -fs "https://www.starface-cdn.de/starface/clients/mac/appcast.xml" | grep -i 'enclosure url=' | grep -m 1 "7.2" | cut -d '"' -f 2 | cut -d '-' -f 4 | sed 's/\(.*\).zip/\1/')
    expectedTeamID="Q965D3UXEW"
    versionKey="CFBundleVersion"
    ;;
