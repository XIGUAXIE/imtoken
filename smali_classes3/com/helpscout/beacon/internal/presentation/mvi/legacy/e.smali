.class public abstract Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0005\u0010\tR\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\"\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\n8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "Landroidx/lifecycle/ViewModel;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract a(Landroidx/lifecycle/LifecycleOwner;)V
.end method

.method public abstract a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V
.end method

.method public abstract b()Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
            ">;"
        }
    .end annotation
.end method
