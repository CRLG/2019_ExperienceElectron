#include "MessengerXbeeNetwork2019.h"
#include "messagebase.h"
#include "GlobalExperience.h"

MessengerXbeeNetwork::MessengerXbeeNetwork()
{
    init(&m_transporter, &m_database);
    initMessages();
    m_trace_debug_active = true;
}

MessengerXbeeNetwork::~MessengerXbeeNetwork()
{
}

// ______________________________________________
void MessengerXbeeNetwork::initMessages()
{
    m_database.m_ExperienceStatus.setTransmitPeriod(1000);
    m_database.m_ExperienceStatus.setDestinationAddress(0xFFFF);
}

// ______________________________________________
void MessengerXbeeNetwork::IRQ_ReceiveRS232()
{
    char rxData;
    rxData = _rs232_xbee_network_rx.getc();
    if (m_trace_debug_active) {
        _rs232_pc_tx.putc(rxData);
    }
    _led3 = !_led3;
    m_xbee.decode(rxData);
}

// ______________________________________________
void MessengerXbeeNetwork::readEEPROM()
{
    Application.m_eeprom.getValue("XBEE.PANID", (char*)&m_xbee_settings.PANID[0]);
    Application.m_eeprom.getValue("XBEE.CHANNEL", &m_xbee_settings.CHANNEL[0]);
    Application.m_eeprom.getValue("XBEE.ID", (char*)&m_xbee_settings.ID);
    Application.m_eeprom.getValue("XBEE.APIMODE", (char*)&m_xbee_settings.APIMODE);
    Application.m_eeprom.getValue("XBEE.SECURITY", (char*)&m_xbee_settings.SECURITY);
    Application.m_eeprom.getValue("XBEE.KEY", &m_xbee_settings.KEY[0]);
    Application.m_eeprom.getValue("XBEE.COORDINATOR", (char*)&m_xbee_settings.COORDINATOR);
    Application.m_eeprom.getValue("XBEE.COORDINATOR_OPTION", (char*)&m_xbee_settings.COORDINATOR_OPTION);
    Application.m_eeprom.getValue("TraceDebugActive", &m_trace_debug_active);

    if (m_trace_debug_active) {
        debug_settings();
    }
/*
    XBEE n°1
      m_xbee_settings.APIMODE = '1';
      strcpy(m_xbee_settings.CHANNEL, "0E");
      m_xbee_settings.COORDINATOR = '1';
      m_xbee_settings.COORDINATOR_OPTION = '4';
      strcpy(m_xbee_settings.PANID, "3321");
      strcpy(m_xbee_settings.KEY, "6910DEA76FC0328DEBB4307854EDFC42");
      m_xbee_settings.ID = '1';
      m_xbee_settings.SECURITY = '1';

    XBEE n°2
        tXbeeSettings xbee_settings;
        xbee_settings.APIMODE = '1';
        strcpy(xbee_settings.CHANNEL, "0E");
        xbee_settings.COORDINATOR = '0'; // -------------
        xbee_settings.COORDINATOR_OPTION = 0x04;
        strcpy(xbee_settings.PANID, "3321");
        strcpy(xbee_settings.KEY, "6910DEA76FC0328DEBB4307854EDFC42");
        xbee_settings.ID = '2';  // ------
        xbee_settings.SECURITY = '1';
*/
}

// ______________________________________________
void MessengerXbeeNetwork::start()
{
    readEEPROM();
    m_xbee.activeDebug(m_trace_debug_active);

    m_database.restart();
    while (_rs232_xbee_network_rx.readable()) _rs232_xbee_network_rx.getc(); // Nettoie tout octet en attente dans le buffer
    _rs232_xbee_network_rx.attach(this, &MessengerXbeeNetwork::IRQ_ReceiveRS232);  	// Callback sur réception d'une donnée sur la RS232

    m_xbee.init(m_xbee_settings);
    m_xbee.setMessengerInterface(this);
}
// ______________________________________________
void MessengerXbeeNetwork::stop()
{
    _rs232_xbee_network_rx.attach(NULL); // Supprime l'IRQ sur réception RS232
}

// ______________________________________________
void MessengerXbeeNetwork::execute()
{
    m_database.checkAndSendPeriodicMessages();
    m_database.checkNodeCommunication();
}

// ===================================================
//              MESSENGER OUTPUT
// ===================================================
// ______________________________________________
void MessengerXbeeNetwork::encode(unsigned char *buff_data, unsigned short buff_size, unsigned short dest_address)
{
    m_xbee.encode(buff_data, buff_size, dest_address);
}

// ===================================================
//              MESSENGER RESSOURCES
// ===================================================
// ______________________________________________
long MessengerXbeeNetwork::getTime()
{
    return _Global_Timer.read_ms();
}

// ===================================================
//                  MESSENGER EVENTS
// ===================================================
// ______________________________________________
void MessengerXbeeNetwork::newFrameReceived(tMessengerFrame *frame)
{
    //Application.m_leds.toggle(LED_1);
}

// ______________________________________________
void MessengerXbeeNetwork::newMessageReceived(MessageBase *msg)
{
    //Application.m_leds.toggle(LED_2);
}

// ______________________________________________
void MessengerXbeeNetwork::frameTransmited(tMessengerFrame *frame)
{
}

// ______________________________________________
void MessengerXbeeNetwork::messageTransmited(MessageBase *msg)
{
}

// ______________________________________________
void MessengerXbeeNetwork::dataUpdated(char *name, char *val_str)
{
    //Application.m_leds.toggle(LED_3);
}

// ______________________________________________
void MessengerXbeeNetwork::dataChanged(char *name, char *val_str)
{
    //Application.m_leds.toggle(LED_4);
}


// ===================================================
//                  LOCAL METHODS
// ===================================================
// ______________________________________________
void MessengerXbeeNetwork::debug_settings()
{
    _rs232_pc_tx.printf("\n\rXBEE SETTINGS\r\n");
    _rs232_pc_tx.printf("  >APIMODE=%c\r\n", m_xbee_settings.APIMODE);
    _rs232_pc_tx.printf("  >XBEE.CHANNEL=%c%c\r\n", m_xbee_settings.CHANNEL[0], m_xbee_settings.CHANNEL[1]);
    _rs232_pc_tx.printf("  >XBEE.COORDINATOR=%c\r\n", m_xbee_settings.COORDINATOR);
    _rs232_pc_tx.printf("  >COORDINATOR_OPTION=%c\r\n", m_xbee_settings.COORDINATOR_OPTION);
    _rs232_pc_tx.printf("  >PANID=%c%c%c%c\r\n", m_xbee_settings.PANID[0], m_xbee_settings.PANID[1], m_xbee_settings.PANID[2], m_xbee_settings.PANID[3]);
    _rs232_pc_tx.printf("  >KEY=");
    for (unsigned int i=0; i<sizeof(m_xbee_settings.KEY); i++) {
        printf("%c", m_xbee_settings.KEY[i]);
    }
    printf("\r\n");
    _rs232_pc_tx.printf("  >ID=%c\r\n", m_xbee_settings.ID);
    _rs232_pc_tx.printf("  >SECURITY=%c\r\n", m_xbee_settings.SECURITY);

}
