.class public final Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0087\u0008\u0018\u00002\u00020\u0001B[\u0012\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0002\u0012\n\u0008\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0011\u00a2\u0006\u0004\u00083\u00104J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013Jd\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0014\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0015\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0016\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0003\u0010\u0018\u001a\u00020\u00022\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0011H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u0010\u0010 \u001a\u00020\u001fH\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u001a\u0010$\u001a\u00020#2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008$\u0010%R\u0019\u0010\u0014\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010&\u001a\u0004\u0008\'\u0010\u0004R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010(\u001a\u0004\u0008)\u0010\rR\u0019\u0010\u0016\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010&\u001a\u0004\u0008*\u0010\u0004R\u0019\u0010\u001b\u001a\u00020\u00118\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010+\u001a\u0004\u0008,\u0010\u0013R\u0019\u0010\u0015\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010&\u001a\u0004\u0008-\u0010\u0004R\u0019\u0010\u0017\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010.\u001a\u0004\u0008/\u0010\tR\u0019\u0010\u0018\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010&\u001a\u0004\u00080\u0010\u0004R\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00101\u001a\u0004\u00082\u0010\u0010\u00a8\u00065"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "",
        "component4",
        "()J",
        "component5",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;",
        "component6",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;",
        "Landroid/net/Uri;",
        "component7",
        "()Landroid/net/Uri;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
        "component8",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
        "id",
        "name",
        "url",
        "size",
        "mime",
        "thumbnailUrl",
        "localUri",
        "attachmentStatus",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getId",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;",
        "getThumbnailUrl",
        "getUrl",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
        "getAttachmentStatus",
        "getName",
        "J",
        "getSize",
        "getMime",
        "Landroid/net/Uri;",
        "getLocalUri",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V",
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
.field private final transient attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

.field private final id:Ljava/lang/String;

.field private final transient localUri:Landroid/net/Uri;

.field private final mime:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final size:J

.field private final thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "name"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "url"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "size"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "mime"
        .end annotation
    .end param
    .param p7    # Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "thumbnail_url"
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStatus"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->url:Ljava/lang/String;

    iput-wide p4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->size:J

    iput-object p6, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->mime:Ljava/lang/String;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    iput-object p8, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->localUri:Landroid/net/Uri;

    iput-object p9, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p8

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Finished:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object/from16 v11, p9

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v11}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->url:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->size:J

    goto :goto_3

    :cond_3
    move-wide v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->mime:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->localUri:Landroid/net/Uri;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p9

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-wide p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->size:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    return-object v0
.end method

.method public final component7()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->localUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final component8()Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "name"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "url"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "size"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "mime"
        .end annotation
    .end param
    .param p7    # Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "thumbnail_url"
        .end annotation
    .end param

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStatus"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    move-object v1, v0

    move-wide v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->url:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->size:J

    iget-wide v2, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->mime:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->mime:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->localUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->localUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

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

.method public final getAttachmentStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->localUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getMime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->size:J

    return-wide v0
.end method

.method public final getThumbnailUrl()Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->size:J

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->mime:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->localUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatAttachmentApi(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->thumbnailUrl:Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->localUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachmentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->attachmentStatus:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
