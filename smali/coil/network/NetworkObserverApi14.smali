.class final Lcoil/network/NetworkObserverApi14;
.super Ljava/lang/Object;
.source "NetworkObserver.kt"

# interfaces
.implements Lcoil/network/NetworkObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\n\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcoil/network/NetworkObserverApi14;",
        "Lcoil/network/NetworkObserver;",
        "context",
        "Landroid/content/Context;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "listener",
        "Lcoil/network/NetworkObserver$Listener;",
        "(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V",
        "connectionReceiver",
        "coil/network/NetworkObserverApi14$connectionReceiver$1",
        "Lcoil/network/NetworkObserverApi14$connectionReceiver$1;",
        "isOnline",
        "",
        "()Z",
        "shutdown",
        "",
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
.field private final connectionReceiver:Lcoil/network/NetworkObserverApi14$connectionReceiver$1;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/network/NetworkObserverApi14;->context:Landroid/content/Context;

    iput-object p2, p0, Lcoil/network/NetworkObserverApi14;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 128
    new-instance p1, Lcoil/network/NetworkObserverApi14$connectionReceiver$1;

    invoke-direct {p1, p0, p3}, Lcoil/network/NetworkObserverApi14$connectionReceiver$1;-><init>(Lcoil/network/NetworkObserverApi14;Lcoil/network/NetworkObserver$Listener;)V

    iput-object p1, p0, Lcoil/network/NetworkObserverApi14;->connectionReceiver:Lcoil/network/NetworkObserverApi14$connectionReceiver$1;

    .line 140
    iget-object p2, p0, Lcoil/network/NetworkObserverApi14;->context:Landroid/content/Context;

    check-cast p1, Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public isOnline()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcoil/network/NetworkObserverApi14;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shutdown()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcoil/network/NetworkObserverApi14;->context:Landroid/content/Context;

    iget-object v1, p0, Lcoil/network/NetworkObserverApi14;->connectionReceiver:Lcoil/network/NetworkObserverApi14$connectionReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
