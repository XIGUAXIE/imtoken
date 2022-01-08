.class public final Lcom/helpscout/beacon/a/c/e/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/g/c$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->c()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v3

    sget-object v4, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->c()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v3

    sget-object v4, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SENT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->p()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final b(Ljava/util/List;)Lcom/helpscout/beacon/a/c/e/g/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;)",
            "Lcom/helpscout/beacon/a/c/e/g/c$a;"
        }
    .end annotation

    const-string v0, "chatEvents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/c/e/g/c;->a(Ljava/util/List;)I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    sget-object p1, Lcom/helpscout/beacon/a/c/e/g/c$a$b;->a:Lcom/helpscout/beacon/a/c/e/g/c$a$b;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/helpscout/beacon/a/c/e/g/c$a$a;->a:Lcom/helpscout/beacon/a/c/e/g/c$a$a;

    :goto_0
    return-object p1
.end method
