.class public final Lcom/helpscout/beacon/a/d/e/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;)Lcom/helpscout/beacon/a/d/e/a/a;
    .locals 3

    const-string v0, "$this$toAgentUi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/a/d/e/a/a;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;->getInitials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;->getImage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/helpscout/beacon/a/d/e/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;)Lcom/helpscout/beacon/a/d/e/a/a;
    .locals 3

    const-string v0, "$this$toAgentUi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/a/d/e/a/a;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;->getInitials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;->getImage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/helpscout/beacon/a/d/e/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Ljava/util/List;)Lcom/helpscout/beacon/a/d/e/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;)",
            "Lcom/helpscout/beacon/a/d/e/a/b;"
        }
    .end annotation

    const-string v0, "$this$toAgentsUi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;

    invoke-static {v1}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;)Lcom/helpscout/beacon/a/d/e/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/helpscout/beacon/a/d/e/a/b;

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/e/a/b;-><init>(Ljava/util/List;)V

    return-object p0
.end method
