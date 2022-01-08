.class final Lcoil/network/NetworkObserverApi21;
.super Ljava/lang/Object;
.source "NetworkObserver.kt"

# interfaces
.implements Lcoil/network/NetworkObserver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkObserver.kt\ncoil/network/NetworkObserverApi21\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,147:1\n12671#2,2:148\n12671#2,2:150\n*E\n*S KotlinDebug\n*F\n+ 1 NetworkObserver.kt\ncoil/network/NetworkObserverApi21\n*L\n89#1,2:148\n103#1,2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u000b\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcoil/network/NetworkObserverApi21;",
        "Lcoil/network/NetworkObserver;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "listener",
        "Lcoil/network/NetworkObserver$Listener;",
        "(Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V",
        "isOnline",
        "",
        "()Z",
        "networkCallback",
        "coil/network/NetworkObserverApi21$networkCallback$1",
        "Lcoil/network/NetworkObserverApi21$networkCallback$1;",
        "onConnectivityChange",
        "",
        "network",
        "Landroid/net/Network;",
        "shutdown",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final listener:Lcoil/network/NetworkObserver$Listener;

.field private final networkCallback:Lcoil/network/NetworkObserverApi21$networkCallback$1;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V
    .locals 1

    const-string v0, "connectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/network/NetworkObserverApi21;->connectivityManager:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcoil/network/NetworkObserverApi21;->listener:Lcoil/network/NetworkObserver$Listener;

    .line 83
    new-instance p1, Lcoil/network/NetworkObserverApi21$networkCallback$1;

    invoke-direct {p1, p0}, Lcoil/network/NetworkObserverApi21$networkCallback$1;-><init>(Lcoil/network/NetworkObserverApi21;)V

    iput-object p1, p0, Lcoil/network/NetworkObserverApi21;->networkCallback:Lcoil/network/NetworkObserverApi21$networkCallback$1;

    .line 92
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 p2, 0xc

    .line 93
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcoil/network/NetworkObserverApi21;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcoil/network/NetworkObserverApi21;->networkCallback:Lcoil/network/NetworkObserverApi21$networkCallback$1;

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static final synthetic access$onConnectivityChange(Lcoil/network/NetworkObserverApi21;Landroid/net/Network;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcoil/network/NetworkObserverApi21;->onConnectivityChange(Landroid/net/Network;Z)V

    return-void
.end method

.method private final isOnline(Landroid/net/Network;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcoil/network/NetworkObserverApi21;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    .line 116
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final onConnectivityChange(Landroid/net/Network;Z)V
    .locals 6

    .line 103
    iget-object v0, p0, Lcoil/network/NetworkObserverApi21;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const-string v1, "connectivityManager.allNetworks"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 104
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, p2

    goto :goto_1

    :cond_0
    const-string v5, "it"

    .line 108
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcoil/network/NetworkObserverApi21;->isOnline(Landroid/net/Network;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_2
    :goto_2
    iget-object p1, p0, Lcoil/network/NetworkObserverApi21;->listener:Lcoil/network/NetworkObserver$Listener;

    invoke-interface {p1, v2}, Lcoil/network/NetworkObserver$Listener;->onConnectivityChange(Z)V

    return-void
.end method


# virtual methods
.method public isOnline()Z
    .locals 6

    .line 89
    iget-object v0, p0, Lcoil/network/NetworkObserverApi21;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const-string v1, "connectivityManager.allNetworks"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "it"

    .line 89
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcoil/network/NetworkObserverApi21;->isOnline(Landroid/net/Network;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public shutdown()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcoil/network/NetworkObserverApi21;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcoil/network/NetworkObserverApi21;->networkCallback:Lcoil/network/NetworkObserverApi21$networkCallback$1;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
