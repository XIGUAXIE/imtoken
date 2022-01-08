.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0008\u0087\u0008\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0013\u00a2\u0006\u0004\u00088\u00109J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015Jd\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00022\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001a\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\r2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0013H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010\u0004J\u0010\u0010\"\u001a\u00020!H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010#J\u001a\u0010%\u001a\u00020\u00132\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008%\u0010&R$\u0010\u001c\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\'\u001a\u0004\u0008(\u0010\u0012\"\u0004\u0008)\u0010*R\u001c\u0010\u0016\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010+\u001a\u0004\u0008,\u0010\u0004R\u0019\u0010\u001b\u001a\u00020\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010-\u001a\u0004\u0008.\u0010\u000fR\u0019\u0010\u001d\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010/\u001a\u0004\u0008\u001d\u0010\u0015R\u001c\u0010\u0019\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u00100\u001a\u0004\u00081\u0010\u0008R$\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010+\u001a\u0004\u00082\u0010\u0004\"\u0004\u00083\u00104R\u0019\u0010\u001a\u001a\u00020\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00105\u001a\u0004\u00086\u0010\u000cR\u001c\u0010\u0018\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u00100\u001a\u0004\u00087\u0010\u0008\u00a8\u0006:"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "Lorg/threeten/bp/OffsetDateTime;",
        "component3",
        "()Lorg/threeten/bp/OffsetDateTime;",
        "component4",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
        "component5",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
        "component6",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
        "",
        "component7",
        "()Ljava/lang/Long;",
        "",
        "component8",
        "()Z",
        "id",
        "body",
        "createdAt",
        "updatedAt",
        "status",
        "type",
        "authorId",
        "isUpdatingATypingEvent",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;Z)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Long;",
        "getAuthorId",
        "setAuthorId",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/String;",
        "getId",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
        "getType",
        "Z",
        "Lorg/threeten/bp/OffsetDateTime;",
        "getUpdatedAt",
        "getBody",
        "setBody",
        "(Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
        "getStatus",
        "getCreatedAt",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;Z)V",
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
.field private authorId:Ljava/lang/Long;

.field private body:Ljava/lang/String;

.field private final createdAt:Lorg/threeten/bp/OffsetDateTime;

.field private final id:Ljava/lang/String;

.field private final isUpdatingATypingEvent:Z

.field private final status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field private final type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

.field private final updatedAt:Lorg/threeten/bp/OffsetDateTime;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;Z)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedAt"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    iput-boolean p8, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTC()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTC()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    sget-object v5, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->TO_UPLOAD:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    sget-object v6, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->message:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    move/from16 v0, p8

    :goto_6
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v2

    move/from16 p10, v0

    invoke-direct/range {p2 .. p10}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;ZILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent:Z

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->copy(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;Z)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public final component4()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public final component5()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    return-object v0
.end method

.method public final component6()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;Z)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;
    .locals 10

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedAt"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-object v1, v0

    move-object v3, p2

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/Long;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAuthorId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    return-object v0
.end method

.method public final getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    return-object v0
.end method

.method public final getUpdatedAt()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final isUpdatingATypingEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent:Z

    return v0
.end method

.method public final setAuthorId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatEventDB(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->status:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->authorId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdatingATypingEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->isUpdatingATypingEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
