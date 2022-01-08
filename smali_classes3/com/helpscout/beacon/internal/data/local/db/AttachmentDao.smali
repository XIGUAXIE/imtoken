.class public interface abstract Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008g\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0005H\'\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rH\'\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J+\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rH\'\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J/\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\tH\'\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;",
        "",
        "",
        "eventId",
        "",
        "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
        "loadAllAttachmentsFromEvent",
        "(Ljava/lang/String;)Ljava/util/List;",
        "attachmentDB",
        "",
        "insertAttachment",
        "(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;)V",
        "id",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
        "status",
        "updateStatus",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V",
        "Landroid/net/Uri;",
        "localUri",
        "updateLocalUri",
        "(Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V",
        "serverId",
        "thumbnailUrl",
        "oldId",
        "updateLocalFromServer",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "delete",
        "(Ljava/lang/String;)V",
        "deleteAll",
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


# virtual methods
.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract deleteAll()V
.end method

.method public abstract insertAttachment(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;)V
.end method

.method public abstract loadAllAttachmentsFromEvent(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateLocalFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateLocalUri(Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V
.end method

.method public abstract updateStatus(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V
.end method
