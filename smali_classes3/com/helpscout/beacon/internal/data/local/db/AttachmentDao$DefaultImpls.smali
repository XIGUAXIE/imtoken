.class public final Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static synthetic updateLocalUri$default(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Finished:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;->updateLocalUri(Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLocalUri"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateStatus$default(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Downloading:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;->updateStatus(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateStatus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
