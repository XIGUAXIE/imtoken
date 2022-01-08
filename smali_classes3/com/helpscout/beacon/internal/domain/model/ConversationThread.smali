.class public final Lcom/helpscout/beacon/internal/domain/model/ConversationThread;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\u0086\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u0002\u0012\n\u0008\u0001\u0010\u001b\u001a\u0004\u0018\u00010\n\u0012\u000e\u0008\u0001\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u0011\u0012\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u00086\u00107J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016Jj\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0017\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0018\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u001a\u001a\u00020\u00022\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\n2\u000e\u0008\u0003\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0008\u0008\u0003\u0010\u001d\u001a\u00020\u00112\n\u0008\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\u0004J\u0010\u0010#\u001a\u00020\"H\u00d6\u0001\u00a2\u0006\u0004\u0008#\u0010$J\u001a\u0010&\u001a\u00020\u00062\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008&\u0010\'R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010(\u001a\u0004\u0008)\u0010\u000cR\u001f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010*\u001a\u0004\u0008+\u0010\u0010R\u0019\u0010\u0018\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010,\u001a\u0004\u0008-\u0010\u0004R\u0019\u0010\u0017\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010,\u001a\u0004\u0008.\u0010\u0004R\u001b\u0010\u001e\u001a\u0004\u0018\u00010\u00148\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010/\u001a\u0004\u00080\u0010\u0016R\u0019\u0010\u001d\u001a\u00020\u00118\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u00101\u001a\u0004\u00082\u0010\u0013R\u0019\u0010\u001a\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010,\u001a\u0004\u00083\u0010\u0004R\u0019\u0010\u0019\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u00104\u001a\u0004\u00085\u0010\u0008\u00a8\u00068"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/ConversationThread;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "",
        "component3",
        "()Z",
        "component4",
        "Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;",
        "component5",
        "()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
        "component6",
        "()Ljava/util/List;",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationType;",
        "component7",
        "()Lcom/helpscout/beacon/internal/domain/model/ConversationType;",
        "Lcom/helpscout/beacon/internal/domain/model/Transcript;",
        "component8",
        "()Lcom/helpscout/beacon/internal/domain/model/Transcript;",
        "id",
        "createdAt",
        "customerViewed",
        "body",
        "createdBy",
        "attachments",
        "type",
        "transcript",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationType;Lcom/helpscout/beacon/internal/domain/model/Transcript;)Lcom/helpscout/beacon/internal/domain/model/ConversationThread;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;",
        "getCreatedBy",
        "Ljava/util/List;",
        "getAttachments",
        "Ljava/lang/String;",
        "getCreatedAt",
        "getId",
        "Lcom/helpscout/beacon/internal/domain/model/Transcript;",
        "getTranscript",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationType;",
        "getType",
        "getBody",
        "Z",
        "getCustomerViewed",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationType;Lcom/helpscout/beacon/internal/domain/model/Transcript;)V",
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
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final body:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

.field private final customerViewed:Z

.field private final id:Ljava/lang/String;

.field private final transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

.field private final type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationType;Lcom/helpscout/beacon/internal/domain/model/Transcript;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "createdAt"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "customerViewed"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "body"
        .end annotation
    .end param
    .param p5    # Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "createdBy"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "attachments"
        .end annotation
    .end param
    .param p7    # Lcom/helpscout/beacon/internal/domain/model/ConversationType;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "type"
        .end annotation
    .end param
    .param p8    # Lcom/helpscout/beacon/internal/domain/model/Transcript;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "transcript"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            ">;",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationType;",
            "Lcom/helpscout/beacon/internal/domain/model/Transcript;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdAt:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->customerViewed:Z

    iput-object p4, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->body:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->attachments:Ljava/util/List;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    iput-object p8, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/domain/model/ConversationThread;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationType;Lcom/helpscout/beacon/internal/domain/model/Transcript;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/domain/model/ConversationThread;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdAt:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->customerViewed:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->body:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->attachments:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationType;Lcom/helpscout/beacon/internal/domain/model/Transcript;)Lcom/helpscout/beacon/internal/domain/model/ConversationThread;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->customerViewed:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Lcom/helpscout/beacon/internal/domain/model/ConversationType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    return-object v0
.end method

.method public final component8()Lcom/helpscout/beacon/internal/domain/model/Transcript;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationType;Lcom/helpscout/beacon/internal/domain/model/Transcript;)Lcom/helpscout/beacon/internal/domain/model/ConversationThread;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "createdAt"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "customerViewed"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "body"
        .end annotation
    .end param
    .param p5    # Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "createdBy"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "attachments"
        .end annotation
    .end param
    .param p7    # Lcom/helpscout/beacon/internal/domain/model/ConversationType;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "type"
        .end annotation
    .end param
    .param p8    # Lcom/helpscout/beacon/internal/domain/model/Transcript;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "transcript"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            ">;",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationType;",
            "Lcom/helpscout/beacon/internal/domain/model/Transcript;",
            ")",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThread;"
        }
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;

    move-object v1, v0

    move v4, p3

    move-object v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationType;Lcom/helpscout/beacon/internal/domain/model/Transcript;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdAt:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdAt:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->customerViewed:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->customerViewed:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->body:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->body:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->attachments:Ljava/util/List;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->attachments:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

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
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    return-object v0
.end method

.method public final getCustomerViewed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->customerViewed:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getTranscript()Lcom/helpscout/beacon/internal/domain/model/Transcript;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

    return-object v0
.end method

.method public final getType()Lcom/helpscout/beacon/internal/domain/model/ConversationType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdAt:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->customerViewed:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->body:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->attachments:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationThread(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerViewed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->customerViewed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->createdBy:Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->attachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->type:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcript="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->transcript:Lcom/helpscout/beacon/internal/domain/model/Transcript;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
