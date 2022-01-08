.class final Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;-><init>(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/helpscout/common/lifecycle/Event<",
        "+",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$b;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/common/lifecycle/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/common/lifecycle/Event<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$b;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->a()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/common/lifecycle/Event;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$b;->a(Lcom/helpscout/common/lifecycle/Event;)V

    return-void
.end method
