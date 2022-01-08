.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventFull"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008&\u0010\'J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R(\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR(\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0019\u001a\u0004\u0008 \u0010\u001b\"\u0004\u0008!\u0010\u001dR\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\"\u001a\u0004\u0008#\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010$\u001a\u0004\u0008%\u0010\u0004\u00a8\u0006("
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
        "",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
        "component1",
        "()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
        "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        "component2",
        "()Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        "event",
        "author",
        "copy",
        "(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;",
        "unfurledMedia",
        "Ljava/util/List;",
        "getUnfurledMedia",
        "()Ljava/util/List;",
        "setUnfurledMedia",
        "(Ljava/util/List;)V",
        "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
        "attachments",
        "getAttachments",
        "setAttachments",
        "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        "getAuthor",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
        "getEvent",
        "<init>",
        "(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V",
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
.field public attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
            ">;"
        }
    .end annotation
.end field

.field private final author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

.field private final event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

.field public unfurledMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->copy(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    return-object v0
.end method

.method public final component2()Lcom/helpscout/beacon/internal/data/local/db/UserDB;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    return-object v0
.end method

.method public final copy(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->attachments:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "attachments"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getAuthor()Lcom/helpscout/beacon/internal/data/local/db/UserDB;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    return-object v0
.end method

.method public final getEvent()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    return-object v0
.end method

.method public final getUnfurledMedia()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->unfurledMedia:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "unfurledMedia"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAttachments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->attachments:Ljava/util/List;

    return-void
.end method

.method public final setUnfurledMedia(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->unfurledMedia:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventFull(event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->event:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;->author:Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
