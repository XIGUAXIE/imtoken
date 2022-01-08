.class final Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$a;
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
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$a;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 2

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;->a()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$a;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d;->b()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/d$a;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method
