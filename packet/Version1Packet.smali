.class public LVersion1Packet;
.super Ljava/lang/Object;
.source "Version1Packet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVersion1Packet$IpInfo;,
        LVersion1Packet$Protocol;
    }
.end annotation


# instance fields
.field public essid:Ljava/lang/String;

.field public hostname:Ljava/lang/String;

.field public hwaddr:Ljava/lang/String;

.field public ipInfo:LVersion1Packet$IpInfo;

.field public ipaddr:Ljava/lang/String;

.field public lastSeen:J

.field public localAddress:Ljava/net/InetAddress;

.field public platform:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public webPort:I

.field public webProto:LVersion1Packet$Protocol;

.field public wmode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static test()V
    .registers 4

    .prologue
    .line 37
    new-instance v0, LVersion1Packet;

    invoke-direct {v0}, LVersion1Packet;-><init>()V

    .line 40
    const-string v1, "UniFi-CloudKey-Gen2-Plus"

    iput-object v1, v0, LVersion1Packet;->hostname:Ljava/lang/String;

    .line 41
    const-string v1, "UCK-G2-PLUS"

    iput-object v1, v0, LVersion1Packet;->platform:Ljava/lang/String;

    .line 42
    const-string v1, "0000000"

    iput-object v1, v0, LVersion1Packet;->essid:Ljava/lang/String;

    .line 43
    const/4 v1, 0x1

    iput v1, v0, LVersion1Packet;->wmode:I

    .line 44
    sget-object v1, LVersion1Packet$Protocol;->http:LVersion1Packet$Protocol;

    iput-object v1, v0, LVersion1Packet;->webProto:LVersion1Packet$Protocol;

    .line 45
    const/16 v1, 0x1ba8

    iput v1, v0, LVersion1Packet;->webPort:I

    .line 46
    const-string v1, "unifi-protect.arm64.v1.18.1.0.0.0"

    iput-object v1, v0, LVersion1Packet;->version:Ljava/lang/String;

    .line 47
    new-instance v1, LVersion1Packet$IpInfo;

    const-string v2, "001122334455"

    const-string v3, "192.168.1.2"

    invoke-direct {v1, v2, v3}, LVersion1Packet$IpInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, LVersion1Packet;->ipInfo:LVersion1Packet$IpInfo;

    .line 48
    const-string v1, "192.168.1.2"

    iput-object v1, v0, LVersion1Packet;->ipaddr:Ljava/lang/String;

    .line 49
    const-string v1, "001122334455"

    iput-object v1, v0, LVersion1Packet;->hwaddr:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, LVersion1Packet;->lastSeen:J

    .line 52
    :try_start_39
    const-string v1, "192.168.1.2"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, LVersion1Packet;->localAddress:Ljava/net/InetAddress;
    :try_end_41
    .catch Ljava/net/UnknownHostException; {:try_start_39 .. :try_end_41} :catch_4b

    .line 57
    :goto_41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    return-void

    .line 53
    :catch_4b
    move-exception v1

    goto :goto_41
.end method
