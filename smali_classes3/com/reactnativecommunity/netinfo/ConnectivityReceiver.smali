.class abstract Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;
.super Ljava/lang/Object;
.source "ConnectivityReceiver.java"


# instance fields
.field private mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIsInternetReachable:Z

.field private mIsInternetReachableOverride:Ljava/lang/Boolean;

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    .line 51
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "connectivity"

    .line 53
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "phone"

    .line 58
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private createConnectivityEventMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const-string v2, "isWifiEnabled"

    .line 119
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object v1, v1, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->label:Ljava/lang/String;

    :goto_0
    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    sget-object v2, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->NONE:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 126
    invoke-virtual {v1, v2}, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    sget-object v4, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 127
    invoke-virtual {v1, v4}, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v4, "isConnected"

    .line 128
    invoke-interface {v0, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    iget-boolean v4, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object v4, v4, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->label:Ljava/lang/String;

    .line 133
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    const-string v3, "isInternetReachable"

    .line 131
    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_4

    goto :goto_3

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object p1, p1, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->label:Ljava/lang/String;

    .line 137
    :goto_3
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->createDetailsMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    if-eqz v1, :cond_5

    .line 140
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v1

    const-string v2, "isConnectionExpensive"

    .line 141
    invoke-interface {p1, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    const-string v1, "details"

    .line 143
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private createDetailsMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 149
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x36a22696

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x37af15

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "cellular"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_3

    goto/16 :goto_2

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    .line 166
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 170
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "<unknown ssid>"

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "\""

    const-string v6, ""

    .line 173
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssid"

    .line 174
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :catch_0
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "bssid"

    .line 184
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :catch_1
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    const-string v2, "strength"

    .line 195
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    :catch_2
    :try_start_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    const-string v2, "frequency"

    .line 203
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 211
    :catch_3
    :try_start_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 212
    invoke-static {v1}, Lcom/reactnativecommunity/netinfo/NetInfoUtils;->reverseByteArray([B)V

    .line 213
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ipAddress"

    .line 215
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 223
    :catch_4
    :try_start_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/reactnativecommunity/netinfo/NetInfoUtils;->reverseByteArray([B)V

    .line 225
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    .line 227
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object p1

    .line 233
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InterfaceAddress;

    .line 234
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v4, p1

    .line 235
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d.%d.%d.%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    shr-int/lit8 v6, p1, 0x18

    and-int/lit16 v6, v6, 0xff

    .line 239
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x2

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 241
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    and-int/lit16 p1, p1, 0xff

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    .line 236
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "subnet"

    .line 243
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    .line 153
    :cond_6
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    if-eqz p1, :cond_7

    .line 154
    iget-object p1, p1, Lcom/reactnativecommunity/netinfo/types/CellularGeneration;->label:Ljava/lang/String;

    const-string v1, "cellularGeneration"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_7
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v1, "carrier"

    .line 160
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :catch_5
    :cond_8
    :goto_2
    return-object v0
.end method

.method private sendConnectivityChangedEvent()V
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 110
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, v1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->createConnectivityEventMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "netInfo.networkStatusDidChange"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearIsInternetReachableOverride()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    return-void
.end method

.method getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getCurrentState(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->createConnectivityEventMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method abstract register()V
.end method

.method public setIsInternetReachableOverride(Z)V
    .locals 2

    .line 70
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    .line 71
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    iget-boolean v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V

    return-void
.end method

.method abstract unregister()V
.end method

.method updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V
    .locals 5
    .param p1    # Lcom/reactnativecommunity/netinfo/types/ConnectionType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/reactnativecommunity/netinfo/types/CellularGeneration;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 97
    :goto_1
    iget-object v3, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    if-eq p2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 98
    :goto_2
    iget-boolean v4, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    if-eq p3, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 101
    :cond_4
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 102
    iput-object p2, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    .line 103
    iput-boolean p3, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    .line 104
    invoke-direct {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->sendConnectivityChangedEvent()V

    :cond_5
    return-void
.end method
