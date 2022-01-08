.class public final Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0017\u00a2\u0006\u0004\u0008\u0005\u0010\tR\u0019\u0010\u000f\u001a\u00020\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR(\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u00108\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0005\u0010\u0015R\"\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00108\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0014\u001a\u0004\u0008\u0013\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "action",
        "",
        "a",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;",
        "c",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;",
        "getReducer",
        "()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;",
        "reducer",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lcom/helpscout/common/lifecycle/Event;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
        "b",
        "Landroidx/lifecycle/MediatorLiveData;",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "viewEvents",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "viewStates",
        "<init>",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;)V",
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

.field private final c:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;)V
    .locals 3

    const-string v0, "reducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->c:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->a:Landroidx/lifecycle/MediatorLiveData;

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->b:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->b()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;->a()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->b()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;->subscribeToViewStates()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$a;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$a;-><init>(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->a()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/c;->subscribeToEvents()Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/common/lifecycle/SingleLiveEvent;->getEvent()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$b;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$b;-><init>(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->b:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public a(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->c:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->c:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->b()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "viewStates.value!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    invoke-interface {v0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->a:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method
