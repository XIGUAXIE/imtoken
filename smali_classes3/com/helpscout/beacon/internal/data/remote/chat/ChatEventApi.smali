.class public final Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u0018\u001a\u00020\t\u0012\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u0006\u0012\u0008\u0008\u0003\u0010\u001a\u001a\u00020\u0006\u0012\n\u0008\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u000e\u0012\u0010\u0008\u0003\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\u0010\u0008\u0003\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0011\u00a2\u0006\u0004\u00082\u00103J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\u0008J\u0010\u0010\r\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0018\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0018\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0014Jh\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0017\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u0018\u001a\u00020\t2\u0008\u0008\u0003\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u001a\u001a\u00020\u00062\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0003\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\u0010\u0008\u0003\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0011H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010\u0008J\u0010\u0010\"\u001a\u00020!H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010#J\u001a\u0010%\u001a\u00020\u00022\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008%\u0010&R\u0019\u0010\u0017\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\'\u001a\u0004\u0008(\u0010\u0008R!\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00118\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010)\u001a\u0004\u0008*\u0010\u0014R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010+\u001a\u0004\u0008,\u0010\u0010R\u0019\u0010\u0019\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\'\u001a\u0004\u0008-\u0010\u0008R!\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010)\u001a\u0004\u0008.\u0010\u0014R\u0019\u0010\u0018\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010/\u001a\u0004\u00080\u0010\u000bR\u0019\u0010\u001a\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\'\u001a\u0004\u00081\u0010\u0008\u00a8\u00064"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
        "",
        "",
        "isAgentEvent",
        "()Z",
        "isTypingEvent",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
        "component2",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
        "component3",
        "component4",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "component5",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
        "component6",
        "()Ljava/util/List;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;",
        "component7",
        "id",
        "type",
        "body",
        "createdAt",
        "author",
        "attachments",
        "unfurledMedia",
        "copy",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getId",
        "Ljava/util/List;",
        "getUnfurledMedia",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "getAuthor",
        "getBody",
        "getAttachments",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
        "getType",
        "getCreatedAt",
        "<init>",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;)V",
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
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            ">;"
        }
    .end annotation
.end field

.field private final author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

.field private final body:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

.field private final unfurledMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "rawBody"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "createdAt"
        .end annotation
    .end param
    .param p5    # Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "author"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "attachments"
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "unfurledMedia"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            ">;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->body:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->createdAt:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->attachments:Ljava/util/List;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->unfurledMedia:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTCFormattedToApi()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->body:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->createdAt:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->attachments:Ljava/util/List;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->unfurledMedia:Ljava/util/List;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->copy(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->unfurledMedia:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "rawBody"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "createdAt"
        .end annotation
    .end param
    .param p5    # Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "author"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "attachments"
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "unfurledMedia"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            ">;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;",
            ">;)",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;"
        }
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    move-object v1, v0

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->body:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->body:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->createdAt:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->createdAt:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->attachments:Ljava/util/List;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->attachments:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->unfurledMedia:Ljava/util/List;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->unfurledMedia:Ljava/util/List;

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

.method public final getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final getAuthor()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    return-object v0
.end method

.method public final getUnfurledMedia()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->unfurledMedia:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->body:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->createdAt:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->attachments:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->unfurledMedia:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAgentEvent()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTypingEvent()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->isTypingMessage:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatEventApi(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->type:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->author:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->attachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unfurledMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->unfurledMedia:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
