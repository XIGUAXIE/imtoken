.class Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkCallbackConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;


# direct methods
.method private constructor <init>(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;-><init>(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    iput-object p1, v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 120
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 121
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateAndSend()V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    iput-object p1, v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 149
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    iput-object p2, p1, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 150
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateAndSend()V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 159
    iget-object p2, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    iget-object p2, p2, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    if-eqz p2, :cond_0

    .line 160
    iget-object p2, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    iput-object p1, p2, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 161
    iget-object p2, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {p2}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p2, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateAndSend()V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1

    .line 126
    iget-object p2, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    iput-object p1, p2, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 127
    iget-object p2, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {p2}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p2, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 128
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateAndSend()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 134
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    iput-object v0, p1, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 135
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateAndSend()V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 141
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    iput-object v1, v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 142
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;->this$0:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateAndSend()V

    return-void
.end method
