.class public final Lcom/helpscout/beacon/a/b/c/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method private final a(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;
    .locals 19

    new-instance v18, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-virtual/range {p5 .. p5}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    invoke-virtual/range {p5 .. p5}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v7, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1400

    const/16 v17, 0x0

    move-object/from16 v0, v18

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v17}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLandroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v18
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getUnfurledMedia()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;

    invoke-direct {p0, v3}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getEvent()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3, v2}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZ)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;",
            "ZZZ)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v10, v4

    check-cast v10, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;

    move-object v4, p0

    move-object/from16 v13, p2

    invoke-direct {p0, v13}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    if-nez p5, :cond_1

    if-nez p4, :cond_1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getEvent()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-result-object v7

    invoke-virtual {v7}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v7

    xor-int/lit8 v11, v3, 0x1

    move-object v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;ZZ)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move-object v4, p0

    return-object v0
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getBody()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    xor-int/2addr p1, v0

    return p1
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getMime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isImage(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Z
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SENT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->FAILED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isImage(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private final b(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;
    .locals 12

    new-instance v11, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;

    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v2

    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, v2

    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v10, v0

    goto :goto_4

    :cond_4
    move-object v10, v2

    :goto_4
    move-object v0, v11

    move-object v2, p2

    move-object v3, p3

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;)Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;
    .locals 11

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getMime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getThumbnailUrl()Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;->getLarge()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getLocalUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getAttachmentStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move-result-object v10

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;
    .locals 17

    const-string v0, "chatEnvelopeApi"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/helpscout/beacon/a/b/c/b/j/b;->a:Lcom/helpscout/beacon/a/b/c/b/j/b;

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getCustomer()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpscout/beacon/a/b/c/b/j/b;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getAgent()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getId()Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getCreatedAt()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->parseToOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getUpdatedAt()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-static {v11}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->parseToOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v6

    :cond_1
    move-object v11, v6

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getPusher()Ljava/util/List;

    move-result-object v6

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getPusher()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v15, 0x38

    const/16 v16, 0x0

    move-object v1, v0

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v14

    move v14, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;-><init>(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;
    .locals 12

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->parseToOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v7

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getAuthor()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/helpscout/beacon/a/b/c/b/j/b;->a:Lcom/helpscout/beacon/a/b/c/b/j/b;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/b/c/b/j/b;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v8, p1

    new-instance p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    const/4 v9, 0x0

    const/16 v10, 0x88

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v11}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;)Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;
    .locals 10

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unfurledMediaApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;->getMime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;->getHtml()Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/data/local/db/UserDB;
    .locals 8

    const-string v0, "author"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    sget-object v1, Lcom/helpscout/beacon/a/b/c/b/j/b;->a:Lcom/helpscout/beacon/a/b/c/b/j/b;

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/a/b/c/b/j/b;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getInitials()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getPhoto()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;-><init>(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;
    .locals 16

    const-string v0, "attachmentDB"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getSize()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getMime()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    move-object v8, v4

    :goto_3
    new-instance v15, Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    move-object v12, v9

    goto :goto_4

    :cond_4
    move-object v12, v4

    :goto_4
    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getLocalUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move-result-object v10

    move-object v1, v0

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-object v8, v15

    invoke-direct/range {v1 .. v10}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;
    .locals 11

    const-string v0, "eventFull"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getEvent()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v4, v1

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getCreatedAt()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->formatToApi(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "event.createdAt.formatToApi()"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getAuthor()Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Z)Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v6

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getAttachments()Ljava/util/List;

    move-result-object p1

    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Z)Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/b/c/b/j/b;->a:Lcom/helpscout/beacon/a/b/c/b/j/b;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/b/c/b/j/b;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;)Ljava/lang/Long;

    move-result-object v2

    if-eqz p2, :cond_0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getInitials()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getPhoto()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getInitials()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getPhoto()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;
    .locals 7

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorUi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unfurledMediaDB"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getMime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v3, v0

    invoke-virtual {p4}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/helpscout/beacon/a/b/c/b/h;->b(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;ZZ)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;
    .locals 17

    const-string v0, "eventId"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorUi"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentDB"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getSize()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    const-wide/16 v9, 0x1

    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getMime()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    move-object v11, v7

    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getLocalUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;->getStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move-result-object v15

    const/16 v16, 0x0

    move-object v1, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v7, v8

    move-wide v8, v9

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v1 .. v16}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLandroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;Z)V

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    const-string v0, "eventFull"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getEvent()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getAuthor()Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getAuthor()Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getAuthor()Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->getEvent()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v1

    :cond_2
    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->lineItem:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    const/16 v19, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_2
    invoke-virtual {v7, v0}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v15

    invoke-direct {v7, v10}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;)Z

    move-result v11

    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v3, v15

    move v4, v11

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v1

    invoke-direct {v7, v8, v1, v15}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)Ljava/util/List;

    move-result-object v1

    if-nez v11, :cond_4

    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v2

    sget-object v3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->isTypingMessage:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-ne v2, v3, :cond_6

    :cond_4
    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;

    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v13

    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v14

    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, ""

    :goto_3
    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getCreatedAt()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v4

    invoke-static {v4}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->formatToApi(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event.createdAt.formatToApi()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent()Z

    move-result v21

    move-object v11, v2

    move-object v5, v15

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v20, v5

    invoke-direct/range {v11 .. v21}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Ljava/lang/String;ZZZLcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Z)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9
.end method

.method public final b(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getInitials()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getPhoto()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
