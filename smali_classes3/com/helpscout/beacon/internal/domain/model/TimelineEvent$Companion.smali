.class public final Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;",
        "",
        "",
        "isoTimestamp",
        "()Ljava/lang/String;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
        "events",
        "Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;",
        "convertTimelineEventListForApi",
        "(Ljava/util/List;)Ljava/util/List;",
        "URL",
        "Ljava/lang/String;",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertTimelineEventListForApi(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;

    instance-of v2, v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;->getQuery()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$BeaconOpened;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$BeaconOpened;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$BeaconOpened;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$BeaconOpened;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$BeaconOpened;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/helpscout/beacon/internal/domain/model/ApiTimelineEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    return-object v0
.end method

.method public final isoTimestamp()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/threeten/bp/Instant;->now()Lorg/threeten/bp/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instant.now().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
