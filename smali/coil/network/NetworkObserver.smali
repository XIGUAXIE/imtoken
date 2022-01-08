.class public interface abstract Lcoil/network/NetworkObserver;
.super Ljava/lang/Object;
.source "NetworkObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/network/NetworkObserver$Listener;,
        Lcoil/network/NetworkObserver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008`\u0018\u0000 \u00072\u00020\u0001:\u0002\u0007\u0008J\u0008\u0010\u0005\u001a\u00020\u0006H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil/network/NetworkObserver;",
        "",
        "isOnline",
        "",
        "()Z",
        "shutdown",
        "",
        "Companion",
        "Listener",
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
.field public static final Companion:Lcoil/network/NetworkObserver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcoil/network/NetworkObserver$Companion;->$$INSTANCE:Lcoil/network/NetworkObserver$Companion;

    sput-object v0, Lcoil/network/NetworkObserver;->Companion:Lcoil/network/NetworkObserver$Companion;

    return-void
.end method


# virtual methods
.method public abstract isOnline()Z
.end method

.method public abstract shutdown()V
.end method
