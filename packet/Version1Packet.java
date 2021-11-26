import java.net.InetAddress;
import java.util.ArrayList;
import java.net.UnknownHostException;

public class Version1Packet {
    public String essid;
    public String hostname;
    public String hwaddr;
    public IpInfo ipInfo;
    public String ipaddr;
    public long lastSeen;
    public InetAddress localAddress;
    public String platform;
    public String version;
    public int webPort;
    public Protocol webProto;
    public int wmode;

    public enum Protocol {
        http,
        https
    }


    public static class IpInfo {
       
        public final String ipAddress;
        public final String macAddress;

        public IpInfo(String str, String str2) {
            this.macAddress = str;
            this.ipAddress = str2;
        }
    }

    public static void test() {
        Version1Packet version1Packet = new Version1Packet();

        
        version1Packet.hostname = "UniFi-CloudKey-Gen2-Plus";
        version1Packet.platform = "UCK-G2-PLUS";
        version1Packet.essid = "0000000";
        version1Packet.wmode = 1;
        version1Packet.webProto = Version1Packet.Protocol.http;
        version1Packet.webPort = 7080;
        version1Packet.version = "unifi-protect.arm64.v1.18.1.0.0.0";
        version1Packet.ipInfo = new Version1Packet.IpInfo("001122334455", "192.168.1.2");
        version1Packet.ipaddr = "192.168.1.2";
        version1Packet.hwaddr = "001122334455";
        version1Packet.lastSeen = java.lang.System.currentTimeMillis();
        try {
            version1Packet.localAddress = InetAddress.getByName("192.168.1.2");
        } catch (UnknownHostException unused) {
        }


        System.out.println(version1Packet.toString());
    }
  }