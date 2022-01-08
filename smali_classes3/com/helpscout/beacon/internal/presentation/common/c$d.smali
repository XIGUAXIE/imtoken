.class final Lcom/helpscout/beacon/internal/presentation/common/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/c;->r()V
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
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/common/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/c;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/c$d;->a:Lcom/helpscout/beacon/internal/presentation/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c$d;->a:Lcom/helpscout/beacon/internal/presentation/common/c;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c$d;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method
