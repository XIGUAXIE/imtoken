.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;
.super Lcom/helpscout/common/mvi/MviReducer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/common/mvi/MviReducer<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001j\u0002`\u0005B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001f\u0010 J%\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u000f\u001a\u00020\n2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0011J\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0012J\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;",
        "Lcom/helpscout/common/mvi/MviReducer;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderCustomViewReducer;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
        "beaconAgents",
        "previousState",
        "",
        "b",
        "(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;",
        "agent",
        "a",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V",
        "()V",
        "action",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "",
        "getReducerName",
        "()Ljava/lang/String;",
        "reducerName",
        "c",
        "()Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
        "initialState",
        "<init>",
        "(Lcom/helpscout/beacon/internal/presentation/common/d;)V",
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
.field private final a:Lcom/helpscout/beacon/internal/presentation/common/d;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/d;)V
    .locals 2

    const-string v0, "stringResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/helpscout/common/mvi/MviReducer;-><init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a:Lcom/helpscout/beacon/internal/presentation/common/d;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V
    .locals 8

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->z()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$c;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V
    .locals 9

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->AGENT_ASSIGNED:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, p2

    move-object v6, p1

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Ljava/util/List;)Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/helpscout/beacon/a/d/e/a/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->AGENT_LEFT:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->D()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->C()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p2, v1, v0, v2}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$b;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$b;-><init>(Z)V

    invoke-virtual {p0, p2}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method private final b()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$d;

    invoke-virtual {p0, v0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Ljava/util/List;)Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object p1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a()Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->AGENTS:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->D()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->C()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p2

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$f;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$e;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$c;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->b(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$a;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$b;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$b;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$d;

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$e;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->b()V

    :cond_4
    :goto_0
    return-void
.end method

.method public c()Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;
    .locals 9

    new-instance v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->INITIAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    move-result-object v0

    return-object v0
.end method

.method public getReducerName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatHeaderReducer"

    return-object v0
.end method

.method public bridge synthetic reduce(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V

    return-void
.end method
