.class Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;
.super Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;
.source "NetworkCallbackConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;
    }
.end annotation


# instance fields
.field mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

.field mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 31
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 35
    new-instance v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

    invoke-direct {v0, p0, p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;-><init>(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$1;)V

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCallback:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

    return-void
.end method


# virtual methods
.method register()V
    .locals 2

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCallback:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method unregister()V
    .locals 2

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCallback:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method updateAndSend()V
    .locals 8

    .line 61
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 67
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    const/4 v4, 0x2

    .line 69
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 70
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->BLUETOOTH:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->CELLULAR:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->ETHERNET:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->WIFI:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->VPN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 81
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v5, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v2

    .line 88
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_6

    .line 89
    iget-object v5, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/2addr v5, v4

    goto :goto_2

    .line 91
    :cond_6
    iget-object v5, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    .line 92
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    .line 93
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    .line 99
    :goto_2
    iget-object v6, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v7, 0xc

    .line 100
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v7, 0x10

    .line 101
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    const/4 v3, 0x1

    .line 106
    :cond_8
    iget-object v4, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    if-eqz v4, :cond_a

    sget-object v4, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->CELLULAR:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    if-ne v0, v4, :cond_a

    if-eqz v3, :cond_a

    .line 107
    invoke-static {v1}, Lcom/reactnativecommunity/netinfo/types/CellularGeneration;->fromNetworkInfo(Landroid/net/NetworkInfo;)Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    move-result-object v2

    goto :goto_3

    .line 110
    :cond_9
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->NONE:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 113
    :cond_a
    :goto_3
    invoke-virtual {p0, v0, v2, v3}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V

    return-void
.end method
