.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008.\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0019\u001a\u00020\u0005\u0012\u0006\u0010\u001a\u001a\u00020\u0008\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0012\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\"\u001a\u00020\u0005\u0012\u0006\u0010#\u001a\u00020\u0005\u00a2\u0006\u0004\u0008>\u0010?J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0010\u0010\u0013\u001a\u00020\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u0010\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0007J\u0010\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0007J\u0084\u0001\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00082\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u001c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00122\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\"\u001a\u00020\u00052\u0008\u0008\u0002\u0010#\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010&\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008&\u0010\u0007J\u0010\u0010\'\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\'\u0010\u000fJ\u001a\u0010)\u001a\u00020\u00022\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008)\u0010*R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00088\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010+\u001a\u0004\u0008,\u0010\u000cR\u0019\u0010\u001d\u001a\u00020\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010-\u001a\u0004\u0008.\u0010\u000fR\u0019\u0010\u001e\u001a\u00020\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010-\u001a\u0004\u0008/\u0010\u000fR\u0019\u0010\"\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u00100\u001a\u0004\u00081\u0010\u0007R\u001c\u0010\u0019\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u00100\u001a\u0004\u00082\u0010\u0007R\u0019\u0010\u001c\u001a\u00020\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010-\u001a\u0004\u00083\u0010\u000fR$\u0010 \u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u00104\u001a\u0004\u00085\u0010\u0014\"\u0004\u00086\u00107R\u0019\u0010#\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u00100\u001a\u0004\u00088\u0010\u0007R\u001c\u0010\u001f\u001a\u00020\u00128\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u00104\u001a\u0004\u00089\u0010\u0014R$\u0010!\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u00104\u001a\u0004\u0008:\u0010\u0014\"\u0004\u0008;\u00107R\u001c\u0010\u001a\u001a\u00020\u00088\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010<\u001a\u0004\u0008=\u0010\n\u00a8\u0006@"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
        "",
        "",
        "isEnded",
        "()Z",
        "",
        "component1",
        "()Ljava/lang/String;",
        "",
        "component2",
        "()J",
        "component3",
        "()Ljava/lang/Long;",
        "",
        "component4",
        "()I",
        "component5",
        "component6",
        "Lorg/threeten/bp/OffsetDateTime;",
        "component7",
        "()Lorg/threeten/bp/OffsetDateTime;",
        "component8",
        "component9",
        "component10",
        "component11",
        "id",
        "customerId",
        "agentId",
        "attachmentCount",
        "messagesCount",
        "unreadMessages",
        "createdAt",
        "updatedAt",
        "endedAt",
        "pusherPresence",
        "pusherPrivate",
        "copy",
        "(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Long;",
        "getAgentId",
        "I",
        "getMessagesCount",
        "getUnreadMessages",
        "Ljava/lang/String;",
        "getPusherPresence",
        "getId",
        "getAttachmentCount",
        "Lorg/threeten/bp/OffsetDateTime;",
        "getUpdatedAt",
        "setUpdatedAt",
        "(Lorg/threeten/bp/OffsetDateTime;)V",
        "getPusherPrivate",
        "getCreatedAt",
        "getEndedAt",
        "setEndedAt",
        "J",
        "getCustomerId",
        "<init>",
        "(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;)V",
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
.field private final agentId:Ljava/lang/Long;

.field private final attachmentCount:I

.field private final createdAt:Lorg/threeten/bp/OffsetDateTime;

.field private final customerId:J

.field private endedAt:Lorg/threeten/bp/OffsetDateTime;

.field private final id:Ljava/lang/String;

.field private final messagesCount:I

.field private final pusherPresence:Ljava/lang/String;

.field private final pusherPrivate:Ljava/lang/String;

.field private final unreadMessages:I

.field private updatedAt:Lorg/threeten/bp/OffsetDateTime;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherPresence"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherPrivate"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->id:Ljava/lang/String;

    iput-wide p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->customerId:J

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->agentId:Ljava/lang/Long;

    iput p5, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->attachmentCount:I

    iput p6, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->messagesCount:I

    iput p7, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->unreadMessages:I

    iput-object p8, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    iput-object p9, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    iput-object p10, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    iput-object p11, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPresence:Ljava/lang/String;

    iput-object p12, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPrivate:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTC()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v1

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTC()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    move-object v12, v0

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;-><init>(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->customerId:J

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->agentId:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->attachmentCount:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->messagesCount:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->unreadMessages:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPresence:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPrivate:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p12

    :goto_a
    move-object p1, v2

    move-wide p2, v3

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->copy(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPresence:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPrivate:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->customerId:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->agentId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->attachmentCount:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->messagesCount:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->unreadMessages:I

    return v0
.end method

.method public final component7()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public final component8()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public final component9()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;
    .locals 14

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherPresence"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherPrivate"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    move-object v1, v0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v13}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;-><init>(Ljava/lang/String;JLjava/lang/Long;IIILorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->customerId:J

    iget-wide v2, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->customerId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->agentId:Ljava/lang/Long;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->agentId:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->attachmentCount:I

    iget v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->attachmentCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->messagesCount:I

    iget v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->messagesCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->unreadMessages:I

    iget v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->unreadMessages:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPresence:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPresence:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPrivate:Ljava/lang/String;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPrivate:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAgentId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->agentId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getAttachmentCount()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->attachmentCount:I

    return v0
.end method

.method public final getCreatedAt()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public final getCustomerId()J
    .locals 2

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->customerId:J

    return-wide v0
.end method

.method public final getEndedAt()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessagesCount()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->messagesCount:I

    return v0
.end method

.method public final getPusherPresence()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPresence:Ljava/lang/String;

    return-object v0
.end method

.method public final getPusherPrivate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPrivate:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnreadMessages()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->unreadMessages:I

    return v0
.end method

.method public final getUpdatedAt()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->customerId:J

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->agentId:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->attachmentCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->messagesCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->unreadMessages:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPresence:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPrivate:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnded()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lorg/threeten/bp/OffsetDateTime;->MIN:Lorg/threeten/bp/OffsetDateTime;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final setEndedAt(Lorg/threeten/bp/OffsetDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    return-void
.end method

.method public final setUpdatedAt(Lorg/threeten/bp/OffsetDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatEnvelopeDB(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->customerId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", agentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->agentId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachmentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->attachmentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messagesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->messagesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unreadMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->unreadMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->createdAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->updatedAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->endedAt:Lorg/threeten/bp/OffsetDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pusherPresence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPresence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pusherPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->pusherPrivate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
