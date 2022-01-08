.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/m/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/List;Lcom/helpscout/beacon/a/b/c/b/h;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;",
            "Lcom/helpscout/beacon/a/b/c/b/h;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$mapToUi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/collections/IndexedValue;

    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    :goto_1
    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    :goto_2
    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    invoke-virtual {p1, v3, v4, v2}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
