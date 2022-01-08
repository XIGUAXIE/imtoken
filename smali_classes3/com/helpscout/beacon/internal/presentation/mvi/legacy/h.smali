.class public final Lcom/helpscout/beacon/internal/presentation/mvi/legacy/h;
.super Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\tR\"\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR(\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\n8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000c\u001a\u0004\u0008\u0005\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/h;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "action",
        "",
        "a",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "Landroidx/lifecycle/MediatorLiveData;",
        "b",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "viewStates",
        "Lcom/helpscout/common/lifecycle/Event;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
        "viewEvents",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;-><init>()V

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/h;->a:Landroidx/lifecycle/MediatorLiveData;

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/h;->b:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/h;->b:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public a(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/h;->a:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method
