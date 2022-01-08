.class public final Lcoil/network/NetworkObserver$Companion;
.super Ljava/lang/Object;
.source "NetworkObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/network/NetworkObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkObserver.kt\ncoil/network/NetworkObserver$Companion\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n+ 3 Contexts.kt\ncoil/util/-Contexts\n+ 4 Logs.kt\ncoil/util/-Logs\n*L\n1#1,147:1\n31#2:148\n86#3:149\n22#4,4:150\n*E\n*S KotlinDebug\n*F\n+ 1 NetworkObserver.kt\ncoil/network/NetworkObserver$Companion\n*L\n36#1:148\n37#1:149\n38#1,4:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0086\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcoil/network/NetworkObserver$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "invoke",
        "Lcoil/network/NetworkObserver;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcoil/network/NetworkObserver$Listener;",
        "logger",
        "Lcoil/util/Logger;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/network/NetworkObserver$Companion;

.field private static final TAG:Ljava/lang/String; = "NetworkObserver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcoil/network/NetworkObserver$Companion;

    invoke-direct {v0}, Lcoil/network/NetworkObserver$Companion;-><init>()V

    sput-object v0, Lcoil/network/NetworkObserver$Companion;->$$INSTANCE:Lcoil/network/NetworkObserver$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;Lcoil/network/NetworkObserver$Listener;Lcoil/util/Logger;)Lcoil/network/NetworkObserver;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "NetworkObserver"

    if-eqz v0, :cond_4

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 149
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_2

    .line 43
    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 44
    new-instance p1, Lcoil/network/NetworkObserverApi21;

    invoke-direct {p1, v0, p2}, Lcoil/network/NetworkObserverApi21;-><init>(Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V

    check-cast p1, Lcoil/network/NetworkObserver;

    goto :goto_1

    .line 46
    :cond_2
    new-instance v2, Lcoil/network/NetworkObserverApi14;

    invoke-direct {v2, p1, v0, p2}, Lcoil/network/NetworkObserverApi14;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V

    move-object p1, v2

    check-cast p1, Lcoil/network/NetworkObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 49
    new-instance p2, Ljava/lang/RuntimeException;

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Failed to register network observer."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p3, v1, p2}, Lcoil/util/-Logs;->log(Lcoil/util/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_3
    sget-object p1, Lcoil/network/EmptyNetworkObserver;->INSTANCE:Lcoil/network/EmptyNetworkObserver;

    check-cast p1, Lcoil/network/NetworkObserver;

    :goto_1
    return-object p1

    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    const/4 p1, 0x5

    .line 150
    invoke-interface {p3}, Lcoil/util/Logger;->getLevel()I

    move-result p2

    if-gt p2, p1, :cond_5

    const/4 p2, 0x0

    const-string v0, "Unable to register network observer."

    .line 38
    invoke-interface {p3, v1, p1, v0, p2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_5
    sget-object p1, Lcoil/network/EmptyNetworkObserver;->INSTANCE:Lcoil/network/EmptyNetworkObserver;

    check-cast p1, Lcoil/network/NetworkObserver;

    return-object p1
.end method
