.class public final Lcom/peel/react/rnos/RNOS;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNOS.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RNOS"


# instance fields
.field final mConnectivityBroadcastReceiver:Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;

.field final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "connectivity"

    .line 42
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/peel/react/rnos/RNOS;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 43
    new-instance v0, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;-><init>(Lcom/peel/react/rnos/RNOS;Lcom/peel/react/rnos/RNOS$1;)V

    iput-object v0, p0, Lcom/peel/react/rnos/RNOS;->mConnectivityBroadcastReceiver:Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;

    .line 45
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method private getNetworkInterfaces()Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const-string v1, ":"

    const-string v2, ""

    .line 120
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 121
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 122
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/net/NetworkInterface;

    const-string v6, "00:00:00:00:00:00"

    const/4 v7, 0x1

    .line 128
    :try_start_0
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 131
    invoke-virtual {v8}, Ljava/net/SocketException;->printStackTrace()V

    const/4 v8, 0x1

    :goto_0
    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 135
    :try_start_1
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 138
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    .line 139
    :goto_1
    array-length v13, v0

    if-ge v12, v13, :cond_2

    const-string v13, "%02X%s"

    new-array v14, v9, [Ljava/lang/Object;

    .line 140
    aget-byte v15, v0, v12

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v14, v10

    array-length v15, v0

    sub-int/2addr v15, v7

    if-ge v12, v15, :cond_1

    move-object v15, v1

    goto :goto_2

    :cond_1
    move-object v15, v2

    :goto_2
    aput-object v15, v14, v7

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 149
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InterfaceAddress;

    .line 150
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "internal"

    .line 152
    invoke-virtual {v12, v13, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "mac"

    .line 153
    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v11}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    .line 158
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    const-string v15, "%"

    .line 159
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/4 v9, -0x1

    if-le v15, v9, :cond_4

    .line 161
    invoke-virtual {v14, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_4
    const-string v15, "address"

    .line 163
    invoke-virtual {v12, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    instance-of v14, v13, Ljava/net/Inet6Address;

    const-string v15, "family"

    if-eqz v14, :cond_5

    const-string v14, "IPv6"

    .line 165
    invoke-virtual {v12, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object v14, v13

    check-cast v14, Ljava/net/Inet6Address;

    invoke-virtual {v14}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v14

    const-string v15, "scopeid"

    invoke-virtual {v12, v15, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_5
    const-string v14, "IPv4"

    .line 168
    invoke-virtual {v12, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_5
    invoke-virtual {v11}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v11

    .line 173
    instance-of v13, v13, Ljava/net/Inet4Address;

    const/4 v14, 0x4

    if-eqz v13, :cond_6

    rsub-int/lit8 v11, v11, 0x20

    shl-int/2addr v9, v11

    new-array v11, v14, [Ljava/lang/Object;

    shr-int/lit8 v13, v9, 0x18

    and-int/lit16 v13, v13, 0xff

    .line 175
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v10

    shr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    .line 176
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v7

    shr-int/lit8 v13, v9, 0x8

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v11, v15

    const/4 v13, 0x3

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v13

    const-string v9, "%d.%d.%d.%d"

    .line 175
    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_6
    const/4 v15, 0x2

    new-array v9, v15, [J

    .line 178
    fill-array-data v9, :array_0

    const-wide/16 v16, 0x0

    const/16 v13, 0x40

    if-gt v11, v13, :cond_7

    .line 180
    aget-wide v18, v9, v7

    sub-int/2addr v13, v11

    shl-long v18, v18, v13

    aput-wide v18, v9, v7

    goto :goto_6

    :cond_7
    aput-wide v16, v9, v7

    .line 183
    aget-wide v18, v9, v10

    add-int/lit8 v11, v11, -0x40

    sub-int/2addr v13, v11

    shl-long v18, v18, v13

    aput-wide v18, v9, v10

    :goto_6
    move-object v11, v2

    const/4 v13, 0x0

    :goto_7
    const/4 v15, 0x2

    if-ge v13, v15, :cond_b

    .line 186
    aget-wide v18, v9, v13

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v14, :cond_a

    .line 188
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    move-object v11, v2

    goto :goto_9

    :cond_8
    move-object v11, v1

    :goto_9
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v20, 0xffff

    and-long v20, v18, v20

    cmp-long v11, v20, v16

    if-nez v11, :cond_9

    move-object v11, v2

    goto :goto_a

    .line 189
    :cond_9
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    :goto_a
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x10

    shr-long v18, v18, v14

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x4

    goto :goto_8

    :cond_a
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x4

    goto :goto_7

    :cond_b
    move-object v9, v11

    :goto_b
    const-string v11, "netmask"

    .line 195
    invoke-virtual {v12, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Landroid/os/Bundle;

    if-nez v9, :cond_c

    new-array v9, v7, [Landroid/os/Bundle;

    aput-object v12, v9, v10

    goto :goto_c

    .line 201
    :cond_c
    array-length v11, v9

    add-int/2addr v11, v7

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/os/Bundle;

    .line 202
    array-length v9, v9

    aput-object v12, v11, v9

    move-object v9, v11

    .line 206
    :goto_c
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const/4 v9, 0x2

    goto/16 :goto_4

    :cond_d
    return-object v3

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private registerReceiver()V
    .locals 3

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/peel/react/rnos/RNOS;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/peel/react/rnos/RNOS;->mConnectivityBroadcastReceiver:Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/peel/react/rnos/RNOS;->mConnectivityBroadcastReceiver:Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;->setRegistered(Z)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/peel/react/rnos/RNOS;->mConnectivityBroadcastReceiver:Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;

    invoke-virtual {v0}, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/peel/react/rnos/RNOS;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/peel/react/rnos/RNOS;->mConnectivityBroadcastReceiver:Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/peel/react/rnos/RNOS;->mConnectivityBroadcastReceiver:Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;->setRegistered(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/peel/react/rnos/RNOS;->getNetworkInterfaces()Landroid/os/Bundle;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 63
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 66
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    :cond_0
    const-string v2, "networkInterfaces"

    .line 69
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/peel/react/rnos/RNOS;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "homedir"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNOS"

    return-object v0
.end method

.method public onHostDestroy()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/peel/react/rnos/RNOS;->unregisterReceiver()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/peel/react/rnos/RNOS;->unregisterReceiver()V

    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/peel/react/rnos/RNOS;->registerReceiver()V

    return-void
.end method

.method public updateAndSendOsInfo()V
    .locals 3

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/peel/react/rnos/RNOS;->getNetworkInterfaces()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "networkInterfaces"

    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/peel/react/rnos/RNOS;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 114
    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 115
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 116
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v2, "rn-os-info"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
